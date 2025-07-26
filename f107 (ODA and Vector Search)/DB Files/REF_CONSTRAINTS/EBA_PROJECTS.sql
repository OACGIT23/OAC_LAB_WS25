--------------------------------------------------------
--  Ref Constraints for Table EBA_PROJECTS
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."EBA_PROJECTS" ADD CONSTRAINT "EBA_PROJECT_STATUS_FK" FOREIGN KEY ("STATUS_ID")
	  REFERENCES "WKSP_OACLABWS"."EBA_PROJECT_STATUS" ("ID") ON DELETE SET NULL ENABLE;
