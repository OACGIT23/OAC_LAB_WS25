--------------------------------------------------------
--  Ref Constraints for Table HOL_MILESTONES
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."HOL_MILESTONES" ADD CONSTRAINT "HOL_MILESTONES_PROJECT_ID_FK" FOREIGN KEY ("PROJECT_ID")
	  REFERENCES "WKSP_OACLABWS"."HOL_PROJECTS" ("ID") ENABLE;
