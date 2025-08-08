CREATE OR REPLACE EDITIONABLE TRIGGER "EBA_PROJECTS_BIU" 
    before insert or update on eba_projects
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
