--------------------------------------------------------
--  Ref Constraints for Table HOL_LINKS
--------------------------------------------------------

  ALTER TABLE "WKSP_OACLABWS"."HOL_LINKS" ADD CONSTRAINT "HOL_LINKS_TASK_ID_FK" FOREIGN KEY ("TASK_ID")
	  REFERENCES "WKSP_OACLABWS"."HOL_TASKS" ("ID") ENABLE;
