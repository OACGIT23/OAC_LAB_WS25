--------------------------------------------------------
--  DDL for View MV_SM_POSTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "WKSP_OACLABWS"."MV_SM_POSTS" ("ID", "USER_NAME", "COMMENT_TEXT", "FILE_BLOB", "FILE_MIME", "POST_DATE", "REACTIONS", "USER_REACTION_CSS", "AI_IMAGE_DESCRIPTION", "AI_IMAGE_VECTOR", "CREATED") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  SELECT
    p.id,
    p.created_by AS user_name,
    p.post_comment AS comment_text,
    p.file_blob,
    p.file_mime,
    apex_util.get_since(p.created) AS post_date,
    (SELECT COUNT(*) FROM SM_REACTIONS smr WHERE smr.post_id=p.id) AS REACTIONS,
    (
        SELECT 'user-has-liked' FROM SM_REACTIONS smr 
        WHERE smr.post_id=p.id AND created_by=v('APP_USER')
    ) AS USER_REACTION_CSS,
    p.ai_image_description,
    p.ai_image_vector,
    p.CREATED
FROM 
    SM_POSTS p
;
