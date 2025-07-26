--------------------------------------------------------
--  Ref Constraints for Table EBA_PROJECT_COMMENTS
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."EBA_PROJECT_COMMENTS" ADD CONSTRAINT "EBA_PROJECT_COMMENT_PROJ_FK" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "WKSP_OACLABWS"."EBA_PROJECTS" ("ID") ON DELETE CASCADE ENABLE;
