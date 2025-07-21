--------------------------------------------------------
--  DDL for Trigger DOCAI_RESPONSE_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WKSP_OACLABWS"."DOCAI_RESPONSE_BIU" 
    before insert or update
    on docai_response
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end docai_response_biu;
/
ALTER TRIGGER "WKSP_OACLABWS"."DOCAI_RESPONSE_BIU" ENABLE;
