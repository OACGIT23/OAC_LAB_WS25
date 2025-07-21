--------------------------------------------------------
--  DDL for View DM$VMDOC_MODEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "WKSP_OACLABWS"."DM$VMDOC_MODEL" ("NAME", "VALUE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  SELECT NAME, VALUE FROM "DM$P9DOC_MODEL"/*#*/  WHERE ( NAME = 'Producer Name' OR NAME = 'Graph Name' OR NAME = 'Graph Description' OR NAME = 'Domain' OR NAME = 'Description' OR NAME = 'Version' OR NAME LIKE 'Output%' OR NAME LIKE 'Input%'  ) AND sys_dm_rxform_lab("DOC_MODEL"/*#*/, null, null) is null
;
