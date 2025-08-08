CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WF_CUSTOM_LOGIN" AS 

FUNCTION WF_login(p_username IN VARCHAR2, p_password IN VARCHAR2) 
RETURN BOOLEAN 
IS
    v_count NUMBER; 
    l_password  WF_EMPLOYEE_DET.LOGIN_PASSWORD%type;
BEGIN  
	--Check whether user exists with username or not.. if exists match password and Return TRUE else Return FALSE
    SELECT count(*) into v_count  
    FROM WF_EMPLOYEE_DET
    WHERE TRIM(UPPER(ENAME)) = TRIM(UPPER(p_username));
            
    IF v_count >= 1 THEN       
        
        select LOGIN_PASSWORD--WF_ENC_DEC.decrypt_pwd(password)
        into l_password 
        FROM WF_EMPLOYEE_DET  
        WHERE TRIM(UPPER(ENAME)) = TRIM(UPPER(p_username));
  
        -- Compare the two, and if there is a match, Return TRUE else Return FALSE
        IF p_password = l_password THEN
            APEX_UTIL.SET_AUTHENTICATION_RESULT(0);
            RETURN true;
        ELSE
            APEX_UTIL.SET_AUTHENTICATION_RESULT(4);
            RETURN false;
        END IF;
    ELSE 
        RETURN FALSE; 
    END IF; 
END WF_login; 
 
END WF_CUSTOM_LOGIN;
/