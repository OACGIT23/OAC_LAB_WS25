--------------------------------------------------------
--  DDL for Index DOCAI_RESPONSE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WKSP_OACLABWS"."DOCAI_RESPONSE_ID_PK" ON "WKSP_OACLABWS"."DOCAI_RESPONSE" ("ID") 
  PCTFREE 10 INITRANS 20 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
