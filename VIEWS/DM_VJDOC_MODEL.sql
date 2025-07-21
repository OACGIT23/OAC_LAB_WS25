--------------------------------------------------------
--  DDL for View DM$VJDOC_MODEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "WKSP_OACLABWS"."DM$VJDOC_MODEL" ("METADATA") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  SELECT METADATA FROM "DM$P8DOC_MODEL"/*#*/  WHERE sys_dm_rxform_lab("DOC_MODEL"/*#*/, null, null) is null
;
