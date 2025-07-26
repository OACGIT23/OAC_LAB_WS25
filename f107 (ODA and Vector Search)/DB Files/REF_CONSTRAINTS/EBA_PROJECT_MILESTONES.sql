--------------------------------------------------------
--  Ref Constraints for Table EBA_PROJECT_MILESTONES
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."EBA_PROJECT_MILESTONES" ADD CONSTRAINT "EBA_PROJECT_MSTONE_PROJ_FK" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "WKSP_OACLABWS"."EBA_PROJECTS" ("ID") ON DELETE CASCADE ENABLE;
