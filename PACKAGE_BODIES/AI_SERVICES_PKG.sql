--------------------------------------------------------
--  DDL for Package Body AI_SERVICES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WKSP_OACLABWS"."AI_SERVICES_PKG" as

--Procedure to upload file to OCI object storage--
PROCEDURE UPLOAD_FILE_TO_OBJECT_STORAGE (
        P_FILE_CONTENT      IN VARCHAR2,
        p_static_id         IN VARCHAR2,
        p_namespace         IN VARCHAR2,
        p_bucket            IN VARCHAR2,
        p_region            IN VARCHAR2,
        p_object_storage_url OUT VARCHAR2,
        p_file_name OUT VARCHAR2,
        p_mime_type OUT VARCHAR2
    ) IS
        l_object blob;
        l_response CLOB;
    BEGIN
        --Fetch the files details into variables from APEX_APPLICATION_TEMP_FILES
        select blob_content, filename, mime_type 
        into l_object, p_file_name, p_mime_type 
        from apex_application_temp_files 
        where name = P_FILE_CONTENT;
        
        --Prepare object storage url
        p_object_storage_url := 'https://objectstorage.'||p_region||'.oraclecloud.com/n/'||p_namespace||'/b/'||p_bucket||'/o/' || apex_util.url_encode(p_file_name);
        
        --Prepare the headers
        APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).NAME := 'Content-Type';
        APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).VALUE := p_mime_type;
        
        --Make a REST request to 'PUT' the file in object storage where p_static_id is the static id for Web Credentials.
        l_response := apex_web_service.make_rest_request(
                    p_url => p_object_storage_url,
                    p_http_method => 'PUT',
                    p_body_blob => l_object,
                    p_credential_static_id => p_static_id
                );
        IF APEX_WEB_SERVICE.G_STATUS_CODE != 200 THEN
            RAISE_APPLICATION_ERROR(-20000, 'Upload failed - ' || APEX_WEB_SERVICE.G_STATUS_CODE);
        END IF;
    END UPLOAD_FILE_TO_OBJECT_STORAGE;

--Procedure to process the uploaded file and provide json output
PROCEDURE DOCUMENT_UNDERSTANDING_PROCEDURE (
        p_bucket IN VARCHAR2,
        p_namespace IN VARCHAR2,
        p_compartment IN VARCHAR2,
        p_feature_type IN VARCHAR2,
        p_object_name IN VARCHAR2,
        p_response OUT CLOB
) IS
    l_request_body CLOB;
    l_response CLOB;
BEGIN
    --JSON request body
    l_request_body := '
        {
            "compartmentId": "'||p_compartment||'",
            "document": 
            {
                "namespaceName": "'||p_namespace||'",
                "bucketName": "'||p_bucket||'",
                "objectName": "'||p_object_name||'",
                "source": "OBJECT_STORAGE"
            },
            "features": 
            [
                {
                    "featureType": "'||p_feature_type||'"
                },
                {
                    "featureType": "DOCUMENT_CLASSIFICATION",
                    "maxResults": 5
                }
            ]    
        }';

    apex_web_service.g_request_headers(1).name  := 'Content-Type';
    apex_web_service.g_request_headers(1).value := 'application/json';
  
    --apex_debug.info('AI Response body: ', l_request_body);

    -- Call the Document Understanding analyzeDocument REST Web Service.
    l_response := apex_web_service.make_rest_request
        (p_url                  => 'https://document.aiservice.ap-mumbai-1.oci.oraclecloud.com/20221109/actions/analyzeDocument',
        p_http_method          => 'POST',
        p_body                 => l_request_body,
        p_credential_static_id => 'oci_doc_ai_credentials');
 --oci_document_reading_credentials

    --Assign l_response to p_response OUT parameter
    p_response := l_response;
    
    EXCEPTION
    WHEN OTHERS THEN
        p_response := 'Error: ' || SQLERRM;
        apex_debug.error('Exception: ' || SQLERRM);

END DOCUMENT_UNDERSTANDING_PROCEDURE;

PROCEDURE STORE_RESPONSE_IN_COLLECTION(p_response IN CLOB)
IS
BEGIN
    -- Check if the collection 'MY_COLLECTION' exists
    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => 'MY_COLLECTION') THEN
        -- Create the collection if it does not exist
        APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => 'MY_COLLECTION');
    ELSE
        --Truncate the collection if it exists
        APEX_COLLECTION.TRUNCATE_COLLECTION('MY_COLLECTION');
    END IF;

    --Loop through JSON response to parse Key value fields
    FOR I IN (SELECT FIELD_TYPE_CODE, FIELD_LABEL, LABEL_SCORE, FIELD_VALUE FROM
            JSON_TABLE (p_response, '$.pages[*]'
                COLUMNS (
                    PAGE_NUMBER NUMBER PATH '$.pageNumber',
                    NESTED PATH '$.documentFields[*]'
                        COLUMNS (
                            FIELD_TYPE_CODE VARCHAR2 ( 50 ) PATH '$.fieldType',
                            FIELD_LABEL VARCHAR2 ( 100 ) PATH '$.fieldLabel.name',
                            LABEL_SCORE NUMBER PATH '$.fieldLabel.confidence',
                            FIELD_VALUE VARCHAR2 ( 1000 ) PATH '$.fieldValue.value'
                        )
                )
            )JT
    WHERE
        JT.FIELD_TYPE_CODE = 'KEY_VALUE')
    LOOP
        --Store the Parsed Fields in collection
        APEX_COLLECTION.ADD_MEMBER(
            p_collection_name  => 'MY_COLLECTION',
            p_c001 => I.FIELD_TYPE_CODE,
            p_c002 => I.FIELD_LABEL,
            p_c003 => I.FIELD_VALUE,
            p_n001 => I.LABEL_SCORE
        );
    END LOOP;
END STORE_RESPONSE_IN_COLLECTION;

end "AI_SERVICES_PKG";

/
