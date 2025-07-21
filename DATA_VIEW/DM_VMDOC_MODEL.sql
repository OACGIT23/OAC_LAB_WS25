REM INSERTING into WKSP_OACLABWS.DM$VMDOC_MODEL
SET DEFINE OFF;
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Producer Name','onnx.compose.merge_models');
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Graph Name','tokenizer_main_graph');
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Graph Description','Graph combining tokenizer and main_graph
tokenizer



main_graph

');
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Version','1');
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Input[0]','input:string[?]');
Insert into WKSP_OACLABWS.DM$VMDOC_MODEL (NAME,VALUE) values ('Output[0]','embedding:float32[?,384]');
