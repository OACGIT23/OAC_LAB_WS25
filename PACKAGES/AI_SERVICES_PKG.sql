--------------------------------------------------------
--  DDL for Package AI_SERVICES_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WKSP_OACLABWS"."AI_SERVICES_PKG" as

PROCEDURE UPLOAD_FILE_TO_OBJECT_STORAGE (
        P_FILE_CONTENT      IN VARCHAR2,
        p_static_id         IN VARCHAR2,
        p_namespace         IN VARCHAR2,
        p_bucket            IN VARCHAR2,
        p_region            IN VARCHAR2,
        p_object_storage_url OUT VARCHAR2,
        p_file_name OUT VARCHAR2,
        p_mime_type OUT VARCHAR2);

PROCEDURE DOCUMENT_UNDERSTANDING_PROCEDURE (
        p_bucket IN VARCHAR2,
        p_namespace IN VARCHAR2,
        p_compartment IN VARCHAR2,
        p_feature_type IN VARCHAR2,
        p_object_name IN VARCHAR2,
        p_response OUT CLOB);

PROCEDURE STORE_RESPONSE_IN_COLLECTION(p_response IN CLOB);

end "AI_SERVICES_PKG";

/
