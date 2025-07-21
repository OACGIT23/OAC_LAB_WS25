--------------------------------------------------------
--  Ref Constraints for Table HOL_PROJECTS
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."HOL_PROJECTS" ADD CONSTRAINT "HOL_PROJECTS_PROJECT_LEAD_FK" FOREIGN KEY ("PROJECT_LEAD")
	  REFERENCES "WKSP_OACLABWS"."HOL_TEAM_MEMBERS" ("ID") ENABLE;
