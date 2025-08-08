CREATE OR REPLACE EDITIONABLE PROCEDURE "AI_PROCESS_ALL_RESPONSES" (p_feature_type IN VARCHAR2, p_response IN CLOB)
as
begin
    -- Check if the collection 'MY_COLLECTION' exists
    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => 'MY_COLLECTION') THEN
        -- Create the collection if it does not exist
        APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => 'MY_COLLECTION');
    ELSE
        --Tuncate the collection if it exists and contains any previous data
        APEX_COLLECTION.TRUNCATE_COLLECTION('MY_COLLECTION');
    END IF;


    --Check for the feature type
    IF(p_feature_type = 'TEXT_EXTRACTION') THEN 
        --Get text column from json response
        FOR I IN (SELECT jt.text FROM 
            JSON_TABLE(
                p_response, '$.pages[*].words[*]' 
                COLUMNS (text VARCHAR2(4000) PATH '$.text')
            ) jt
        )
        LOOP
            --Store the extracted text into apex collection
            APEX_COLLECTION.ADD_MEMBER(
                p_collection_name  => 'MY_COLLECTION',
                p_c001 => I.TEXT);
        END LOOP;
    ELSIF(p_feature_type = 'KEY_VALUE_EXTRACTION') THEN
        --Get the Field and Value columns from json response
        FOR I IN (SELECT FIELD_TYPE_CODE, FIELD_LABEL, LABEL_SCORE, FIELD_VALUE FROM
                JSON_TABLE (p_response, '$.pages[*]'
                    COLUMNS (
                        PAGE_NUMBER NUMBER PATH '$.pageNumber',
                        NESTED PATH '$.documentFields[*]'
                            COLUMNS (
                                FIELD_TYPE_CODE VARCHAR2 ( 50 ) PATH '$.fieldType',
                                FIELD_LABEL VARCHAR2 ( 100 ) PATH '$.fieldLabel.name',
                                LABEL_SCORE NUMBER PATH '$.fieldLabel.confidence',
                                FIELD_VALUE VARCHAR2 ( 1000 ) PATH '$.fieldValue.value'
                            )
                    )
                )JT
        WHERE
            JT.FIELD_TYPE_CODE = 'KEY_VALUE')
        LOOP
            --Add fields to collection
            APEX_COLLECTION.ADD_MEMBER(
                p_collection_name  => 'MY_COLLECTION',
                p_c001 => I.FIELD_TYPE_CODE,
                p_c002 => I.FIELD_LABEL,
                p_c003 => I.FIELD_VALUE,
                p_n001 => I.LABEL_SCORE
            );
        END LOOP;
    ELSIF(p_feature_type = 'TABLE_EXTRACTION') THEN
        --Get header text and column text from json response
        FOR I IN (SELECT jh.h_cell_text, jb.b_cell_text FROM 
            JSON_TABLE(
		        p_response,'$.pages[0].tables[0].headerRows[0].cells[*]'
        		COLUMNS (
        			h_cell_text VARCHAR2(4000) PATH '$.text',
        			h_col_index NUMBER PATH '$.columnIndex'
        		)
	        ) jh,
            JSON_TABLE(
        		p_response, '$.pages[0].tables[0].bodyRows[*].cells[*]'
        		COLUMNS (
        			b_cell_text VARCHAR2(4000) PATH '$.text',
        			b_col_index NUMBER PATH '$.columnIndex'
        		)
            ) jb
            WHERE jh.h_col_index = jb.b_col_index
            ORDER BY jh.h_col_index)
        LOOP
            APEX_COLLECTION.ADD_MEMBER(
                p_collection_name  => 'MY_COLLECTION',
                p_c001 => I.h_cell_text,
                p_c002 => I.b_cell_text);
        END LOOP;
     ELSIF(p_feature_type = 'IMAGE_CLASSIFICATION') THEN 
        --Get Name and Confidence from json response (where Confidence is decimal value which is converted into percentage)
        FOR I IN (SELECT jt.name, (jt.confidence * 100) || '%' AS PERCENTAGE FROM 
            JSON_TABLE(p_response, '$.labels[*]' 
                COLUMNS (
                    name       VARCHAR2(100) PATH '$.name',
                    confidence NUMBER        PATH '$.confidence'
                )
            ) jt
        )
        LOOP
            APEX_COLLECTION.ADD_MEMBER(
                p_collection_name  => 'MY_COLLECTION',
                p_c001 => I.name,
                p_c002 => I.PERCENTAGE);
        END LOOP;
    ELSIF(p_feature_type = 'OBJECT_DETECTION') THEN
        ----Get Name and Confidence from json response (where Confidence is decimal value which is converted into percentage)
        FOR I IN (SELECT jt.name, (jt.confidence * 100) || '%' AS PERCENTAGE FROM 
            JSON_TABLE(p_response, '$.imageObjects[*]' 
                COLUMNS (
                    name       VARCHAR2(100) PATH '$.name',
                    confidence NUMBER        PATH '$.confidence'
                )
            ) jt
        )
        LOOP
            APEX_COLLECTION.ADD_MEMBER(
                p_collection_name  => 'MY_COLLECTION',
                p_c001 => I.name,
                p_c002 => I.PERCENTAGE);
        END LOOP;
    ELSE
        HTP.P('DO NOTHING');
    END IF;
end "AI_PROCESS_ALL_RESPONSES";
/