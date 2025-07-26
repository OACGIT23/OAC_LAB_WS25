--------------------------------------------------------
--  DDL for Trigger EBA_PROJECT_TASKS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WKSP_OACLABWS"."EBA_PROJECT_TASKS_BIU" 
    before insert or update on eba_project_tasks
    for each row
begin
    if inserting then
        :new.created    := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := current_timestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/
ALTER TRIGGER "WKSP_OACLABWS"."EBA_PROJECT_TASKS_BIU" ENABLE;
