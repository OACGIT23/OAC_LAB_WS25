--------------------------------------------------------
--  DDL for Trigger HOL_PROJECTS_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WKSP_OACLABWS"."HOL_PROJECTS_BIU" 
    before insert or update  
    on hol_projects 
    for each row 
begin 
    if inserting then 
        :new.row_version := 1; 
    elsif updating then 
        :new.row_version := nvl(:old.row_version,0) + 1; 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
end hol_projects_biu;
/
ALTER TRIGGER "WKSP_OACLABWS"."HOL_PROJECTS_BIU" ENABLE;
