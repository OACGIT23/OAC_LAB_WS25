--------------------------------------------------------
--  DDL for Procedure UPLOAD_FILE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "WKSP_OACLABWS"."UPLOAD_FILE" (
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
        l_response         CLOB;
    BEGIN
        select blob_content, filename, mime_type 
        into l_object, p_file_name, p_mime_type 
        from apex_application_temp_files 
        where name = P_FILE_CONTENT;
        
        p_object_storage_url := 'https://objectstorage.'||p_region||'.oraclecloud.com/n/'||p_namespace||'/b/'||p_bucket||'/o/' || apex_util.url_encode(p_file_name);
        
        APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).NAME := 'Content-Type';
        APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).VALUE := p_mime_type;
        
        l_response := apex_web_service.make_rest_request(
                    p_url => p_object_storage_url,
                    p_http_method => 'PUT',
                    p_body_blob => l_object,
                    p_credential_static_id => p_static_id
                );
        IF APEX_WEB_SERVICE.G_STATUS_CODE != 200 THEN
            RAISE_APPLICATION_ERROR(-20000, 'Upload failed - ' || APEX_WEB_SERVICE.G_STATUS_CODE);
        END IF;
    END UPLOAD_FILE;

/
