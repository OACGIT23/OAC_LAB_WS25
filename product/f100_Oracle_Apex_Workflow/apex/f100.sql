prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>7834776098045050
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'WKSP_OACLABWS'
);
end;
/
 
prompt APPLICATION 100 - Oracle APEX Workflow and Automations
--
-- Application Export:
--   Application:     100
--   Name:            Oracle APEX Workflow and Automations
--   Date and Time:   09:39 Friday August 8, 2025
--   Exported By:     MRVIRPURA_DIGVIJAY@YAHOO.CO.IN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      8
--       Items:                   53
--       Computations:             1
--       Validations:              7
--       Processes:               27
--       Regions:                 33
--       Buttons:                 37
--       Dynamic Actions:         29
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              4
--       Security:
--         Authentication:         2
--         Authorization:          5
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   7
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     7834568877074048
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_OACLABWS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Oracle APEX Workflow and Automations')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'ORACLE-APEX-WORKFLOWS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CFE45056CE1A86EA3817DD38A331C2C203F124A5CD3CA0AFB22548A4CA1BD4F6'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(9185530615013975)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Oracle APEX Workflow and Automation'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Oracle APEX Workflows'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>11
,p_version_scn=>45238524808270
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(8648567508604489)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(8649768099604453)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/workflow/task_definitions/reimbursement_request
begin
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(8668995089568463)
,p_name=>'Reimbursement Request'
,p_static_id=>'REIMBURSEMENT_REQUEST'
,p_subject=>'Expense Approval of Amount &AMOUNT. for &EMP_NAME.- Level - &LEVEL_NO.'
,p_task_type=>'APPROVAL'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_TASK_ID:&TASK_ID.'
,p_initiator_can_complete=>false
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(8748289895833447)
,p_task_def_id=>wwv_flow_imp.id(8668995089568463)
,p_label=>'Amount'
,p_static_id=>'AMOUNT'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(8748564860833444)
,p_task_def_id=>wwv_flow_imp.id(8668995089568463)
,p_label=>'Emp Name'
,p_static_id=>'EMP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(8748945113833442)
,p_task_def_id=>wwv_flow_imp.id(8668995089568463)
,p_label=>'Level No'
,p_static_id=>'LEVEL_NO'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(8747602143842450)
,p_task_def_id=>wwv_flow_imp.id(8668995089568463)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'SQL_QUERY'
,p_value=>'select mgr_name from WF_APPROVAL_LEVELS where level_code = :LEVEL_NO'
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(8747995059838902)
,p_task_def_id=>wwv_flow_imp.id(8668995089568463)
,p_participant_type=>'BUSINESS_ADMIN'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'PAT'
);
end;
/
prompt --application/shared_components/workflow/workflows/expense_reimbursement_workflow
begin
wwv_flow_imp_shared.create_workflow(
 p_id=>wwv_flow_imp.id(8221790293067345)
,p_name=>'Expense Reimbursement Workflow'
,p_static_id=>'EXP_REIMBURSEMENT_WF '
,p_title=>'Expense Reimbursement for &EMP_NAME.'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8749599110822702)
,p_workflow_id=>wwv_flow_imp.id(8221790293067345)
,p_label=>'DESC'
,p_static_id=>'DESC'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8749607966822703)
,p_workflow_id=>wwv_flow_imp.id(8221790293067345)
,p_label=>'AMOUNT'
,p_static_id=>'AMOUNT'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_is_required=>false
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8749736791822704)
,p_workflow_id=>wwv_flow_imp.id(8221790293067345)
,p_label=>'EMP_NAME'
,p_static_id=>'EMP_NAME'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8749848557822705)
,p_workflow_id=>wwv_flow_imp.id(8221790293067345)
,p_label=>'EMP_EMAIL'
,p_static_id=>'EMP_EMAIL'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
);
wwv_flow_imp_shared.create_workflow_version(
 p_id=>wwv_flow_imp.id(8221890312067346)
,p_workflow_id=>wwv_flow_imp.id(8221790293067345)
,p_version=>'1.0'
,p_state=>'DEVELOPMENT'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8749921716822706)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_label=>'Max Level'
,p_static_id=>'MAX_LEVEL'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8750098456822707)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_label=>'Current Level'
,p_static_id=>'CURRENT_LEVEL'
,p_direction=>'VARIABLE'
,p_data_type=>'NUMBER'
,p_value_type=>'STATIC'
,p_value=>'1'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8750434963822711)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_label=>'Approver'
,p_static_id=>'APPROVER'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_variable(
 p_id=>wwv_flow_imp.id(8750563708822712)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_label=>'TaskOutcome'
,p_static_id=>'TASK_OUTCOME'
,p_direction=>'VARIABLE'
,p_data_type=>'VARCHAR2'
,p_value_type=>'NULL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8221923143067347)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Start'
,p_static_id=>'New'
,p_display_sequence=>10
,p_activity_type=>'NATIVE_WORKFLOW_START'
,p_diagram=>'{"position":{"x":150,"y":940},"z":1}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8222106428067349)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'End'
,p_static_id=>'New_2'
,p_display_sequence=>30
,p_activity_type=>'NATIVE_WORKFLOW_END'
,p_attribute_01=>'COMPLETED'
,p_diagram=>'{"position":{"x":150,"y":1920},"z":3}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8750136408822708)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Compute Max Level'
,p_static_id=>'New_1'
,p_display_sequence=>40
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    level_no number;',
'begin',
'    if :AMOUNT < 500 then',
'        level_no := -1;',
'    elsif :AMOUNT < 1000 then',
'        level_no := 1;',
'    elsif :AMOUNT < 5000 then',
'        level_no := 2;',
'    else',
'        level_no := 3;',
'    end if;',
'    :MAX_LEVEL := level_no;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":70,"y":1070},"z":5}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8750229146822709)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Approval Needed?'
,p_static_id=>'New_3'
,p_display_sequence=>50
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'MAX_LEVEL'
,p_attribute_14=>'-1'
,p_diagram=>'{"position":{"x":70,"y":1200},"z":6}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8750301394822710)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Create Approval Request'
,p_static_id=>'New_4'
,p_display_sequence=>60
,p_activity_type=>'NATIVE_CREATE_TASK'
,p_attribute_01=>wwv_flow_imp.id(8668995089568463)
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_09=>'APPROVER'
,p_diagram=>'{"position":{"x":660,"y":1200},"z":7}'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(8750656666822713)
,p_workflow_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_task_def_param_id=>wwv_flow_imp.id(8748289895833447)
,p_value_type=>'ITEM'
,p_value=>'AMOUNT'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(8750736403822714)
,p_workflow_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_task_def_param_id=>wwv_flow_imp.id(8748564860833444)
,p_value_type=>'ITEM'
,p_value=>'EMP_NAME'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(8750818926822715)
,p_workflow_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_task_def_param_id=>wwv_flow_imp.id(8748945113833442)
,p_value_type=>'ITEM'
,p_value=>'CURRENT_LEVEL'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8750946635822716)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Increment Level'
,p_static_id=>'New_5'
,p_display_sequence=>70
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':CURRENT_LEVEL := :CURRENT_LEVEL+1;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":1120,"y":1200},"z":8}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751017911822717)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Approved?'
,p_static_id=>'New_6'
,p_display_sequence=>80
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'TASK_OUTCOME'
,p_attribute_14=>'APPROVED'
,p_diagram=>'{"position":{"x":660,"y":1360},"z":9}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751181711822718)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'All Approvals Completed?'
,p_static_id=>'New_7'
,p_display_sequence=>90
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'CHECK_WF_VARIABLE'
,p_attribute_10=>'CURRENT_LEVEL'
,p_diagram=>'{"position":{"x":1360,"y":1360},"z":10}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751235674822719)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Rejected at First Level?'
,p_static_id=>'New_8'
,p_display_sequence=>120
,p_activity_type=>'NATIVE_WORKFLOW_SWITCH'
,p_attribute_01=>'TRUE_FALSE_CHECK'
,p_attribute_03=>'WF_VARIABLE_EQ_VAL'
,p_attribute_08=>'CURRENT_LEVEL'
,p_attribute_14=>'1'
,p_diagram=>'{"position":{"x":660,"y":1520},"z":11}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751373579822720)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Reset Level'
,p_static_id=>'New_9'
,p_display_sequence=>140
,p_activity_type=>'NATIVE_PLSQL'
,p_activity_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':CURRENT_LEVEL := 1;',
'end;'))
,p_activity_code_language=>'PLSQL'
,p_location=>'LOCAL'
,p_diagram=>'{"position":{"x":310,"y":1520},"z":12}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751637260822723)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Send Approval Email'
,p_static_id=>'New_10'
,p_display_sequence=>100
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&EMP_EMAIL.'
,p_attribute_06=>'Reimbursement Approved'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear &EMP_NAME. ,',
'',
'Your request for reimbursement of Rs &AMOUNT. for the purpose - &DESC. has been approved.',
'Regards,',
'Expense Team'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":1360,"y":1920},"z":15}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751721970822724)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Send Rejection Email'
,p_static_id=>'New_11'
,p_display_sequence=>110
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&EMP_EMAIL.'
,p_attribute_06=>'Reimbursement Rejected'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear &EMP_NAME. ,',
'',
'Your reimbursement request of Rs &AMOUNT. has been rejected by &MGR_NAME. . Please provide the necessary justification and resubmit.',
'Regards,',
'Expense Team'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":660,"y":1780},"z":16}'
);
wwv_flow_imp_shared.create_workflow_activity(
 p_id=>wwv_flow_imp.id(8751801882822725)
,p_workflow_version_id=>wwv_flow_imp.id(8221890312067346)
,p_name=>'Auto Approved Email'
,p_static_id=>'New_12'
,p_display_sequence=>130
,p_activity_type=>'NATIVE_SEND_EMAIL'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&EMP_EMAIL.'
,p_attribute_06=>'Reimbursement Auto Approved'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear &EMP_NAME. ,',
'',
'Congratulations, your reimbursement request for amount &AMOUNT. is eligible for auto-approval!',
'Regards,',
'Expense Team'))
,p_attribute_10=>'N'
,p_diagram=>'{"position":{"x":70,"y":1780},"z":17}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8222200430067350)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8221923143067347)
,p_to_activity_id=>wwv_flow_imp.id(8750136408822708)
,p_diagram=>'{"source":{},"target":{"pos":{"x":180,"y":1110}},"vertices":[],"z":4,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753241167822739)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8750136408822708)
,p_to_activity_id=>wwv_flow_imp.id(8750229146822709)
,p_diagram=>'{"source":{},"target":{"pos":{"x":180,"y":1290}},"vertices":[],"z":24,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8751488238822721)
,p_name=>'YES'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8750229146822709)
,p_to_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1340,"y":1250}},"vertices":[],"z":13,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8751545696822722)
,p_name=>'NO'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8750229146822709)
,p_to_activity_id=>wwv_flow_imp.id(8751801882822725)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1340,"y":1250}},"vertices":[],"z":14,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753515172822742)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_to_activity_id=>wwv_flow_imp.id(8751017911822717)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50.003%","dy":"33.34%","rotate":true}},"vertices":[],"z":26,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8754080579822747)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8750946635822716)
,p_to_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"95.455%","dy":"50%","rotate":true}},"vertices":[],"z":30,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8751987052822726)
,p_name=>'YES'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751017911822717)
,p_to_activity_id=>wwv_flow_imp.id(8751181711822718)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1300,"y":1220}},"vertices":[],"z":18,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8752006782822727)
,p_name=>'NO'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751017911822717)
,p_to_activity_id=>wwv_flow_imp.id(8751235674822719)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1300,"y":1220}},"vertices":[],"z":19,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8752347991822730)
,p_name=>'NO'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751181711822718)
,p_to_activity_id=>wwv_flow_imp.id(8750946635822716)
,p_condition_type=>'LESS_THAN'
,p_condition_expr1=>'&MAX_LEVEL.'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1310,"y":1230}},"vertices":[{"x":1470,"y":1230}],"z":22,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8752463453822731)
,p_name=>'YES'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751181711822718)
,p_to_activity_id=>wwv_flow_imp.id(8751637260822723)
,p_condition_type=>'OTHERWISE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1310,"y":1230}},"vertices":[],"z":23,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8752127329822728)
,p_name=>'YES'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751235674822719)
,p_to_activity_id=>wwv_flow_imp.id(8751721970822724)
,p_condition_expr1=>'TRUE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1320,"y":1240}},"vertices":[],"z":20,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8752295931822729)
,p_name=>'NO'
,p_transition_type=>'BRANCH'
,p_from_activity_id=>wwv_flow_imp.id(8751235674822719)
,p_to_activity_id=>wwv_flow_imp.id(8751373579822720)
,p_condition_expr1=>'FALSE'
,p_diagram=>'{"source":{},"target":{"pos":{"x":1320,"y":1240}},"vertices":[],"z":21,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753650233822743)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8751373579822720)
,p_to_activity_id=>wwv_flow_imp.id(8750301394822710)
,p_diagram=>'{"source":{"name":"top","args":{"dx":0,"dy":10}},"target":{"name":"topLeft","args":{"dx":"0%","dy":"83.333%","rotate":true}},"vertices":[{"x":420,"y":1250}],"z":27,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753796587822744)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8751637260822723)
,p_to_activity_id=>wwv_flow_imp.id(8222106428067349)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"83.333%","dy":"50%","rotate":true}},"vertices":[],"z":28,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753955481822746)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8751721970822724)
,p_to_activity_id=>wwv_flow_imp.id(8222106428067349)
,p_diagram=>'{"source":{"name":"left","args":{"dx":10,"dy":0}},"target":{"name":"topLeft","args":{"dx":"83.333%","dy":"16.667%","rotate":true}},"vertices":[{"x":430,"y":1810}],"z":29,"label":{"distance":0.5,"offset":0}}'
);
wwv_flow_imp_shared.create_workflow_transition(
 p_id=>wwv_flow_imp.id(8753384269822740)
,p_name=>'New'
,p_transition_type=>'NORMAL'
,p_from_activity_id=>wwv_flow_imp.id(8751801882822725)
,p_to_activity_id=>wwv_flow_imp.id(8222106428067349)
,p_diagram=>'{"source":{"name":"bottom","args":{"dx":0,"dy":-10}},"target":{"name":"topLeft","args":{"dx":"50%","dy":"16.667%","rotate":true}},"vertices":[],"z":25,"label":{"distance":0.5,"offset":0}}'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8648567508604489)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>45238524808269
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8660104867604272)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8776104731426936)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Submit Expense'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8785737085374752)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Pending Expense Approvals'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_security_scheme=>wwv_flow_imp.id(9199878079946604)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8823312224366203)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Monitor Expense Workflows'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-workflow'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8649768099604453)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>45081998943577
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8661673434604243)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8662183416604240)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8661673434604243)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8662552023604238)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(8661673434604243)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001DA494441545847ED553B4BC350183D81B6F4416B42EB125B6D51F05D0507C5557012D4CD9FE0E66F71F41F38D6C1A5286EA283';
wwv_flow_imp.g_varchar2_table(2) := 'A0F800416D356D1D6C49B4EF97F5DE602416DB24182942EE186EBE73BE73BEEF5C267A74D0420F0F6311B014B014F8770ABC57AB68160AE8773AC13A1C728248B51A5E2A15D87C3E3076BBA1543194030D51C43801890E047F04B9CC6470F32AC1C671BA';
wwv_flow_imp.g_varchar2_table(3) := '49E826E0C9E7314F8039B7BB6B71B154C2693A85A2D7AB8B842E02B4F3E570049CCBA5AB2825117F4CEA52429300F57CD466EB28BBC22891CDC247EE95D14290E540EDB86D3634674293403D97C3C6E454D7CE29F8DA5018ABA1416C9D1CC3CFB2F2FDDD';
wwv_flow_imp.g_varchar2_table(4) := 'EB2BD8FDFEAEFF6A12608B452C0D8F742CA206DF139EB09F166405E839BCBF83E4F1FC8E40B85EC71CE98C9E9424C205066F8D06228100DAC163C477FA5D3967845052632D35155013C84912B61716112385772ECEB139332BCB4E3B6F07A7244C21A0B6';
wwv_flow_imp.g_varchar2_table(5) := '4020DBB0120CC9A09972193CD98A4EE0A659D03E840F64E0D63F07AE1BB8694348D770CCEEC034CF7F794B49F0C4DB67321F6ACFD5D366DA1AD2A2868388D8134F26CC0922A52B398A89FF5A692812F0D394606E142B24A812137DEC373BDA65FFB3C748';
wwv_flow_imp.g_varchar2_table(6) := '01EAE973ACEB2532784933880CD6337CDD2260296029F0012D692630E176698F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8650832604604427)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000121D49444154785EED9D7F6C545776C7CF7DE3B18D3D766C08D8604C1CCC8F84D436C490604489C73FD80422D895366C2B6DD5AC';
wwv_flow_imp.g_varchar2_table(2) := '76A5CD6EFFD8FE51B5DDBFDAAA7F74AB55A5AE54A9ADBA52F747A53644DD64D3389B656C8F4104E26007661C961070C20F1B303F6C83C7309E5FB7DFFBCCA48678CCCC7D6FDE7BEEBB571A991F73EF3DEFBC8FEF3DF79E73CF65A48AD280010D30037555';
wwv_flow_imp.g_varchar2_table(3) := '55A501520029080C69400164487DAAB20248316048030A2043EA539515408A01431A500019529FAAAC00520C18D28002C890FA5465059062C09006144086D4A72A2B8014038634A00032A43E55D991006D3C7AB4CC978AF8925CF371623E1E673EF25029';
wwv_flow_imp.g_varchar2_table(4) := '272A76C32BC34B895292A699974718F18887A52211CD1739BB73E794D39EDF5E8038670D7D873632F23C4F9C3D4F2CF51C116B8492BC4E539443E48913F13031D64F9C3EE494EC1F6ADD7D167FC7EF963DC55280B61C7977793251DC425A0AC01060A16D';
wwv_flow_imp.g_varchar2_table(5) := 'F83C66CFA3FFBFE9F5369EE404C0EA27A6F527A2F1F77FF7E28BE3563D9D750089D126D8BD4FD3D89F734E3BAC7A4077F5C3DF67C47E146A6DEFB26A54CA3B40CD0303DE5864E2553CD89F61D4D9E0AE176ADBD39E45CF3FF69655FC6270EB564C7BF92B';
wwv_flow_imp.g_varchar2_table(6) := '7905A8A9A7A7866BA95FC3AE69CEDF23A89617D0C080C713DB7372D79E1BF9D252DE00DAD2DDBD29E9A14310BC265FC2AB76B3D2C030E3DAFE505BDBE9ACBE9DE397F202505330B013CBEF7794819CE3DBC8DFD76F739EDA3FD4B6FBB0D95D980E903EF2';
wwv_flow_imp.g_varchar2_table(7) := '146055C0A9C46C61557B0634C0E82E4B69CF993D12990A50F3DB6F97C4CA4B4E6057629381475555F3A781D3DEA9BBCF0DEEDB77D7AC2E4C05A831D8FD3308F6C76609A7DAC98B067E1EF677BC6A56CBA601D410ECC1529DFFBB5982A976F2A701D8A7DF';
wwv_flow_imp.g_varchar2_table(8) := '1AF2B78B5F76C3C514805A8E1D5B323D333D8AE57AA561895403F9D700A371EF9DBBB5664C65A600D414EC798D13FFE7FC3FB9EAC12C0D6063F77B217FFBBF186DCF3840705134F6F59C81201B8D0AA3EA5BAA8133E1D6F6678CBA3C0C0304C3F9453CF6';
wwv_flow_imp.g_varchar2_table(9) := '6F2C7D74D599591A780906F57B461A33032021C0578C08A1EADAA681DF0220310048174300D50583C5E53C398D140D9AB404AAA27D1AE0942A2D2EF11DDFB1E39EAC108600DA1C0CB4A68805653B57F5ECD78046DC7FCADFD9272B892180E0F3FA4BEC29';
wwv_flow_imp.g_varchar2_table(10) := 'FC9D6CE7AA9EFD1AC0DEDD0F43FECE1FC94A62082018D06FA1E3FDB29DAB7A8ED0C0AF61077D55561279806697EF22CE64996CE7AA9E2334300680AA65259106A8F9C87B2BE3C9822BB21DAB7ACED180973CCB07FDFE9B32124903D47038D0C0522C2CD3';
wwv_flow_imp.g_varchar2_table(11) := 'A9AAE32C0D708D370EBDD03924239534408DBDBDE218CE07329DAA3A0ED300D7B687DBDAFA65A49206A8A9AFDB8FD315BD329DAA3ACED20063D4166AED90DA8E910668736F606F8AE961ABAA2C720DC014F94AA8BD5DC4AFE75CA4016AE8EB7985717E30';
wwv_flow_imp.g_varchar2_table(12) := 'E71E5505C76940E3FCE5536D9D5D32824903843D201179F833994E551D676980337660A8B5FD0D19A90C00D4F31D1CA7FD37994E9D582775EF1EF14462F6934CE2273EC9842E2AF314102BF0E0273E05E2CF05A42D59E2C4C79095E955EC05FD5CA6B234';
wwv_flow_imp.g_varchar2_table(13) := '400DC1430861D5166F082B5600C9E9694A4E45F03342944AE5A63FCD431E5F293E481C525A0ACAA455995BBFF9F9B602285BBD8A912631310168703081CF42E32B29A1DAC79753615111AD28C1C802380A0BBC5489BF8B32313343B1441C9F044D46A334';
wwv_flow_imp.g_varchar2_table(14) := '8D36AEDDBA45917BF70F37304D87A8A0B262B18E4C0AA04701948AC5287EE306A530EA60B8A0A5151580E6715A5D59499592D3D104401A018C976FDEA4F1C949B4CB4903485EC0A815153E4A2427FDBF0228D3DBE0F104C5F1829353B3B999EA57D550E3';
wwv_flow_imp.g_varchar2_table(15) := '9A5A2A2D34F7054F03D0C10B17E9D2B5AB7A3F9EF232F22E5B46CCBB28521D2980E603484013BB760D0303A7EAE5CB01CE13B442D82B792CD731C2852F5DA46B18ED845D54B872A56E2739BC28801E7E41F1EB372831398191A688766CDA4455E5E596BE';
wwv_flow_imp.g_varchar2_table(16) := 'C3B1DBB7E9D89933341D9B816DB494BCCB1FB7B4FF1C3B5300A5152696E0B12B574818CB55E58FD10B80A7D0E4E92ADB97338369AD7B688826B0CAD360A817AE5A8524628E8CFE55008997CAF1C2664646B18713A7B5D5D5D4B26E035E98BDCB6B9EE274';
wwv_flow_imp.g_varchar2_table(17) := 'FCDCA7F4D9D835DD1E2AAAA9216613D00B80AF001223CFCCC58BFA4660CB860D545FBD32DB81C292EF9D191DA5C1E1F3D88404444FACD137251D545C0E108CE499CB9729853D9A960D1B018F74805D5EDFE92757AFD0C0B973A4151753516DAD93361FDD';
wwv_flow_imp.g_varchar2_table(18) := '0D50ECEA557D992E461D31FA38B988E96C18F27A60D4173A0774F70294189FC03ECF0DAAC2C6606703524C3BDDA580D1B2EBD4299A98BA8395D972ACD01C918FC29D00F1789CA29F5F205F7111ED79B619EE8702270F3E5FC8265C22EF7E344891E80C15';
wwv_flow_imp.g_varchar2_table(19) := '3F59E784CD467702141BBDA23B423B9B3653D5638B2B5FF9D8ED490A8442D8642CC3F2DE7683DF7D00098379E6D2254C5D95D4D9286E47B0B708BFD8E5F15B343631495570AA2EC58EF76AC8B65009844334061F5AD19A35BA616D63711F4033172F516A';
wwv_flow_imp.g_varchar2_table(20) := '264A9D5B9EA5AAB2321B754F141E1DA1F0F0F0976458535545BB363E9551B63118FE81931FE91E7C7D55665F711740BA8F0B2B99B555D5B463A3BD69898E9F1FA6E12B23186D96D2DFB777D0363850AF6034FA7EF76FE97790B1B1BE9E1A6B56674423F0';
wwv_flow_imp.g_varchar2_table(21) := 'F1108D8D8FEBBBD436FACCDC0590BEE78397F4D5E79E87016DDFD09F8667131CA6BF7CE9652A9B63C44FC150DEFFABFFA691C971FAE6AE17320214B917A5B74EF4EBAE8EA2D59941CBF3E0E41E80C48E7374F833AAC4B4B577CB963CEB3573F30BC193AE';
wwv_flow_imp.g_varchar2_table(22) := 'F5CBE173F4B73DDDB41BD3EC8A05A6D9AE9327B1AC9FA2E275F576F9CADC0350F2CE1D3D44A371ED5A6A5C6D8FDD900D3C02A26C011A44F8C7990B17B0B188D00FC411D950DC0390F0B4272311DABB751B5562D8B7BA640B4F0453D8BE3731854D2C3C85';
wwv_flow_imp.g_varchar2_table(23) := '09F9271043D43538401E8C52227EC886E21280B08B7B0F466B29C245BF06FBC7EA920B3C7FF49B77E874164674FA19DEFAB09F2233315AB27E9DD58F25FA730740E9BD9FA76AD7D0D6279FB454D132F054C2DFB5777376765ABAFDA227EAEC88A7760740';
wwv_flow_imp.g_varchar2_table(24) := '62EA125358131CA60D16866BC8C2237C738559866D0C61B40AC1D15A887821FD9890B5C51D0025B06B1BBF7EDD52D78515F00856C4E98EBEA13079B1F95860BD5BC61D0089D315096CBAED86E374450E81EA62A758B818E28854F422A0EBE9D5358F7433';
wwv_flow_imp.g_varchar2_table(25) := '88976A153CA2AFEB58C61FC2AE74013622C5690E8B8B3B0012CB77B18CDF0B03BA328B0DC418F68CBAF15B3D8E3AE5C54BE869C4DFF45FF85C7F37C2CDB07DDDFA8C538C95F0E82B31F8F6BA60487B10C75D585D65313F2E31A2672E8F6007FA2E7DF3F7';
wwv_flow_imp.g_varchar2_table(26) := '776515F773E4EC2774696C8CBE0E6FFD0F9BB7E93BC5628758AC90849B61298CDC8E79EC14ABE1D16941ECF47F1C3D62D78EB43B46A05C0012A3CFC1F78FD2F6BAB5F48BDD0F26D25F08225BE0990BD012B8346A2D7769B803A074E8EACB98C22A1E3185';
wwv_flow_imp.g_varchar2_table(27) := 'A56D8A1FBFB497F663D9FF70990FA24104A709C7E87CBEADB9F5C526617A9F472CD573596D659A9B26E1DB7BE7C487D84C44A8EB4ACB63BADD019038DB2E12233CCAB7A4DB1477EF52D7C009FA01A6BB3F79FA9979DFDB5C8884712D8C6C3BE079C08846';
wwv_flow_imp.g_varchar2_table(28) := '88AB0875B5B8B803A074FC73B61188AF1F3B464B60F7BC7DE01BB40A46F47C652E4476C1F3C032DE9E386977009476A436ADC74662163EA3CB18AD0E6315F6CCFD700B5F86986901D19B589D7DADEEC9074232F23D6DCD6D7F081BA4A1F3E766CFD25B1F';
wwv_flow_imp.g_varchar2_table(29) := '20E70E80529896664646281757C6F1F3E761D78C3E12A285A68C7CD83C0FF7771CF00C032211996843F6337700C491452C0A67AA38852182C9B22D4620B2021EF11C6FF67F40D3C2998A9820B2FEFCBC3B00128A1623901889720DE79081C82A78D2E11C';
wwv_flow_imp.g_varchar2_table(30) := '223995383B6F43710F40697F984C40592E1059058F80258C10DDF0E79FD9E5071322B80720913C21FA19425A73089598FB1B9D0D4456C22364EB820F6C02C93E8BEBD7DA9574C13D00E9D3D8259148413EA87E2188AC8627021F980826B3F9688FBB0032';
wwv_flow_imp.g_varchar2_table(31) := 'E358CF7C10590D8FF865387CFA345DBE75D3AEE57B7A70761740E2A9A3221710D2EF66B32B9DC9284D43243CF55F6F6CA24308E81231CC66B9271E650CA70F1632A4E12BAE7BE2515FCFE7FFBB0FA0F49E5015B6FEF5AC1C92E51384880C7C7AF68BDA22';
wwv_flow_imp.g_varchar2_table(32) := '8B6B33C265B38D2494EC56AF26CEC68B33F2E23C9838176663711F40BA2D74FF8061B6AE8D4C2F681A23D938B6067C482C6ED5490F918433103A6557F8C6C3AA702740E9207B1FCE96EFC1E1BDC597DE258A7477B604D12B80D21A88DFBC8530D75B7A70';
wwv_flow_imp.g_varchar2_table(33) := 'D81E048E2DA604533685AFCE3710BB73044A6B229D27A81E090A5A10A6EAE472FC53A4B843367B87E40572EF2AEC014844924DE40A4AC196D981742A6B11EFECC4320C83FD380C76065BAB1839811C345ABA7B0412B0881D6A01919EE617295FEA91FAC5';
wwv_flow_imp.g_varchar2_table(34) := '49E50B7870F7989EE6D759E9F81440021671234FEC7EA2F17AC4D5B4D4633AB339D1B80896D74335306D09680AC5925D251A2772EA8573FA5507C89D285C1D95882FEE6C68B06D751643125091404AA46ED1B059595883AB0EB23CA96AF1E8A946A0876D';
wwv_flow_imp.g_varchar2_table(35) := 'A2D8D8759C21BB8D440CC5D4B27E3D558B74BA56A500864D760DD1902227B4D863D273420BBBCCAAFE73A74F01349FCE66433F70ED122E821317AF3421DDDC42899E72D7FB976B88D32021E44B1C03BC02183D173472583BBC288032BD2071018B7EE11C';
wwv_flow_imp.g_varchar2_table(36) := '123388224EA436E3AC984811636611D1848388E9B9747D0CCD323DDFA1B8E2495D389741CB4EB58132412196F8F11B3711CDF8E09597B598DA2A24AFBC1467B92E2353BEF0A67F71E56509AEBC0438DAFDFB56CD84348F6DA911285BE50A27AC98DA1EB8';
wwv_flow_imp.g_varchar2_table(37) := '7417A741AB91D0A014208933F7C225222EDDADB80FC1E49C4B77C5197675E9EEFF695BFA32ADC536027D093075EDF75C95A81128DB1128E31487E9486C42EA1F6C05F0043EC984FE7586CD3FB187C33CDAEC4F7C6C387A63F41117AA6F03407D3DAF30CE';
wwv_flow_imp.g_varchar2_table(38) := '0FE6F3A954DBD66880337660A8B5FD0D99DEA4A7B0CDBD81BD29C6DE91E954D571960634CE5F3ED5D6D925239534404D7DDD7E9811BD329DAA3ACED200B6ABDA42AD1D4119A9A4016AECED7D9E58EA03994E551D8769806BDBC36D6DFD32524903D47038';
wwv_flow_imp.g_varchar2_table(39) := 'D0C0522C2CD3A9AAE32C0D708D370EBDD0392423953440BFD7D353AF69FCBC4CA7AA8EB334904AB1751FB7B77FF9BEAA2CC49406A8F9C87B2BE3C9822B59F4A1BEE2700D783D895583BB5EBC2A23A63C400303DEF8D4E41D746ADF7D4B324FACEA3CAC81';
wwv_flow_imp.g_varchar2_table(40) := 'A8B7ACA27C70EBD6B88C6AA401129D35067BFAE0E9CE7C19968C44AA8EC51A6087C3FEF656D94E0D0214F86BECD3FE956CE7AA9E1334C0FF26ECEFC47B942B8600DA1C0CB4A68849ED1FC889AB6A99AD018DB8FF94BF1333895C3104505D30585C4EC909';
wwv_flow_imp.g_varchar2_table(41) := '6507C929DF01B5A277C85379C1EF8FCACA6208A0593BA8FBBFF0E31BB202A87AB66AE0F5B0BFE30F8C4860024081EDB0838E1B1142D5B54B03BC05F68F216F8261806647A1008460D967BDB44B5FAADF391AE0FD8007BFFCC68A4900758B61F03F8D89A2';
wwv_flow_imp.g_varchar2_table(42) := '6A5BAC813FC4F425CC0F43C514805A83C182714A8A7B942CBF25C4D0D3BBB7F2E852F2D4F5F9FDB31173068A290089FE1B7A03FB19636F19904555B54A038CED0BB7B6FF8F19DD9906D0AC2DD4FD8FF8F1033304536DE44D033FC1D4F5A766B56E2A40CD';
wwv_flow_imp.g_varchar2_table(43) := 'F08FC5A626DF47A3DBCC1250B5639E0638515F6159C56E59BFD77C92980A90E86073305897A2E449FCD1F1C731CD7B358BA2A5B154929A3EEEE810271F4D2BA60324246B3A1CD8C253EC57F8639D6992AA868C68E062926BFB4FB7B5858C3462C90894EE';
wwv_flow_imp.g_varchar2_table(44) := 'E4A9EEEE65851E12CBC40EB38556EDE5A00146BDB1041DF8A4A3E3560EB5B2FE6A5E46A074EFAF1C3CE839BBBCF29FB0C9F85AD612A92F9AA9817FD87863FC2FDE3870206966A373DBCA2B40E98E9A823DAF71C67F822419E66634C89756167FBBF7F062';
wwv_flow_imp.g_varchar2_table(45) := 'BF15F277BC9EEF47B10420DD2EEAE9A921C6BFCD197D077FADCDF783B9B4FD118CF63F6529FA69A8BD7DD40A1D5806D0DC69EDD315CBF671CEBF8B7FDB8D8FE53258A1580BFB10D3D3BB381CF8AFEB6F4EBC97CFE9CA52233A1B053607028FC534AD8969';
wwv_flow_imp.g_varchar2_table(46) := '7C0BBE2F3ECFE2F3343E05D9D477E17784EBE10C7EE54E126727394F9E8C15967C7476E7CE29BB74E1C8DFFE8D478F96F952111F969E3E4ECCC7E3CC471E2AC546982B02F8F152A294A469E6E511463CE261A94844F345EC042513A08E04C8AEDF26D56F';
wwv_flow_imp.g_varchar2_table(47) := 'EE1A5000E5AE3355638E0614400A07431A500019529FAAAC00520C18D28002C890FA5465059062C09006144086D4A72A2B8014038634A00032A43E555901A41830A401059021F5A9CA0A20C580210D28800CA94F55FE5FD32A5109B3C1B5C10000000049';
wwv_flow_imp.g_varchar2_table(48) := '454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8651197150604423)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000173849444154785EED5DFB73D357763F9265C9C6181B0C3660839F1008D8064C022124BB998690669F09ECCECE4EDBD97FA33BD3';
wwv_flow_imp.g_varchar2_table(2) := '9F3AD3FE01FD073AED4CDB49497737D9D95D08D94C16026479181B0CE66DB0C1E00706835F7A58FD9CAFBE928510D892AE8CEEBDE7CC686CB0F4D5BD9F733EF7791E9EB6AF8F46494410B014018F10C052CD4BB71D048400620856232004B05AFDD27921';
wwv_flow_imp.g_varchar2_table(3) := '80D880D5080801AC56BF745E0820366035024200ABD52F9D1702880D588D8010C06AF54BE78500620356232004B05AFDD2792180D880D5080801AC56BF745E0820366035024200ABD52F9D1702880D588D8010C06AF54BE78500620356232004B05AFDD2';
wwv_flow_imp.g_varchar2_table(4) := '792180D880D5080801AC56BF745E0820366035024200ABD52F9D1702880D588D8010C06AF54BE78500620356232004B05AFDD2792180D880D5080801AC56BF745E0820366035024200ABD52F9D1702880D588D8010C06AF54BE78500620356232004B05A';
wwv_flow_imp.g_varchar2_table(5) := 'FDD2792180D880D5080801AC56BF745E0820366035024200ABD52F9D1702880D588D8010C06AF54BE78500620356232004B05AFDD2792180D880D5080801AC56BF745E0820366035024200ABD52F9D1702E4D106A2C110CD0667281A0CE26790A2A13045';
wwv_flow_imp.g_varchar2_table(6) := '672344B3B3F8394B14C1EF2C4545E4F17A89F0F278F17BB18FBCFE0079FC7EF206FCF877711E5B69F7A385008AF41F8531CF4E4DD1ECF4347EE2859FB072354FF778C95B5242DE52BC9C9FA5E401694472474008900B86D12885C79F50E4F16318FC542E';
wwv_flow_imp.g_varchar2_table(7) := '4FCAF8B34C025F450515959713793C197F5E3E10434008908525CCCECC50F8D1238A3C79E22C67D249B1CF472B2B97D3528CD865017EF9A9144B1A3FFEDF8F658ECF574425F89D653A1CA6703842412C8F82F87D0ACBA5A7F88E49BC9E6236197E3446E1';
wwv_flow_imp.g_varchar2_table(8) := '48387D4BB16C6212F8F05DBC5C12C90C0121400678F11227F4F021CD4E4CA4FD54C5D2A554BB7225D52E5F41ABF0BB57D1C83C8B99661864BB3B364603A32334FEF469DAEFF7969551F18A15CE124964610808011680530406177E389676995306636B5C';
wwv_flow_imp.g_varchar2_table(9) := 'BD869A56ADA26518ED17431E637F716B78886E0EDEA7C9344B2F67790422148110222F474008F0127CF8E42674FF415AC36FAEADA3969A1A67A47F9532F4F4095D03116E0DDE7BAE194C043FDAC8A74922E9111002A4C365364A212C35C2638FF0D768E2';
wwv_flow_imp.g_varchar2_table(10) := '1D1EF250E3DAB5D4BA6E1D950702056553E398152E0CF453DFBD41B478AECDBC41E6FD41F1CA2AD92CA7D198102005143EBE0CB2118543CFFCA569CD5A6A5FBF1E9BD9C232FC549D3E41FBBBEEDCA1BEFB83CFFC89EF12FCE883B7A4B0DBBFD8A38A1020';
wwv_flow_imp.g_varchar2_table(11) := '09F13036B8A1D1510CFA732368158E1ADF6CD940559AADA747B0513F7DED1A8D8E3F9EEB216683626CD27DCB972FB69D15ECF709017891834BACE0E020CD4E4E2614B5A4A4943A5A5AA81E9B495D85797CFBE1289DBB71E399CDB27749196683D5729906';
wwv_flow_imp.g_varchar2_table(12) := 'C55A4F00DEE8060706B0E4993B675F575D436F6FD8403E436E5BC320F8F16B57696068686E3FE32BA6405DADF51B64AB09C023FECC3D9C9EB89759BCC9EDD8B89136AD5EADEBA0FFD2765FC2DEA6F3FAB5B94D322EE402B5D817587C6F602D0122E3E314';
wwv_flow_imp.g_varchar2_table(13) := 'C41167FC94A7C8EBA3F7DA5A69F5B265461A7FBC53F7E0B6F1CD850B1461A73C16EC0BFC35ABA968195C2A2C142B091033FEFB0975FB8BFDB4AFBD9D962F596285098C6283FC5577370543C1390C30EB15194EFE74CAB58E0011283F78972F8D62273D65';
wwv_flow_imp.g_varchar2_table(14) := 'A54B685F5B1B2D2DF0E34DD5CC645FA3235D5D499B63CC04580ED9767B6C1501D89767A6BF3F614BE5380DD9BF6D5BC2294DB59115FAF3A642213ADC759E9EC64FBFE0761D5857E7B85CDB22D610804F7B66704114DFF09620E0E4A31D3B6889E56E023C';
wwv_flow_imp.g_varchar2_table(15) := '13FCB1B3936610B8E30836C625EBD759733A64070170CA33DD773B71BBEB831BF2873B3AA8D2A291EE6523FAC3C9293A72FE1C5CB26347C17C6B5C525FEF44A8992E5610805D1B22701A7306382875DFB6EDAFDC89ADD00CEB01DCAD8F6239E4846A4278';
wwv_flow_imp.g_varchar2_table(16) := '43EC37F43838197BE309907AE2B36BD366DA505D5D68F65710EDE97D709FCE5CB932773204C7BFA257ECED9A6F608C2600BB384CDFBA9558F7D7C267FFBDCDAFE71B53AD9FFF554F0F0DC21336B11F686C30DA65C2680204E1271F7932EEE8B21461893F';
wwv_flow_imp.g_varchar2_table(17) := 'DAB993FC86B837E48B651C9EF9FB33A7691A8706B1A55005964235F9FABA57FE5C6309907AE4F97D9CF5D7C12F5E647E046EC32BF6D8C50B893706E0066EEAD1A89904801BE4F46D9CFAB8A3D8EAAA2A7A7FCBD6F9352FEF4820700404180211583CB824';
wwv_flow_imp.g_varchar2_table(18) := '744E850C1423091086BF4BE801FBF9B0F63CF4D33777197DD31BC25E6710592A1EE142EB911B305F89CD6B65D9125A535149C5592CFBC6713FF0F95FBF4BC446F0899089AE12461260FA561FB2B0C5D6B0AD4DCDD45E5767E0D815EBD2F093A774EC520F';
wwv_flow_imp.g_varchar2_table(19) := '52A82011571A61578FBD38F95A559E79ECF2395C1C5EEAC321028F23B8302C6968300E47E308C0191C82ECE20C6127B703BB765191A1173A5DFD77E8029F722D407620AAED751C6B66223CB37CF6DDA9C40599BFB6D6385F21E308C0EE0E4E5A42487B73';
wwv_flow_imp.g_varchar2_table(20) := '33B5227B8389720686DF0B02C4A5AE7205FD0AAE1D9B919388E5F2D843FAF773E768E0516C1DCFB27F7B47C633C17904DA5FBC79D3F9BC17DEB201C36653A308C03939675CA36077874F76ED36F2D833D5F80FB66FA37FEC7883CADD4C7371837F8223CD';
wwv_flow_imp.g_varchar2_table(21) := '7F3D7B9A0EE186978597433F044932D913F0B1E86F4E9D4AC40F04D6D71B15586F140138C025E20681BFDED0483B707C679AA433FE7FD9F5D60BBBC924F8C9FF7D969809F66ED9420D552B3382E5CCED3EEAC5A91A8B8F37D535E6DCA49B43001C7D4E5D';
wwv_flow_imp.g_varchar2_table(22) := 'BF91C8C8FC538CFEA6F9F8676AFC712BFFCF1BD7E89FBF3AEAFC73F3FA06EA68C8EC489333D17DC12742CE3AA8884A9B9B8CC931640C0138512D677660598951EA4344789924D91A3F63700699217E79E853078E9A1555B46F6BE677227F387F9E1EBAB3';
wwv_flow_imp.g_varchar2_table(23) := 'ABDF201F216308C0515E918958D2D8375EDB44AF2125A029928BF1A712A01A9BE40F5A5B3386E632126D9DBD7AD5F95CD1D272F2AF5D93F1330AF103661080973FD7AE03DF28F23A78E8C09E3DC64479E56AFC6C74C94BA04DD8C4EECCE23C9F37C3874E';
wwv_flow_imp.g_varchar2_table(24) := '9C703046191B2A6D693662196404019CF426C8EDC3528DAC671FB4B615E26093719B5418FF5318EE8F7F834D308E4559F6BCBE859A901D2E1BF95377178DE0C6992580FCA826A453318200A11124B275FD565A1B71F38BB856DD4585F13306BFC645D6A1';
wwv_flow_imp.g_varchar2_table(25) := 'AE4E078E5264BBFB514747D647C39DB863E9716F867DF0AF2AC64B773182003377FA1329CCDF47B497EEB97DF261FC6CA81F6CDF41D55C52294BE19C427F76EF14BCB853E0007ADD457F022084CF39FE74D29C78E8177BF7924F63D787B3B8E1BD9C74C3';
wwv_flow_imp.g_varchar2_table(26) := 'CB975C2F3BE77F9101268FFCFC9EADF58DB4AD3EB77B114EB1F83FDF7E9BC0BA74438BF6FB00ED0990ECF75F59BE8C7EB87DBBB68352BE46FE8D705F78134E812AE48B7367E9B1EB716A429C80F604488EF9AD47A9A27790DB5347E9ECEBA39E3BB1DB56';
wwv_flow_imp.g_varchar2_table(27) := '165523BF4AE3E776FDE54A2FDD715DCDFD6BD6C4AA546A2CDA132034328A0D3072FA4374DD00EB62FC8CF1792CCF2EBA1EA8266C84B5274072DC6F367E2EAF7AF0D2C9F819AB1BC32374F2728F039B09A953B427C04CFF002AB3C70A5B7CD8B193562AAC';
wwv_flow_imp.g_varchar2_table(28) := 'E4921C693586C013AE7A9A6BA45532E174337E6EFB30D6FF87B10F6031C13D5A7F02DC86FFBF1B0DF5F1EEB7A84C51AAC31128FA2F172FD2643C6560CA54914BA4153F2A5FC6DF82A095DDCD389DC993702AC5DFE26EC1210032EBF1465867D19E00C9E1';
wwv_flow_imp.g_varchar2_table(29) := '8F07F7BCADC405A2E7DE5D149260D78AF9A5ADB189DA702B9A89E4CBF83720F867178280F2299C50F7B393EC12C129141126D9D890CFAFCBFBB3F52700EA5F71022C965FBC8D3B802C02C09351E618DBC39DB1299E652191569BD6ADA79D8D8D0B5256BE';
wwv_flow_imp.g_varchar2_table(30) := '8C9F47FE5D4D2DCE322D9F12846BC5A727F82E000428F25109BB466B2CDA1360EAEA35C01FCBF5FF77EF7E2F2755F09AFF8BD367B0EC8985542E34D28ADFBB1012E86EFCDCCF082E1EFFFBF8B118CEEC14C797611A8BFE044029D07859D35FBEF32E7973';
wwv_flow_imp.g_varchar2_table(31) := '18026FC1A7E85B6458888FFCBFFBE4C0736186C9BAFEF5772713E186F391C004E3E73EC66E838FBB04F080001B34367F03AA443A6E106EBDAB9F610F1048898BCD443B677019D5EB5E46FDD3DFBC4F7FDF3CBF725349B005EEC6DB53DC8D4D317EC6920B';
wwv_flow_imp.g_varchar2_table(32) := '71FF2E1E1D86E566699EF71C99E82F9BF76A3F034CDFBC95C8FBFF094E817229787104C5E3865CB7E1FF3AF873DA89E8A985C8CB48902FE36F4454D61E103487096F215D7BEE3D4348337F04D9269C15104AAD96342D6CEF93D5972DC287F4270046ED78';
wwv_flow_imp.g_varchar2_table(33) := '0AC41F2303DCB21C8A5E1C060186B32000EB299504ADF50D8EFA2E20A03C2EAADC1B5E95F1733F92F3867A5065A724C3F8E245B0E98CBE427B0224E701DA0777DF9A1C7C534E23A3DC95FE983FCE429740C968A79220F96F26183FF7A717D535CF5C8DD5';
wwv_flow_imp.g_varchar2_table(34) := '10F022BE2080724A3A8BF604E02C709C0D8EE52DE4FE6F460D806CE5C6C8309DBC74C9F9781D62673FFFF8002DCD704F918E04A6183FE3D2893D520F665D16136283B5274008BE296177D9B21567F1DB70269FAD0471C2F1F969CE8D1F2B1877B07D3B7C';
wwv_flow_imp.g_varchar2_table(35) := 'F17767FCB864129864FC0CC4099CBADD1C8CA59EF4AD5841C5598657660C6A9E3EA03D01C28FC791093A56F45A853B34D7CAFAB233B6C9CB8504FF719DEF2788FE0139393395D4609657B9E64F6DFB51B887DC77BD6F4DC818AD3D0192036256A09AC947';
wwv_flow_imp.g_varchar2_table(36) := 'A8FB9BAB74220B5ACF339BD7EC66826CDA916AFC0D6BD6D2DE023A6BFFE22C0262DCF4331210938D86557F2629254A11B296FD1C2951546483FEEBCD1B74D5CD3491CB4C904977538DBF1E01277B5B362EFA51E78BDACC4BC4FF454864D40D3F9590C84C';
wwv_flow_imp.g_varchar2_table(37) := 'B49BC7F72607C57309D41A94F85421A76E5CA7EB77EFE6BC1C5A485B0ADDF8B90FB74747E958CF45A73B9C128553A3E82EDA2F815801CF6E849BB01156A3184C2EF4DDCDFC934007E3679C8F23335C1F32C4B198B001E67E184180C8C40405DD917A150A';
wwv_flow_imp.g_varchar2_table(38) := 'E1ED47413C55C2243881E4B2B7DCA21BAA9743BA187F14407C8ACC70A148AC9ABC1F81F645A817A0BB1841004A498D7250716AC47C914017E367231F444EA0AFDC9C409C7EC684F5BF31330077845323728A44969D1B5FA34D28EAA652549320D5F8D721';
wwv_flow_imp.g_varchar2_table(39) := 'A3C5BB1B0A67C39B8ADD6904C25F71F315799794A1524CAD4A785FD9B3CC9801005F727A94AA8A0AFA5B2494522D4C82E3D7AFD26D370D7BB6CBA174C6FF0E8E3A7371E556DDD7D4E71D4218E434C2219DE58F01E950E2FD338600CE32E8066A5945679D';
wwv_flow_imp.g_varchar2_table(40) := 'BEFD0437B8E5A86FAB5A7225818EC6FF1033EB1F503DDE118332431BB504E2CE04E1A8C533014BBE4B241DBB96F94C90CEF8BFA74122AF737DB7E9D29D3E07D722CCAE7E836A2F9833034039A945F20E6016C8A4205C26B3C52CA68263F08BE9778F05E7';
wwv_flow_imp.g_varchar2_table(41) := '5B0EE938F23B830A62803F7BA648DE7A271B84296214015829C97982B6213DC856048BE74B9804DFE06CFCAEEB8BF42212A41A7F6DCD6AE291BF90D7FC71CCBA71B8D08D5B711653324227DB83710448BE13588C42D9E948B0BBA1897ED516AB51F66FA7';
wwv_flow_imp.g_varchar2_table(42) := '4F514FD2A65927E3E700F843A74E5208B3000BD708E664582689710460E54C63CD1A755D9ADB310BB4E67116E0EF63127C8D2091413769EC8B0C4427E3E73E74A3487677BC48760049B0724CAF5E88C4319200C91523BDA815F031F602A5C5C579C59F49';
wwv_flow_imp.g_varchar2_table(43) := 'C085E4BA10A33CEBDE96C6BFD08BFC39DB5A5A685375B516CB1E6EF7643048BF45F0FB2C660116932A431ABD048A772E3954B21E9762EFE0726C31640267E50388291841F0B81737A6554B97522DEA169405FC8BF1F5CABEE39BDE5EEA1F7AE03CCF6BE8';
wwv_flow_imp.g_varchar2_table(44) := 'E8CF7D33720670962530C419E40D8D27CDFA6007CA03A1BCA7C8FC08DCC751F2D1F3B1BA62ECF610A8AF0709F422F0FCBD747BD7F6F5D1585A35032534344461B7AAE1526CDE7E80A0F97C1D8B9A021FFBFCFFFE2CB2E321FF0F8B0F55378B7388B32E74';
wwv_flow_imp.g_varchar2_table(45) := '5C8C9D011CE0B17E7592E7BA6BF2F5B8C0791745B4455E8CC09F2F5FA27BC3C3B1B19F737F72DE9FC54E3EB4880A329B00CC01A7863007B5C426BA5D9B36D3066C46459E47E00A6ED24FBB294F9CA58F73EC596A3454C61380B5975C46894F853EDAF906';
wwv_flow_imp.g_varchar2_table(46) := '551A749BA9C242C73050FC11F1BEB3AE2F9509E58F16828B1504602066FA514B786ACAC1A40C099DF623783E97348A0B015797F770D18BC3D8F44EB9DE9E26DEF8BE4817D610806B08F0D16814051E587853BC1F2ED3F9BE1F28741270C18B3F7576D2C4';
wwv_flow_imp.g_varchar2_table(47) := '746C70E0A2179CEDCD93639D8542EF77BC7DD610803B1C0D86681A248867932E476007CF042519667FD345B9F3B5938DFF08A2BC9EB8814484AC1A25B8EDF5E4F9D270BE762DE6DFAD220003EBE411E27427ECD8EFCE04FB5ADB7051A53E7660311599E9';
wwv_flow_imp.g_varchar2_table(48) := '77F1B2E7CBEE6E9A700B0CF2494FA06E1D1CDECCF1F45C0826D6118041497695E07F9720CBF1FBEDED5489541F36086F78BFECEAA2602898E8AE49515E99E8D04A023040610479871E0CF1C2C8C1CB8765D07BADADC82EAD26A750264A58CCF70EC14DE3';
wwv_flow_imp.g_varchar2_table(49) := 'ABAE6E943A8A7978F2716731EE477C1566F7FB45185B4B006726E0742A9CEEC45D0E797044BA03DEA39B10A06EDADD0F77F1D2E05D3A8FB0D1A87BD4C99D749CDC14D6565E4C32ABF82EAB09C0003A7B02CE29E47A3DF2FFADAEAAA2BDB831366573CC9B';
wwv_flow_imp.g_varchar2_table(50) := 'DD6FAFF422A9EDC3399BC18637003771DBD6FCA9A4B19E000C089F0ECD20E577D43D07E7FF2B46F99F0E646A685EB94ADBD98047FDEBC343740E358F43E1D8F1AFB3E8C1863F8091DFA6D31E5902CD375FC25A82709E8B606F902C2B2B2BE92DB8525768';
wwv_flow_imp.g_varchar2_table(51) := '7673FC78728A4EC0AD6174FCD9FEF82A2AA9B81A45444C5BE3CDA7DF17FC5D66801460222894CDD925E2E95562DB440F6D864B701B8E097D45DE2CA15E9C8F71ADE36EDC7AF7F2A59FBBC177BE19FB1B279F3FE21344E6101002A4B186286260D9953A5E';
wwv_flow_imp.g_varchar2_table(52) := '7A29FE9680DF4F1B41828D086A2F2DF615941DF13AFF2A887B05771CC9C79BDC482E65C4A3BEC7D20BBF97294A08F01274D893348838DFB8FB44F25B5B6AEBA819C787AB5EF188CA393BFBE0BE7CE3DE5C1AF7C45A1F6E0DFE1A84611A16C8AE72E41102';
wwv_flow_imp.g_varchar2_table(53) := 'CC8726F606BC2C0AA10E59F22639FEB1325C9E35E2D8B4094123B994689DAF19F1BF4F63761A4490CFC0E808DD45BEFEB09BB121F9F31CC2E85BB19C8A72A898B9D0F6E8FE3E2140061AE4192184A3C47812DED48FB2835D35D2B357E35269152ED496C1';
wwv_flow_imp.g_varchar2_table(54) := '1055EC35C7119D35303646032323A8633CF6ECDA3EA9119CB4B618862F23FEC2952A04583856897772BC31A760E499219A74BC98FA281F22AA966314AE5C5A461530CE4A10C48F75B81F9E963EBCF89E8137AD9358BF4F200B03BB234F209DCBE4347EE2';
wwv_flow_imp.g_varchar2_table(55) := '353933859FD36947F9C43207C7B53CD217A12A8EA971BB59A868C11F11022C18AAF46F9C8581B26F116F98D3ED15727C7CDA8F7BB019E7DB5B367C93D214E603ABF99E2904980FA10CFECE04884C4C628934411176314EBA5DCEE031CFBF1547985C8D85';
wwv_flow_imp.g_varchar2_table(56) := '97386CF89E023B81CAA96FAFF8C342803C2A8009313B1374B2D4CD6289130D8571BD10718811657260F9E3089643EC87C467F51EB828B0817B31CAF38DADF3D322FFFC3CAA23FD6C6A725A94C50653BE4F3F046406D04F67D262850808011482298FD20F';
wwv_flow_imp.g_varchar2_table(57) := '0121807E3A93162B444008A0104C79947E080801F4D399B458210242008560CAA3F4434008A09FCEA4C50A1110022804531EA51F024200FD74262D56888010402198F228FD101002E8A73369B1420484000AC19447E9878010403F9D498B152220045008';
wwv_flow_imp.g_varchar2_table(58) := 'A63C4A3F048400FAE94C5AAC100121804230E551FA212004D04F67D262850808011482298FD20F0121807E3A93162B444008A0104C79947E080801F4D399B458210242008560CAA3F4434008A09FCEA4C50A1110022804531EA51F024200FD74262D5688';
wwv_flow_imp.g_varchar2_table(59) := '8010402198F228FD101002E8A73369B1420484000AC19447E9878010403F9D498B152220045008A63C4A3F048400FAE94C5AAC100121804230E551FA212004D04F67D262850808011482298FD20F0121807E3A93162B444008A0104C79947E080801F4D3';
wwv_flow_imp.g_varchar2_table(60) := '99B458210242008560CAA3F4434008A09FCEA4C50A1110022804531EA51F024200FD74262D56888010402198F228FD101002E8A73369B1420484000AC19447E9878010403F9D498B152220045008A63C4A3F048400FAE94C5AAC1081FF07722585570382';
wwv_flow_imp.g_varchar2_table(61) := 'F13D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8651339425604413)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED7D097095D795E6F9DF220909905824048855608C051218DB2C368607C8C424B1D349ECD83D9574929E2476';
wwv_flow_imp.g_varchar2_table(2) := 'D235ED74CD74D2CB94DBD3A94A5CD535E9E9EAAA742AD5E9EA764F92F6A4CB89639B45CB0303C68EC12009616CC4BE23362124F4D67FBEF316E94916F0B6FFFECB3BA74A2596F7FE7BCE77EFFDFE7BCF3DF71C8D44040141A06011D00AD672315C101004';
wwv_flow_imp.g_varchar2_table(3) := '48084006812050C00808011470E78BE9828010808C0141A08011100228E0CE17D305012100190382400123200450C09D2FA60B0242003206048102464008A0803B5F4C17048400640C0802058C8010400177BE982E080801C81810040A1801218002EE7C';
wwv_flow_imp.g_varchar2_table(4) := '315D10100290312008143002420005DCF962BA2020042063401028600484000AB8F3C57441400840C6802050C00808011470E78BE9828010808C0141A08011100228E0CE17D305012100190382400123200450C09D2FA60B024200320604810246400860';
wwv_flow_imp.g_varchar2_table(5) := '44E7CF7BEBADE272AFB724545A5A4CC19E227751B13B34401E97A6790096278C1FAF1616DC2C386942BA47F7108575FC44753DEC2DA170241888505179D0DBDF1FE8098506BA366D0A585075D3542AC881BCA8A5A5D6AD451BA22EAD41D3A901E8CF4285';
wwv_flow_imp.g_varchar2_table(6) := '842AD2699A693D210DAB4340A373E8EB4B68F0A4AE519B2BAAB7452374A0A3B1F1983A25ACD1524110C012FFB625BAE6FA2CDE0C1BD0F1CB007D9935E0172D2C86401F91B657A768735477FFAE73DDBA368BE99777751C490075AFBE5AE49A3C798346FA';
wwv_flow_imp.g_varchar2_table(7) := '6748C30FD18CBC23270F2C04048EC3C8D7498FFE2E72F9FACECEA79F0E3ACD684711C07D7EFF3C8F1EF93A96F35F41474D775A67893DA6227016E3EA5FC3BAFB5F0EF97C5DA66A92C7C66D4F00757EFF588F1E7E5AD7B4AF019747F2888D3C4A10B81D02';
wwv_flow_imp.g_varchar2_table(8) := '3B75D27E1E25D7AF3B7DBE9B7686C9D604D0B0BDE50F745DFF5B74409D9D3B4174B72B02FA3E3891FFAA6D5DE356BB5A604B0258E26F5A1B25ED87007D855D8117BD1D85C0BB2ED2FFE280AF71BBDDACB21501F072DF4D919F01E467EC06B4E8EB7C0470';
wwv_flow_imp.g_varchar2_table(9) := 'CAF4EF51723F6FA76D816D080067F7AB5C6EFD151CE3CD75FE50120B6D8CC0515D777DA963DDBA7D76B0C1160450DFDAF41572693FC3E42FB203A8A2638123A05190A2FA37DAD735FE9BD591B03601E8BA56BFA3E50798F87F697520453F416024021A69';
wwv_flow_imp.g_varchar2_table(10) := '3F68F3ADFF9F5646C6B204C0C13CEEAA49BF245DFFBC950114DD04813B22A0D1BF452E5DFD865583882C49006BFD7ECF558ABC0660398A4F4410B037029AFEFA44DDF385ED3E1FEE92594B2C4900D8F3FF8234ED596B4125DA0802D923C027041DBE0D5F';
wwv_flow_imp.g_varchar2_table(11) := 'CEFE09C67CD37204D0E06FFA11A2ACBE678CB9F25441C03C047037E5E5365FE3F7CDD3E0932D5B8A00EAFD2D2F10E93FB61240A28B20905F04B4EFB6FBD6FF7D7E9F99FDD32C43004B5AB73D8CD8EAB771E1C295BD39F24D41C0F20844B012588B95C02E';
wwv_flow_imp.g_varchar2_table(12) := '2B686A09028879FC2B271E0220B55600457410048C440004D015EEBE56678593014B1080ECFB8D1C6EF26C2B2260157F80E90450EFDFBA88C87D009DE4B66247894E82804108447497BEB4634D638741CF4FEBB1162080E6DF40D327D3D2563E2408380B';
wwv_flow_imp.g_varchar2_table(13) := '81DFB6FB367CCE4C934C2580D8051F97BEDB4C00A46D41C04C04B015586DA643D0540268D8DEBC5BD76995991D206D0B02E622A0EDC0B1E05AB374308D0016FB9B3F87C639DC5744102874041EC756608B192098460008FAD98EA09F3566182D6D0A02D6';
wwv_flow_imp.g_varchar2_table(14) := '42C0BC55802904B0B4A56556C4A573CA6553DAB756E78B3682002EBCBB22B5ED6B36F29C502AA64CC07A7FD3DF60EEBFA8D452694C10B03402FA4BEDBE46CC0BB5A29E0038C9C7F61666BA596A4D95D604014B2370BC7DEDFA5ADC82C5C54175A29C00F0';
wwv_flow_imp.g_varchar2_table(15) := 'F647265F6D8F3A13A52541C02E08E82BB10A7857A5B6CA0940C27E5576AFB4652F04D46F034C2080E60358E370455E11414010188680FE1E56004A6B5D282580A5DBB64D8B785D6760B3D27665940902364140F786F509FB1A1B7B54E9AB74222EF6B77C';
wwv_flow_imp.g_varchar2_table(16) := '15A18FFFA2CA38694710B02102CF2228E857AAF4564C00CDFF8406BFA5CA38694710B01B02D81EFF14B9039F53A5B75202C009003C9CDA7255C6493B8280FD1050EB075047002FBEE8AA5FBB9A4B298FB15FA788C68280220434EA6FF7EF1C472FBD1455';
wwv_flow_imp.g_varchar2_table(17) := 'D1A2320258E2DFB60439FFF6AB304ADA1004EC8C804E91851DBE8D8755D8A08C001AFC2DCFE9A4FF448551D28620607304943902951100AEFF8A03D0E6A352D4578380CA7C81CA08A0DEDFCCF79D37AA81505A11046C8D80B25461CA08A0C12F1180B61E';
wwv_flow_imp.g_varchar2_table(18) := '92A2BC32043029DBDA7C1B96A86850190160057001064D516194B42108D81C818B0806AA5661831A02885F010EC2208F0AA3A40D41C0E60884DAB7EF2C517114A88400EAFCFEB16E8AF4DABC53447D4140190265C5A5A57B56ADBA6574834A0860595353';
wwv_flow_imp.g_varchar2_table(19) := '79C8A35D37DA1879BE20E014047029A842C5A5202504B0F4EDB72A2391A24B4EE91CB14310301A01B73B58B5FFD14DDD46B7A38400B005A8C616E0BCD1C6C8F30501A7201021F7D44E9F8F1DE7868A1202686869998E3A689C074044101004D240408B6A';
wwv_flow_imp.g_varchar2_table(20) := '356DEBD79F4DE3A3397D440901D43535CD747BB49339692A5F16040A088148589FD5D9D878CA6893951040FD8EAD7328EA3E66B431F27C41C03108B8227355D409504300ADAD0B488B2AB9DDE498016090217A2442148D928E1FFE1D13978B34FCC47EBB';
wwv_flow_imp.g_varchar2_table(21) := 'A54ABB41D067F4D830B9E71FF2F9BA32FA52161F5644009B41005E21802C3A289BAFE8A110450301D283418AE2470FE2EFC1C0D084BFDB434104AEA262D28ABCF85D84DF45E42A2921CD23715C77832E5FFFAF796841DBEA0D1FE7EB79B77B8E1080D108';
wwv_flow_imp.g_varchar2_table(22) := '2B783EBFD5A3FDFD14C14FB4FF16E9210EBACCBF685E1041E918729796E277A9AC16F20FF1E01385000C04D7118FC6F23DDCDB4B911B37287A6B0026292D2883F634728D01198C1F4F9E716363DB0791FC212004903F2C1DF5247ECB477A7A10587DF7C8';
wwv_flow_imp.g_varchar2_table(23) := 'EA71A5655431762C8DC7DBBA023F6525C5E4757BA80893D583BD7E7162491F0887298C554410A4128A84E9E640807AD0CE8DBE7EBADED74BBDF8F3DDC43D6E1C79CACB632B0391DC111002C81D43473D2172A39742D7AE928EBDFD6852823D7BD5840A9A';
wwv_flow_imp.g_varchar2_table(24) := '3C6E3C7EC6D1444C7E8F3B3F6FE570244A57FAFBE80A48A71B2B8EEEEBD769807D0AA388560C92993891981044B2474008207BEC9CF34D5DA730DEF6E16BD7B0AF0F7DC22EB7CB4DB3A74EA57953A65025DEF42AE5D2CD9BD475E1229DBC709E22519C2C';
wwv_flow_imp.g_varchar2_table(25) := '8C10F61778264E200FB6082878A9523547B42504E0886ECCDE085EE287BABB49C7F27CA454E02DBFB0A68666E14DCB4B793385B70E27AE5EA1C367CED0F551B6259AC74BDE2955E42E2B33534DDBB52D0460BB2ECB8FC2FCA60F5EBC18F3EA8F94291327';
wwv_flow_imp.g_varchar2_table(26) := '51DD8C19340D7B6D2BCA59AC563A4F9DA24BD8AA8C1477D9D81811C851627A3D2704901E4E8EFA54F87A4FECAD8F289D14BB349A5155159BF8936DF216EDC6F6A0F3F4693AC3B6A49E4E682EF2C2164F39B6052277444008A08006089FE3072F5CA0685F';
wwv_flow_imp.g_varchar2_table(27) := 'DF30ABCBC78EA3550B16D0249B4CFC915DD60D7BF67CF411DDB839FCC4C20D7F85B7BA3A1E7D28322A02420005323078A9CF933F75AFEFC651DDD2DA5A5A300593C4E6FEB3281C9987615FDBD1A3C39C85EC1B289A5A1D8B2510F92402420005302AD8BB';
wwv_flow_imp.g_varchar2_table(28) := '1FEABE3C6C993C697C393DBA702195E138CD497213C7973B3E3C44D7708C38245ACC2FC0F10322C311100270F88860471F07F4A44E86BAD9B3A861C64C72D9FDB57F9BBE8B4675DA7FFA147D78926F860F452E7A264C206F65A5C37B3C33F3840032C3CB';
wwv_flow_imp.g_varchar2_table(29) := '3E9FC624089C3B072FFFD07EBF04976D56D7D5D1141CEF15829CC72A60D7A14E0AE0A25252F894A068DA54891948002204E0C099C0CEBE00CECB53A3F9D8D1B77EF1622AF57A1D68F1ED4DEAC3E46F39D8010721178C8E0BDF382C9A3E5D2E19010B2100';
wwv_flow_imp.g_varchar2_table(30) := '874D07BE7F1F38751A5773874268AB274DA2B5F72E343D98C72CA88320C41D1F7E4817114894140D21CD25336714FCE5222100B346A511EDC2131EC0B97874806FEDC565EEB4E9B4B2769EEDBDFCB9C2C5A7047BBABAE8F8F973432B019C0C1423D2B190';
wwv_flow_imp.g_varchar2_table(31) := 'C11102C8756459E8FB81336787EDF96BA7D5D0CA79B516D2D07C55DEE93A42C7E01B494ACC27307D9AF98A99A481108049C0E7BB598EECE3E3BEA4D45456D11A2CFB1DEAE8CF1A3E2C04C87FF8109D8B450FC6C583D067EFE449593FD3CE5F1402B073EF';
wwv_flow_imp.g_varchar2_table(32) := '25748FDCECA3E0B9A1CCCE951513A871D162E4CEB079748F417D13819FA4098EC1CBB86E1C170D5B81E90599634008C0A041A6EAB17CA96780CFBB138937D9DBFFA9860624E430F7F69E2AFBB36D871D835BDA0E0C9D0E00AF9259B30AEE12911040B623';
wwv_flow_imp.g_varchar2_table(33) := 'C80ADFC37A7600B7E292C77D1E64DE79E28107A914E7FD22774780A306DFD8BB17598AE257A1F978B01897A10A69DF240470F77162D94F842E5E42228FA15AA86B16D7D30C44BB89A48FC0F1CB9769378285925268D1824200E98F154B7D327AEB56ECC8';
wwv_flow_imp.g_varchar2_table(34) := '2F29E2F1CFBE7B767EFC11320E0D95C72B9E893069AC060A4184006CDACB03274EC4F2F1B37088EF930F3E24FBFE2CFB92FD01AFBFFF7BE41F8CE3E9C205A962F8030A4184006CD8CB6178AF439786AAA03FB26811CDC6519648F6081CC356E09D94AD80';
wwv_flow_imp.g_varchar2_table(35) := '1757A40B21A1881040F663C6946F72A8EFC0B1E3F0FAC713644E9930911A11E35F4812C645A75E38EE6E2011481F4E41C661B95E8EA8BEF1395614DADAD14EDD89580A2E5D5632678EE3438585006C36734297AF503811D3EE42A69BCFC0EB3FBE40F6AB';
wwv_flow_imp.g_varchar2_table(36) := '1CC4D3D97D893A8E1FA3C82869CB8B911978F9DC5A9AC91982B390EBF0ABBCF9FEFBB8401CBF42EC9D3C19414213B378927DBE2204609FBEC2D5769D6E1D45F1E3C4DB7F1EE2D85760C01782DC42D6E25D70D65DC452FD6E327FD66C7A008E3C77166190';
wwv_flow_imp.g_varchar2_table(37) := 'EFE0BEC0B1445095868C492573B10AC8E23977D3D12AFF2F0460959E48438FE17B7F8D9E7CE8A1D8F2D7E9C2CBFC6DED6DD4372297E118A4FB9A8B041F9D29177C9258CCAC9E468FDE333F63686EE022D5EBBFFF3DBE175F051421A720972573AA0801D8';
wwv_flow_imp.g_varchar2_table(38) := 'A867078E1F1F2CDC3103453AD62CB8D746DA67A7EA68937F69CD0CFAF315AB685962793E002FBEFFE2057A79E7DB742E252E6235C2A1B9A641A6E2C7D5E1B3D86AB070C5E292D9B3337D846D3E2F046093AE8AE0ED173C3B14EFFFF8B2076C9BC5375DC8';
wwv_flow_imp.g_varchar2_table(39) := '479BFC2F3CFC087DBBEEF64ECF6737BF49FB900E8CC58B1502AF924A32740E5E44E191A6FD1F0CAAC957869D5A8B500820DDD168F2E782E7511A2B5111A712D17E1B11F5E764E1C9DF8465FFCD9465FFFF58FD287D6361DD1DCD3E8914689B7EF1EF144A';
wwv_flow_imp.g_varchar2_table(40) := 'DC8D78F0BE3A5A00675EA6B2B9AD8DAE245613BC05E0AD80134508C00EBD8AC17C0BE9AED909C8B21293A0B632F3416D075359C77E38FCB6E2A24EEA9E3F9DC99FB4EF5BAD2DE4EFFA38F6D77B67CF893904339523D802BC87AD404C5068640CE75570A0';
wwv_flow_imp.g_varchar2_table(41) := '33500820D39161C2E7B9706708D97D59B850E7532B573A36BD174F7E7EF3F7A6E4F0CB64F23346FFD07990FE71F7CE185E35A810C4E9D032158E0EFCF59E7770C9325E3DC9A9CE4021804C4786099F0F9C3E43D15BF11A7EB3ABA7D223F7DC638216C637';
wwv_flow_imp.g_varchar2_table(42) := '998FC9CF5AFEE3A183F40FBBE204908BB37407AA0D9D867391C58532E89C33C069220460F11E8D45FE7561F99F3896F2E1AEFFF4F20A8B6B9DB97AF99AFCDCF273FE166A3D12DF0234A0F2D1E2E9C8FB97859C4254E0DB880E8C8B16DF0638ACCC981040';
wwv_flow_imp.g_varchar2_table(43) := '160343E55722580A071339EC38F2EF1978C19D56D0239F93FF144AA03DFE8B57069D80BE7A1066457684C999837EB57B375C2F896D0052893BADFCB81080CAD99C455BA14BC8F5773D9EEB6FEAA4C9B41E853D9C241CE1C7413EA97BFEEF82E49EBFC351';
wwv_flow_imp.g_varchar2_table(44) := 'DF9DEC7FE6AD37E88333F16BD265C525F4C4830FC26F927D71D06D1D1D8365C83DB877E17598F35508C0E2B389D37D2533FE2C9D379FEAA63927832D4F7E76F8A516EDC8D4E197EC3E4EFBFDA7DB5B696B62E9CFFFDED8B084A6E4580FB01D0556DA8FF1';
wwv_flow_imp.g_varchar2_table(45) := '168CAF092363D0ACCC4F14AC3CC484002CDC3BF1FD7FD7A0869F42F0CF649B96F01E09733E277F0493FF851193BF16D1822BE7CECDB97787070539CF0F200490F31031EE01A9D17F1E5C4CF9D2AA871D71149DEFC9FF9DD6666A3D3A44945CF97803AE48';
wwv_flow_imp.g_varchar2_table(46) := 'E723312AAF2CFE037E8048E20296D3A20285008C9BBF393F39F5F24F15F69F8F39E0DEFF6893FF4F573D42DF41DC7EA6C26F7E23277F529F2D6DED74B927EE87F1564D214F8573CA8C0B01643AEA147E9EB3FE3009B0D47289AF79F314B69EFFA606120E';
wwv_flow_imp.g_varchar2_table(47) := 'BFD43DFF73CB57D29F61AF9EA9A89AFCACD7EE2347064B8A392D69A81040A6234FE1E7B9C26F14C75A2C4B50DF6F118EA1EC2A3CF99B70A6DE93B8CFC076E473F257C2D9B70EAB887C2CFB47623CCC11081F4CB18DFB61A46D4200169E519CFA4B0F8762';
wwv_flow_imp.g_varchar2_table(48) := '1A667BB5355DF3027038F6E22E7C1912628EC9735111E3277F0526FF2243263FE377FC0A528777C653876B5E5C0F9E333B5D582DFF3921000B77D1AD8F8F40BBF805A0C6A5F7D39471E3F2AAED4DDCB8DB7BF20475F7DCA040DFCDC1677B916464021C69';
wwv_flow_imp.g_varchar2_table(49) := '4B7189A6B2B434A73607C2116AEE68A3EB7978F387B1E7FF93110EBF2A04F9F8EA8C9BFC6CFC851B37A8F9C0FE380E7C3168BEBDB762A91D2A0490D3F036F0CB487C790B956C93B209B9FF26E6381953B53D71F52AEDF9F0304522F115C668A2E1E2513D';
wwv_flow_imp.g_varchar2_table(50) := '528E2D9A3A35ABD3877CBEF979F27FB3791BED423EC0A4F0B27F3DAE457B7208F449A707AFE04AF2E67D7B073F3AC64177318400D21901267C46C76DB401BE029C902797AFA071589EE7430E2285D60138B6D2158E405CB7F03EBCFCD22F361A80FECDED';
wwv_flow_imp.g_varchar2_table(51) := 'ED74ADF7C66033D9EEF9479BFCFCE65F8768418F3BFB28BF74ED8FA7097B6FF0E32570C66A06934EBABAE5FA3921805C1134E8FBB1A29F480196942F220620D3CC36A3A9760D996FDFDA8BCCB789DC02FC992F3FB49C3620706631AA0A1FBDD94BBB7003';
wwv_flow_imp.g_varchar2_table(52) := 'EE67EFBE4BFD8181C14754E3FF7CD867A713563BDAE4FF365278BD80B8FC6C84DFFCDB13D178FC7D556FFEA4AEB74261FACF3DBB870860CE5CF8023CD99862B9EF080158AE4BE20A4591F63AC0557F13F25F56AFC96A199E6A1E07B5BC89BD6CD2133F1D';
wwv_flow_imp.g_varchar2_table(53) := '93FA9F3FFD199A5B36F613285C41959C3FDFE1A79D294BEE69C844B406FBED3B9140BE27FF3730F977A44CFE29BCE787B7DFE8657F2A2061BE1494B85ECCFF5E8C1C812E8714601502B00901FC21D261E57A0BF01C9C7DAD6D096716EC7EE50B4FD1722C';
wwv_flow_imp.g_varchar2_table(54) := 'EF6F279C56EB7938DDDE4E99804C026B41027C3371A418BDECE7C9CF477DE9AC42F2D9AD51F8637EB1EBEDC1471623EDB8ABD81915988500F23952F2F8AC915B80A7B00528CE30B9E548750E22A9E88144C8EC72A4CA7AE5B14FA5A5F1B75A9AC89F126A';
wwv_flow_imp.g_varchar2_table(55) := '5B834CBB8F22D75E2A0970069DA6117BFEE757ACA4EFD6671EE4C34A7DBD69EB30879F59939F75092086E1FFBD93BA0598832D80372DECACFE2121008BF6D04827E0E731994A735C7672618D13892AB8DF5CB98AFEFBE2F4F6E4A3AD04664E9A448FC031';
wwv_flow_imp.g_varchar2_table(56) := 'C824C093BF05413E57705C96946C1D7E41AC3AFE2B26FFBB389E4C8A99939F75E80B04E9B5F7F60CEA538224235C3ACC09220460D55E1C710CF85938EACA732C02D2826096F3086A61F9DE5A1FFDF13D99D51518B912988D6CBB0FCEBF875A91832F75F2';
wwv_flow_imp.g_varchar2_table(57) := 'E7F2E6FFDAB62DB4FBC490F3939D8F6BE17C54B9E71F3924B864D81BA81E9C9431F35170C42109428500AC4A00D0EBD6C7F1B4562CF9A803F001F2E51F4A9C2CFCC1A27A7A19DB8A4C64B4958017B102A1C44D397E563EDFFCD5097F8399939F6DEABED9';
wwv_flow_imp.g_varchar2_table(58) := '475B3F48C601E04A7016158732C159E567850054A29D615B03C78E2114381CFBD6DAFA7AAAC1DB30173971E50AEDC2DB9A65123CFF5B9E7E86CAB3D8CB8E5C092475CA76F2F3F7FF68EB66DA93B2ECE7C9CF117EAA1D7EA3E17B1AB901772472036A2836';
wwv_flow_imp.g_varchar2_table(59) := '12AB17E8101102B07047A66603BE1F4BEDFB1091978B84105BF09BBD7B29100AC61EB31A1986FE79DD86AC1E399204B29DFC7C07E19BD8F35B75F233389D67CFD1FEA3F1C029A765071602C86AF8ABF95210B50022A809C0320F996D57C0F994AB1CC515';
wwv_flow_imp.g_varchar2_table(60) := 'E33D8713052FF0B04F239AEEC7C8C1978D7CE76D3F351D3E4CFF0DF7F9FF248BFBFC5CD38F837C521D7E567AF3273179E7082A069F8F9765F3E028D28B5A034E1121000BF764184BCF5077774CC34A2CFF37621B900FD982449797AF5D1D7CD42690C0FF';
wwv_flow_imp.g_varchar2_table(61) := '863F20D738834C74E337FF57B7BE853A7EF1049E2C569CFCACD7169409BB9C2813E6ADAC22CF84ECB20C67828FAACF0A01A8423A8B76525382BB5D1E7AF691CC9C76B76BF20697DB46E9AD8144AE01FE9C4A12186DF24F436C81EFBE4519DD37C802D2CC';
wwv_flow_imp.g_varchar2_table(62) := 'BF82E8C95FEEDA451187A6061702C87C4828FB063B00D91198947C26056512680209DC524C02767AF333EEDDA8CBB0F5837D837DE0A48B406C941080B2E99C5D4303C74F909E70DAE5C31198AA05E703E0229CAA48E0766FFE35882AB482B77FB41E4A8D';
wwv_flow_imp.g_varchar2_table(63) := '9ED48A8AA964F6ACEC3AD2A2DF1202B068C724D54A75044EAFAC241FA2EFF229AA48E076937FED8890E27CDA968F67B51C42F0D4E578F094D31C80B202C8C70831F8191164D2099E3F1F1F80B80BF0A595F94F0DCE24C0D579FA91F822299F4398F08F10';
wwv_flow_imp.g_varchar2_table(64) := '7E9C0FC7603FBCFD7FBC6DF330871FEFF9AD3EF9F9CA3497064BA6042F9A3A8DDCE33E7973D2E02160E8E365056028BCB93F7CA41FA071C9529A327E7CEE0F1EF1843EDE0E1840023CF9FF68CB9BD4868B4849B1C3E4675DCFE308B6055BA4A4386DFF2F';
wwv_flow_imp.g_varchar2_table(65) := '2B80BC4F23631E1838758AA2C84AC33217E9C15719941E9C49601B6EF4F5A5E407CC652560E7C9CF58EF4699B1E389D5976BCC182A9E31C3980E36F1A9B2023011FC749B4E2D10E2C62DB4A77093CFA8F878AED4BB15E7DEB99280DD277F082B975FEF79';
wwv_flow_imp.g_varchar2_table(66) := '07CBFF786560EF141404C9B1CE60BAFDADF27342002AD1CEB2ADD8D5603E0E4CA4F17A188EB339B88967943009B04FE0268EC09292C94AC0EE939F6DEE4255E6770F1F8A9B8F9B7F63380AD321790053C78D108051B328CFCF0D9E3B471C18C492CFA8C0';
wwv_flow_imp.g_varchar2_table(67) := 'DBA9192FE1D58ECABDBD1991C068937F0672073CBAB0CE7A413E77E8A3D4E83F37D2B117E5780F23CFC3216F8F1302C81B94C63E28B55028B7F4D8FDF753D5D8FCD609186941AC94176EC1DD48C9E97FA795C04D7CFE6B08EF4D75F8D54CC4E4BF2F9E38';
wwv_flow_imp.g_varchar2_table(68) := 'C42E32BC223051112A01B91D529579641F0801D8655442CFD4A0A0698809E054DD460B17F6D886C21E7723019EFC5FDEFC0675269C66AC971D273FEB9D9A38C589C13FB205307AD618F4FC08526E051329BDB889CF3CF81055C03B6DB4300934810452EB';
wwv_flow_imp.g_varchar2_table(69) := 'FA3D543B9F7EB07225CD2E2DA3DF5FBD427FBDBD954E240266EC3CF9AF22349AD3A627A5A87A2AB9C71BBBD232BAFFEEF47C590198897EA66DC309C8B5029249426663703EA2A84A0D67FC65C7602A09B0FA73B012399EB8B19834C7AE6F7ED6FF6D5C6F';
wwv_flow_imp.g_varchar2_table(70) := '3E75E962CC14A725FF186DB80901643A094DFE7CEA9120862852852D43769F32255A3109BC83097236915770B44617CE9849F7236D7626558494289F4623C3537FE1E8AF0A477F15E5697CD3BE1F1102B05BDFF12AE0045F108AD7F49B80A8C04F233A50';
wwv_flow_imp.g_varchar2_table(71) := 'A51CC636E4A37367A937E59890F5B87FCE1C9A5A6ED3BBF2C0F58DFDFBE97AE2D483D37E97A0008853927FDE6E7C0801A89C39796A2B8A7D6AE0CC99C1A73DB8E05E5A804015D5C24942B96EDEA43C162D556D43B2BD0FE1BCDC87C8BFA414D7D420FD57';
wwv_flow_imp.g_varchar2_table(72) := '6E9591CDB225937685003241CB429F0D224F5D2411B2CB97849E8443704C16093E2D649269AADCE25C89EFBD3778E9C78DE3D5A269B9E55F34CD980C1B1602C81030AB7C3C764988537C27A203AB116CB39E33EAA45FC0D72AA698AA07C3D77CB0832E26';
wwv_flow_imp.g_varchar2_table(73) := '53A4692E2A99031F468E55984C352A83C685003200CB6A1F1DEE10245A523B8F16216845247D04DACF9CA6F694AC4B4E8DF9171F40FA63C2569F0CE09A6D34718F5FC3A9004708568E75D69D75A33A6464C49F1BB8154D9B665473967CAEAC002CD92DE9';
wwv_flow_imp.g_varchar2_table(74) := '2BC5178502274E921E8917102941FDC0C797DE4F65C5C5E93FA4003FD93B10A0CDFBF75130719A123BF3E7745F360A59CE47B70901E40345939F1145ED3A2E220287404C937188CE7B7CE9522A724801CB7CC3CBD57E371FD84F370713A26A543C7306B9';
wwv_flow_imp.g_varchar2_table(75) := '72ACBD986F3D553C4F084005CA0ADA085FBB8E1A0297065B9A824B38EBEB50C25BBC82C3D08FC2EBD7840B4EDDD7AF0FFE7BA1EDFB5301110250303955351142D51F760C26650E72D83DCC956C450611D88D82ABC72FC4732CB2785083D08B70E6421521';
wwv_flow_imp.g_varchar2_table(76) := '0087F57CE00C9C82FD43C93DE723A0E5A139A8675FE0C7837CDCF7DED12EEA420463525C08A12E2EF053132100871100213A6F00E5B6F44060D0B21A94B35ABD60816573EF1BDD059CD66BC74787E95CCAA5255771496CDF5FE8CC280460F4E833E1F91C';
wwv_flow_imp.g_varchar2_table(77) := '24C42B013D384402555C6E1BA9C4BC05E6180CE294C4DFD9893DFFB5C19EE03BFEC5336A482B302C461B8A4200264C50154DEA78EB05394600270449E1D38135700CAAC821A0C2C6BBB5710DB6EFE83C98E2EDC7295F09B2FBD62058AAC08EFB6E879510';
wwv_flow_imp.g_varchar2_table(78) := 'C0DD46919DFF1F1BDFE0B9F3837706D81497CB4D0F2DB887E6615BE06439823BFDEFC3E1174D64F58DD9CE7B7E0EF4297487484AC70B01387916246CE32C429C4D2855664DA9A695A82FE071D832388C253FE7F33F8D139154718F2FA7A26AF53726AD3E';
wwv_flow_imp.g_varchar2_table(79) := 'BC8400ACDE4379D22F7CBD077102DD88158AE7B96729C372F8011C13CE807FC00972EAEA557ABFEB08DD4A145189D984CB3DDEAA4A47E6F4CF479F0901E403459B3C231A0CC6B604A9CE41569D6F12AE98379FC6DA347CB81713FEDDAE2EBA88DC84A912';
wwv_flow_imp.g_varchar2_table(80) := '73F6E15AAF86F06891D111100228B49101BF00AF04520386622F4ABC29674FADA6FBA6D7D004058946F3013B27F0FCF0EC193A71FE0282A0E361D0498955F2E5001FD9EFDF116A21807C8C441B3E834F0782172F7D6235C0A64C9D5449753826AB36A008';
wwv_flow_imp.g_varchar2_table(81) := '693EA03ADF73830EE11AEFF9517213F25B9FF7FA8518D79F0DB64200D9A0E6A0EFC47C039CCE3B1AF9845515E3C6536D7535CD4219B25293B30DF5E3D6DE89CBDD740C6FFB64DEBE610AE374C35B3959F6FA198E4D21800C0173E4C77154164629ECF0B5';
wwv_flow_imp.g_varchar2_table(82) := '6B8329C747DA39B96202CDAEAAA21A380C55F90A38DFE039E874025B96CB29813CC3F6F9C8DCE39938913CBC5A91B3FD8C87A71040C69039F80BF00F4450062C74154490124538D2620E289A06C7E1D409153405AB847C45177245DE0B38AEBC809B8D67';
wwv_flow_imp.g_varchar2_table(83) := 'AE74535F4A10D3481D78A9EF9D3881B86E9FECF3B31F934200D963E7E86F722D428E1D6042B89B302154948DA5F1151970CC000008764944415465A554814CBA6525989C6E0F15E18DCC7106C589FC7A7C0F9FCFE98358718490C0E4269272F4C091D783';
wwv_flow_imp.g_varchar2_table(84) := 'B67A90E0B477F07EFEED5BE409CF65BA0B2163EFDD70CFC7FF0B01E40345273F83B7072081C88DDE4458F1706FBBF1A66BE4C2A90497E7F2F0DB5E96F979855C0820AF703AFB619C7E8C6B1244F013EDBF85E22441430CD6BC4578C363D26335C16F7AB9';
wwv_flow_imp.g_varchar2_table(85) := 'B46308CCB1870A011887ADE39FCCD589A258C633117090911EC4DFF17BB4138551C180E7DE85201DADC89BF88D898FB45C859292DB0A034408C00ABDE0401D78B5C0B909F85622FF8E0996EF1A2FE1F9B7C3EE20D8B50B1D4500F7F9FDF33C143962D7CE';
wwv_flow_imp.g_varchar2_table(86) := '10BD0501E508B82273DBD76C44851963454942AAFA1D5BE750D47DCC5853E4E9828073108884F5599D8D8DA78CB6480901D43535CD747BB493461B23CF17049C828016D56ADAD6AF1F4A946890614A08A0A1A565BAEED287CAE61A648C3C5610700A0211';
wwv_flow_imp.g_varchar2_table(87) := '724FEDF4F92E186D8F1202A8F3FBABDD1419CAF96CB455F27C41C0E608B8DDC1AAFD8F6E42A208634509012C6B6A2A0F79B4A1C4F8C6DA244F17046C8F8037AC57EC6B6CEC31DA10250450F7EAAB45EECA8943A9708DB64A9E2F08D81C8148F7D5E2CEA7';
wwv_flow_imp.g_varchar2_table(88) := '9F3626A22B051B2504C0EDD5FB9B07F04B2A63DA7C608AFA4A1008B4FB3694A8684925019C804128F32A220808027741E0240860B60A94141240D3BB88705EAEC228694310B03702DA8E76DFFAB52A6C504800CDBF81414FAA304ADA10046C8EC07F6005';
wwv_flow_imp.g_varchar2_table(89) := 'F08C0A1B94114083BFE9473A69DF536194B42108D819018DF497DB7C8DDF576183320280139019ED972A8C923604019B23F02C5600BF526183320258ECDF7AAF46EE0F5518256D080276460009E01676F8361E5661833202A0175F74D5AF591D22249251';
wwv_flow_imp.g_varchar2_table(90) := '6198B42108D812018DFADBFD3BC7D14B2F0D958A32D01075040023B00D60565B60A03DF26841C0E608E8EFB5FB1A57A832423501F0BEE64BAA8C93760401BB2180CC8E3FEDF06D784E95DE4A09A0C1DFF21C4A45FD449571D28E2060370434D29E6FF3AD';
wwv_flow_imp.g_varchar2_table(91) := 'FF27557A2B25807ABFBF8628C2490E94B6AB0A4C694710C81101DD1D8AD6EC7FECB173393E27EDAF2B9F880DFEE60358E634A4ADA17C50102810043019DBDA7C1B96A834D70402908020951D2C6DD9070195014049549413C0127FD3DA28697EFB748B68';
wwv_flow_imp.g_varchar2_table(92) := '2A08A842405F891300DC995127CA0960D9DEBDDE50EF75CE102C3703D5F5B3B4647504343A355177D76EF7F9C22A55554E006C5CBDBFE96FE0077C51A5A1D29620606D04F497F0F6C7BC502BA610C0D29696591197CE39CF4D695F2DC4D29A20705704C2';
wwv_flow_imp.g_varchar2_table(93) := '48035EAB220DF8484D4C9B80880ADC026536DE151AF98020E07C047E8BCB3F9F33C34CD308409C816674B7B46945045CA4FB0EF81AB79BA19B690410F705C82AC08C4E97362D85C056BCFD3F659646A612405D6B6B835B8B1E30CB78695710301B0114CC';
wwv_flow_imp.g_varchar2_table(94) := 'A9EF58D3D861961EA61240621520A9C2CCEA7D69D76C044CDBFB270D379D00129583F743A1B166F786B42F082844A02F1AD51A0EAE5F7F54619B9F68CA740288AF025A5E20D27F6C2610D2B620A01201D5B7FE6E679B2508E0A9575F757F543991BDA08F';
wwv_flow_imp.g_varchar2_table(95) := 'A8EC04694B103007017D37827E2C31D62D4100DC09B2153067284AABCA11B0C4D2DF323E8054F8EB5B9BBE80E0C057256FA0F241290DAA4040A7A8E6D2BED8B676FD6B2A9A4BA70DCBAC0092CAA27EC0F7513FE087E9282F9F1104EC8580F65D54FCF97B';
wwv_flow_imp.g_varchar2_table(96) := '2BE96C390260701A5A9B7EAE6BDAD7AC0494E82208E488C0FF41C00F9CDDD6124B12005F190EF75E7F1399831AAD0597682308648E00C6F16B1DDB777E5155AAEF4C34B42401B001CB5E7FBD3434BEEC15D2F5CF6762907C5610B01802BFF5F6F6FFE1BE';
wwv_flow_imp.g_varchar2_table(97) := '279EE8B7985E31752C4B0031ED745D6BD8DEFABF9049F8AFAD089EE82408DC11019D7E883DFF5F91A66111604DB136012430C3E9C05700E2CFF157B7356114AD04811404340AEA3A7D1DF9FDFFAFD571B105013088F5ADADCB498BFE2BFE289585AC3EAA';
wwv_flow_imp.g_varchar2_table(98) := '0A5BBF8E2845BF7ED0F7D85E3BC0601B02603067FBFD25E3298CB2C9DA5FE2AF5E3B002C3A160C0221BCF57F5434BEE26FF73DF040C82E56DB8A0092A0363437DFA3BBE9EFF0F7CFDA0568D1D3B108F0FEFE3FC3E4FE8B433E5F97DDACB4250124415ED2';
wwv_flow_imp.g_varchar2_table(99) := 'BAEDE1A8A6BD8C15C1C376035EF4B53F0298F9DB5D2EFDCFDAD634F26D565B8AAD09208938B20CAF209DBE0D47E1D3F8B7625BF684286D1704029834BFD6F4E84F0EAC7B6CB75D94BE9D9E8E2080A471CBFCFEC9218A7E15E7875C5DB5D6EE9D23FA5B08';
wwv_flow_imp.g_varchar2_table(100) := '018D8EE951FA6991E6FEF93E9FEFB28534CB49154711402A120827DEA8BBB427B032603FC18C9C50922F172A02A749D7DE88BAF4D70EAEDDD0E444101C4B00A99DC5B9075D5AE4B39AA635821096E1FFCA9CD8996253CE08F421346E1F26453396F8BF3B';
wwv_flow_imp.g_varchar2_table(101) := 'E07BCCF1F92A0B8200460E8BC54D4D735D6E5A1275690D88D1E24AC5B3D0F155208769390F217980F511D0E81CFAFA12143DA96BD4E68AEA6D11DDD566767A2E33802B4802B813D0F3DE7AABB8DCEB2D0995961653B0A7C85D54EC0E0D90C7A5691E80E5';
wwv_flow_imp.g_varchar2_table(102) := '41E1368F570B0B6E668CD6BBB419D23DBA87280CEF7C38AAEB616F098523C140848ACA83DEFEFE404F2834D0B56953C082AA9BA6920C64D3A097860501F311100230BF0F440341C0340484004C835E1A1604CC474008C0FC3E100D0401D3101002300D7A';
wwv_flow_imp.g_varchar2_table(103) := '695810301F012100F3FB403410044C434008C034E8A56141C07C048400CCEF03D14010300D012100D3A097860501F311100230BF0F440341C0340484004C835E1A1604CC474008C0FC3E100D0401D3101002300D7A695810301F012100F3FB403410044C';
wwv_flow_imp.g_varchar2_table(104) := '434008C034E8A56141C07C048400CCEF03D14010300D012100D3A097860501F311100230BF0F440341C0340484004C835E1A1604CC474008C0FC3E100D0401D3101002300D7A695810301F012100F3FB403410044C434008C034E8A56141C07C048400CC';
wwv_flow_imp.g_varchar2_table(105) := 'EF03D14010300D012100D3A097860501F311F8FF80504EE2F8471A220000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8651638734604412)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDBD697064D795E77712C8C45E000A5B55A150FBBE7115F74D94A8D6D6922875DBAD566B3C31EE082F5FECF0';
wwv_flow_imp.g_varchar2_table(2) := '8423261C7638FCC9FE301176C4CCD8E1087BC60E7B5A527BA65B5BABD56AA945914552DC8A64156B5FB1145028A0500B6AC19209C0FFFBC0228B245EE64BBCCCC47BF97EB71B0249BCBCEFDEDFB9C03DF7DCB3A4EE7BE9370B4683000420000108402051';
wwv_flow_imp.g_varchar2_table(3) := '045228008992379385000420000108780450005808108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035';
wwv_flow_imp.g_varchar2_table(4) := '000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001';
wwv_flow_imp.g_varchar2_table(5) := '084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0';
wwv_flow_imp.g_varchar2_table(6) := '993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D2943000210800004500058031080000420008104';
wwv_flow_imp.g_varchar2_table(7) := '12400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D2943000210800004500058031080';
wwv_flow_imp.g_varchar2_table(8) := '00042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D2943000210800004';
wwv_flow_imp.g_varchar2_table(9) := '50005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D2943';
wwv_flow_imp.g_varchar2_table(10) := '00021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D09932042000010840000580350001084000021048200114';
wwv_flow_imp.g_varchar2_table(11) := '80040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D09932042000010840000580350001084000';
wwv_flow_imp.g_varchar2_table(12) := '02104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D09932042000010840000580';
wwv_flow_imp.g_varchar2_table(13) := '35000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D09932042000';
wwv_flow_imp.g_varchar2_table(14) := '01084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0';
wwv_flow_imp.g_varchar2_table(15) := 'D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D29430002108000045000580310800004200081';
wwv_flow_imp.g_varchar2_table(16) := '0412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D29430002108000045000580310';
wwv_flow_imp.g_varchar2_table(17) := '8000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D29430002108000';
wwv_flow_imp.g_varchar2_table(18) := '0450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D29';
wwv_flow_imp.g_varchar2_table(19) := '4300021080000450005803108000042000810412400148A0D0993204200001084000058035000108400002104820011480040A9D294300021080000450005803108000042000810412400148A0D09932042000010840000580350081B813989FB7F9D959';
wwv_flow_imp.g_varchar2_table(20) := '5BC8E56C616EDE6C7ECE16F4DF4C5F8BFFAEEF77FFDD7D5FF8F0BFEBBBD7523596AAAD59FC5EA3EFFAFAE8BBFBEF1FFD7BADF75C2A9DB69ABA3AEFBFD3200081F812400188AFEC1879B5135858B867239FFB7043D7E6EE6DF4FAAE2FCB2D7E5FD0A66FF3';
wwv_flow_imp.g_varchar2_table(21) := '7ADEFDB7BB1B7BA9F9788A42AD36FE941404A70CE89FD3FA2E852055AB2FF7CFDECF3FA548A452A51E09FD410002252080025002887401819211D0A6EF4EF3F3D3D3363F35650B33FAE76CD6DBFCB5B397EC3565ED481BBEB320A4D2194BD5D7594D63A3';
wwv_flow_imp.g_varchar2_table(22) := 'D534342C5A0D5006CA8A9ECE21500C0114806268F12C044A4CC09DE6E76766B4D96BC39F5EDCF0BDD3BCB7D7C764C32FC8441600F7FFCE6A505F6FB54D8DFA2E8540CA81B31ED020008195218002B032DC796B52097C785FEF36FD85696DFC6EF3D757D9';
wwv_flow_imp.g_varchar2_table(23) := 'CCF651E5ACEB841A2903EE2BD5B0F81DBF82A80A8B71552B0114806A952CF38A0E0199F5E76EDFB6B99BB716CDFA3999F4699F21E0AE0CDC7541EDAA5556DBDCC475016B0402652680025066C0749F4C02CE19CFDDE3CFDDBC69F3DAFC3D6FFCAA31E997';
wwv_flow_imp.g_varchar2_table(24) := '59A69E0F41ADD5480970CA80F31FF09C0B691080404909A0009414279D259D80E7C0E74EFBFA72F7FA9535ED7FE86D7FAFA3DD271CF0B5B14A4029FDBC469EFCB51F3E37E71C0F154130AFEF8BED1EDF838FFE51FF70EF3F574AD0EEAAA0B1C16A5B5A64';
wwv_flow_imp.g_varchar2_table(25) := '1568B6542653A937F31E08543D011480AA1731132C37810579E9CFDDBA65B91B376C410A40255B7343A3356B636CD029B959E6F38C36C8B44ECB69C5EB67B47966E48D5FAF7FAFD1777786AE75DEF9EE84BD843D625EFE094E1958FCD23F4B29C8EABF79';
wwv_flow_imp.g_varchar2_table(26) := '5FB268CCCEE56C46F39B9A9AB129392C4EEB3AE3D6D49D4A4ED7528A2448B7B5790A01CA4045D1F3B22A248002508542654AE527E012EB3827BEB95B37F52513BFBCF94B6DE2779B74ADE2EBEBB4A96714635F57576F8D72966BD289B8B94E5FF2A26F90';
wwv_flow_imp.g_varchar2_table(27) := '177DBD7EDEA4EF6EB3AF447396821B52046635E729293FD3FABA2347C69B77EE78DFE7E4E330ABFF96755F2E2F41C99B1418CDB77695AC024E11708E84159A7BC9A742871058410228002B089F57C790803B1DBBD3FED56BF2DE9789BF0CAD5ECE706BDA';
wwv_flow_imp.g_varchar2_table(28) := '5AADB7BDC33AB5C9B5E8649F76C976E212432F466EF3BF250BC1E8E44D1BB97ED5C6F53D270B42399AF31148AF5EED2903E419280761FAAC56022800D52A59E6555202CECC9F9B9CB43967E6F74EFBA569EED4BEAAA9D956CBD9AD6B55AB75B7AEB2269D';
wwv_flow_imp.g_varchar2_table(29) := '68D3FAEF3571D9F00BA07016835959026E4821B82AE5E9AA1C23AFE9EBFAED5BA581F8612FEE4AC0BB1E104BAE074A8A96CEAA94000A40950A96699586C0BC12F3CCDDB82EA7BE3BB6900D7FBFEF4CD58DBAC75EADD36A675BBB75EAFEBE4D27FCE68C92';
wwv_flow_imp.g_varchar2_table(30) := 'E2C8312F092DA7EB933BBA42700AC1849C25C7C577528AC1B4AB67F09123E2F249A4C4D28511A6DBDB3D9F011A0420B0340114005606049620E04EF9B96BD72C77FDBAAEF6C367E473616DBDDD5DB67DCD5A5BA793BE73D2A37D4CC0590886276FD8F9CB';
wwv_flow_imp.g_varchar2_table(31) := '97EDD2F895D2444FC80932DDB17A5111208C90E50681CF104001605140E02E01170EA753A9F3E6778E7DE142F852562F537EF7EA76DBD8D969EB74DA6F7005739271C85FF69A72BAD66476C62E4906C313576DE2FA359B0D1B592145C0390CBAEB01E72F';
wwv_flow_imp.g_varchar2_table(32) := '8010962D1E3E5865045000AA4CA04C6779045C3ADEDC3599FA658A76E57497DB6AB4D9B4E984BFAEABD3FAE498B6DA85E6E1A1BE2C9CB3BA2AB8AA2B82A16B576D687CDCA6EE288B62884A87CE0A50A3AB17671170A9876910483A011480A4AF8084CFDF';
wwv_flow_imp.g_varchar2_table(33) := '65ECCB6A739993977A9830BE8C4E961BD7ACB12D5DDDD6D3D454350E7C51591E39990646A50C9C1B1FB391B1319B73F51396DD525202DA2CDDD545F8E0B219F2C16A208002500D52640EC513D086E2BCFADD3DFFB293F7E8B4BFA6B3C3B6AD5D67BDADAD';
wwv_flow_imp.g_varchar2_table(34) := '5E4C3EADBC049C3786CB3F30A82B82B3A3A33621EBC062A9E4E25B8D2A127AE183BA1EE05AA0787E7C22FE045000E22F436650240117D2971DD3A95F27CAE59CFA9D277F87CCC8DB7B7B6D43FB6A6BC0C45FA4044AF3F894731C5404C1A9E161BB2E67CD';
wwv_flow_imp.g_varchar2_table(35) := 'E545102825B2C2063372D0A4347169E4422FF1218002101F5931D290045CF6BE9C1CCB72DA3496756A94277FB7368A3DBDEBAD4F77C9D512A71F12EB8A7FDCE519E8BF3969278747ECEAC4C4F27C38245B670DC8C869537993577C4E0C00029520800250';
wwv_flow_imp.g_varchar2_table(36) := '09CABC63C509CCC9DC9FD5E6BF9C58FE8CE2CAFBD6ADB55D3D6BAC434E7D6CFC2B2ECE2507E0220846955CE8B47C0486753D305F74D965A51856DE808CAE759C558006816A27800250ED124EF8FCBC53BFE2CABD537F91AD46617B1BD6ADF362F7D7CAB1';
wwv_flow_imp.g_varchar2_table(37) := '8F10BE2201AED0E35915311A5791A2A3C3176D5CCA805B03C536CF1A202741845E2C399E8F1301148038498BB11645C085F465AF5C29DAC92FA58DBF5D617CF76FD8687DDAF869F124E01C062FCACFE3FDA141BB71A5F8AB81948A2F3925A0B6A5399E00';
wwv_flow_imp.g_varchar2_table(38) := '1835040A1040016089541F019D00734A20939587BF15558D2E65ABE4DC7760E306DBA8C43D698EFC55B1365C79E3D3F20D387E71C8A68A0CF774B903D21D1D5EEE00AC0155B11C98C43D045000580E5545C0C5F5CFBAFB5FCFC33F78ABD53DFFF64D9B6C';
wwv_flow_imp.g_varchar2_table(39) := 'AFEEF99B557A97567D04269451F0D4D8651B1C1CB25C91FE01B5CD2D9659BB8694C2D5B72C123D231480448BBFBA26EFC2FAB29775E75BC41F7777C2EBD6A67F60FD7A5B87B9BFBA16C412B3718E82C35A27878706EC9A9C428BC9FA985299E63A290135';
wwv_flow_imp.g_varchar2_table(40) := 'AC93AA5F274999200A4052245DCDF374497D64EECFBA7B5E0B5EB8A755B9E10F6CDA6C9B5C8E78CCFDD5BC423E33379759F0BCD6CCD1817EBBA3D2C4819BD689F30BE04A2030311E8C30011480080B87A11526E092FACC8E5E56119F3B851FFEF0897A65';
wwv_flow_imp.g_varchar2_table(41) := '80DBBA71A3EDEEE9B166AAC405E6568D0FDED695D17155203C3B30607345947BF6AE04D6F4903CA81A174582E6840290206157DB543D2F7FE5F1774A40B096B2AEEE6E7B509BFF9A663CBB83314BC653176FDDB477A5044CBA6B818056242F6780D6532D';
wwv_flow_imp.g_varchar2_table(42) := '6B29198BA40A6789025085424DC29472D76FC8E43F1E38A39F4BDFBB6BF3667B707D9FD562EE4FC212297A8EAEFAE07B172FDA99C181C0EBCA9441D0F905D42A33240D0271238002103789315E2FB63F77D59DD482B566996BEFDBBEDDB6EAAE3F15EC23';
wwv_flow_imp.g_varchar2_table(43) := '3C9550022E64F082B246BE77FAB4CD1471ADE4F905285C900681381140018893B418ABE7E51F3CAB5FCA3A94D6F5F16DDBAD43E57A6910084AE0F29D3BF6E6B97336E9724904BA12702586DB2DD3D31DF4153C078115278002B0E22260008108E864363B';
wwv_flow_imp.g_varchar2_table(44) := '724915FC6E057ADC1574D9BB759B3DA054BE78F80743C6539F24E0AE043EB8346227CE9F970E102CBAA47655ABD5A96E040D0271208002100729257C8CC57AFA37A990CB633B765AAF4CFF5CF7277CF1849CBEAB347876F2861D951210345C90088190D0';
wwv_flow_imp.g_varchar2_table(45) := 'F978C508A000540C352F5A0E8179656F9BBD74C9166666027DBC7BCD1A7B62CB566B9587360D02A522303E3D6DEFF45FB00915170AD26A74E59459BBD66A58874170F1CC0A1140015821F0BCB6308179DDC3CE68F30F9ACF7FE7E62DF650DF064BD7E0EA';
wwv_flow_imp.g_varchar2_table(46) := '57982E4F144BC0250F7AF542BF5DBC3818ECA3CA3151DFDB6B352A214D83401409A00044512A8C49C57CAE5B4E055C5C6EFF42ADC685F86DDD6AF7AFEBA5804F2158FC3C14017725F0CEC8B09D0EE817904AA7172B0AB6B6867A2F1F86403908A0009483';
wwv_flow_imp.g_varchar2_table(47) := '2A7D862290BBA1187F676A0DE07895561CF6FD3B7728AB9F0AB5847A2B1F86407002EFCB3275F4CC197D20807360AA663157807C5368108812011480284983B128BEDFE5F4BF12E80F6B46F7AB4FEDDD6B7DAD6D908340C5099C5388E05B274F28857080';
wwv_flow_imp.g_varchar2_table(48) := '4C94AE8640778F420559AB1517142FF4258002C0E2880C0197DAD7E5F50F52A1ADA5A9D99EDABDDBBAC9C01619F92571200337AEDBA153A7EDCEF454E1E9CB27A04E8E81A40E2E8C8A272A430005A0329C794B0102F3535336333C1C28056BBBC2FB1ED7';
wwv_flow_imp.g_varchar2_table(49) := 'C9BF0BE72AD65504085C5679E183C78ED974102540FE2AF57D7DE6A204681058690228002B2D01DEAF4A7E530AF51BB5855C61536AC7EAD5F6FCAEDDD64878152B2742042615A6FAF2A9937643CEAB855A2A536775BD4A50555F5FE8517E0E81B2124001';
wwv_flow_imp.g_varchar2_table(50) := '282B5E3A2F44602197B3998BC3B6305B38CE7FA3EE509FDAB9D36A29E15B082B3F5F01024E0978E7DC591BF17C58F2376701A85BBFDE52ACE542A8F8791909A00094112E5D1720202FFFE981C1C09BFF93BB7629C6BF06AC10882C813B52685F3B79D22E';
wwv_flow_imp.g_varchar2_table(51) := '5F9D283846A704D46FD860A4AB2C888A07CA440005A04C60E9363F8105E559CFCAEC1F24B7BF33FB7F79EF3E4EFE2CAA5810C84A09F8B5A203AE06A85859DBB2CA0B1174B52B6810A8340114804A13E77D1E81D9E191409BFF6AFD81FCC2FEFDDCF9B36E';
wwv_flow_imp.g_varchar2_table(52) := '6245E09A5207BF7EFCB85DBB75B3E0B85D7E803A15ADA241A0D20450002A4D9CF7D9ECE5CB36A7643F855A7B538B3DBD7F9FB5E3315D08153F8F208171A5B27EF98323361DA08E455A56AE4C37A5842328C6AA1E120A40558B377A9373497E72014CA38D';
wwv_flow_imp.g_varchar2_table(53) := '75F5F6A50307ACB5B9397A93604410084860ECE64DFB07290173BA1628D4329D5D96EEEC28F4183F8740C908A000940C251D1522E025FA1951719F02E9531BD219FBBC36FF2E52A71642CACF6340A05F1903DF509E80DC7C81BA16CA1658AFC8809AA6A6';
wwv_flow_imp.g_varchar2_table(54) := '18CC8A2156030114806A90620CE6B0A074A93383F2F82F50DC27A3B0A8C776EFB1CD9D9D3198154384403002A7C7C79436F864C1FA162929BFF51B37982B22448340B909A000949B30FD7BD9FDBC7B7F99430B35B7F9EFE8E929F4183F8740EC089CD0EF';
wwv_flow_imp.g_varchar2_table(55) := 'C021250B2AD46ADBDAACCEFD0EC8224083403909A00094932E7D7B04DC9DFF62819FFCEDFE6DDB6C5FAF4CA0FCE12B848A9FC794C0EFFBFBEDDCE040C1D167D6ACB1B414011A04CA490005A09C74E9DBE6E5093D33325230C7FF5AFDC17B7EE72EAB65F3';
wwv_flow_imp.g_varchar2_table(56) := '67D55431815959C30EAA8CF0A5CBA3F967A9AB309724A88694D755BC1A567E6A28002B2F83AA1D8197E67770A8608EFF16C5FABFA058FF16FED855ED5A60621F13B8AEB0C05F2B326046CA71BE46BA60564DB909A000949B7082FB9F1D55A6BFC9C90204';
wwv_flow_imp.g_varchar2_table(57) := '52F685871EB25ECAFA2678A5246FEAFD2A1AF4DA91238A8759C83B79F203246F6D5472C6280095A49DA077E514FA941D77F7FEF9FFC0DDBF6DBBED77455112C486A942406530EC8D810BF20718CC0F2355E325084AB7E30FC0AA293D011480D2334D7C8F';
wwv_flow_imp.g_varchar2_table(58) := '4143FEBA3B3AED0FF6EDC7D939F12B269900B2F207F8F50747EDEA8D6B7901B890C0FA8D1B090D4CE63229EBAC5100CA8A37819DEB68E392FD142AF2D3DADC62CFEBDE7F1535D113B84898F25D02D7A6A6ECD7870FDB6C8172D8B5AB5A552F602DE02050';
wwv_flow_imp.g_varchar2_table(59) := '5202280025C54967B9EB372C3B76392F889A9A5A7BFABE03B6B115B3262B060283F2073818C01F80D040D64AA909A000949A6882FB7359FE660694ED2F97CD432165F76FDD6A07FAFA124C8AA943E093047E7FFE9C9DBB7831FF5540C66509D455804204';
wwv_flow_imp.g_varchar2_table(60) := '691028050114805250A40F8F40766CDC72D7F3DF67F67675DBF3CAF697AAC1ED8F650381BB04A61532FB8AB2048E4D4CE48592EEE8B04C5717E020501202280025C148272EE67FFA42BF9CFEE77D6134D73778F7FEED54F863C140E033042EDD9CB457E4';
wwv_flow_imp.g_varchar2_table(61) := '1498CD6741ABA9B186CD9B710864FD9484000A40493026BC137933BB6C7F2EEB5FBEF6F0CE9DB667EDBA84C362FA10F027F0817E8F0E9F3D931751AD1C68EB7AF57B44D64C9652480228002101F271E5FABF765D31FF637951F4B4B7DBE7F71FB03A9D60';
wwv_flow_imp.g_varchar2_table(62) := '681080C0D204E61445F3F3F7DEB55B2A9DEDDF52B6E810D80A460884228002100A1F1FF61CFF5CBADFECAC2F8C9492997CE9BEFBAC87E2262C18081424704E85B3DE387942B769FED76935BA4EABEB53022D1C020BF2E4813CAAE47D2FFD267FAA36E841';
wwv_flow_imp.g_varchar2_table(63) := '200F8120E97E37CAECFFACCCFF340840A030810559017E73FCB85D9EC85F411387C0C22C79223F012C00AC906513989F9ED6E93F7F2AD3BA74C6BEAA5CFFAB1A1A96FD1E3E0881A41198903FCDAFDE3D64F379AC0072025058A02A06F2BB95B4E551B2F9';
wwv_flow_imp.g_varchar2_table(64) := 'A200940C65C23A7219FF2E29E35FDEBB4A3397EBFF8072FDD320500E02CE7C995504CAADD9599B9C9AB6C9E9299BD13FCFCA937E2E37E7F9C9A5954A372345B44171F42D8D4DD6AA0DB3B94E31F5FAEF516D6E5E478787EDF0B9B3798758AB4A9A5E8640';
wwv_flow_imp.g_varchar2_table(65) := '1C02A32ACA488F0B0520D2E289EEE0E66EDE3467FE3757D5C4A7AD6D5F6DCF29EC2F83E35F740519E391CD6AA33FABFBF24BCAA47759C5A7E6E77281669351D9E9EEB6765BBFBADDFAB4469B5D3AEA086EA0B3F2AFF9F9FBEFD9D4EDDBFEF3927F8D8B08';
wwv_flow_imp.g_varchar2_table(66) := 'A825B43690EC79E8930450005811CB22E01CFFE675DAF26B9EE3DF0139FE51C56C597CF9903F01671E3F3D7AC9862E5FB6D96CBEAC938529A66BD3B665DD3ADBD7DB6B2D1134A59F5545CD374F1E979EEDAF68D734355BBD1C0269102896000A40B1C478';
wwv_flow_imp.g_varchar2_table(67) := 'DEE655C06466C8A52DF5FFA3B479DD7A7B6AFBF6281EAC90604C09B813F1295D3B9D181A0CBDF17F1A41B3AC02BB366EB21D0AAFCB44C8B3DEFD86BD72EA94941D59DBFCD56D2507DA6429CD8106816208A00014438B673D93BF97F4278F59B25EA7AAAF';
wwv_flow_imp.g_varchar2_table(68) := '3FF28835F10789155322025332F7BF7EFA8C5DBA9ADF333EECEBB6AE59670F6DD96C0D115ABB63B278FCF6DD772D373FE73B3DAA0586957C323F8F02904CB92F7BD68BA7FFA1BC9F7F4027A9FD4A574A834029088CCAD1F4F51327ECCE54FE4C93A57897';
wwv_flow_imp.g_varchar2_table(69) := 'EBA34599F69ED9BDDB3A2372AF3E2FA5FBDD73E7ECE4C8705E2B40FDA68D564379ED522D8344F48302900831976E92B397466D4E39CBFD5A535DBD7D51497FDA9A9A4AF7527A4A2C817E39F71D52911C6701A864731103CF3A1F9696964ABED6F75D3764';
wwv_flow_imp.g_varchar2_table(70) := '71FBC57BEF292CD0DF0A90964363A6A73B12E36510F1208002100F394562942EEE7F56A1492EFB9F5FDBB761A33DB8654B24C6CB20E24DE0E28D1BF6DA5115C709E8DDFFF16C15FBE7159BBC5B715237E99EBB4A7139CFDA1462F7F97DFB6C55444ED52F';
wwv_flow_imp.g_varchar2_table(71) := '9F3C694363977D859A52A863DDFA5EAC00F15EF6151D3D0A404571C7FB65B3A3976D6EF286EF246AE4F9FFCD871FB6164EFFF1167404463FA4D0BE83DAFCF39D783F39CC946DEEECB0AFECDC6D4FF7AEB7B58D8DD6FDE1C63D3E336397747D7070F8A2FD';
wwv_flow_imp.g_varchar2_table(72) := 'EAD4691BB896BFE4EEBDFD767776DA0B7BF65A6D04425947A510BD74E488CDE5A9B89956CD8D4C4F4F0424C810E2400005200E528AC0188394FBDDD8DD63CFECDA6DA99ABB27AF080C9C21C48E8033FBBFAD5CF8338142FC52B665CD5AFBEF9E7CD29ED1';
wwv_flow_imp.g_varchar2_table(73) := 'FA0BD25E9247FDFFF8FA6B3650A080D5625F29DBBF6D9B3D108164560BF30BF6D289633632914781A9A9B5862D2A171CA148862032E19995218002B032DC63F7D6DCC455CBE6C94D9ED609E94B0F3C689D11B9338D1D6006EC1118D2E6FF7B99BA67F314';
wwv_flow_imp.g_varchar2_table(74) := '97FA08952C4EFFF4B9CFDB7FB673D7B2E8FD4B6DA6FFF2E02B053F9BAA49DB371E7DC45A2310193070F5AABD7AEC68DEBC00192942692539A241A0100114804284F8B92AFD65172BFEE5B98B5D2F07A4E70F1C8864463544180F0283DAFC5F55119C2019';
wwv_flow_imp.g_varchar2_table(75) := 'FD3A94D2F77FFBC36FD843AB3B424DEE8DF171FB2FFEEE17765DD12DFE2D65DB366CB0C7376F59F1BC1633F2BF7959D70063791C71537260ACD77853114E751C4A687CB8640450004A86B27A3BCAE93E363B36967782CFEDDD6F1BBA3AAB1702332B2B81';
wwv_flow_imp.g_varchar2_table(76) := 'F33AD91E3A7DCACBE35FA875C8C7E487DFFE23DBA270BD52B4A3523CBEFBD7FFCE5CA221BFD6A0E896E71F78C03A23902D70504ACB2B278EE79D7ADDDAB556DBDA5A0A3CF451C5045000AA58B8A59ADA8C3CFFF325FE59DFD1694FEFD913A90C6AA59A3B';
wwv_flow_imp.g_varchar2_table(77) := 'FD949FC0C5EBCEECEF36FF99822F73B1F93F78F13B25DBFCEFBEF0C7FD17EC9FFDFDDFE57DFF9E2D5BED619DAC57BAB9E2473F5348E0549EBC08B5AB5C91A0752B3D54DE1F710228001117D04A0F6F31F46F24AFF9FF5979496FEC26FE78A56515C7F75F';
wwv_flow_imp.g_varchar2_table(78) := 'D4E9FBA01CFEE60238FC7927FF1775F22F939FC9F77EF937F64E9E24578D523EFEE8E1CF4502F31145341C517220BFE6CCFFF57D7DA4078E84B4A23B081480E8CA261223CBAA1849EEDA55DFB16494F6F745A5FDAD8F80835424803188C004CECBB1F4D0';
wwv_flow_imp.g_varchar2_table(79) := 'D9D336A330BD42CDDDF97B66FF326DFEEEFDC76489F8F6FFF723DFA1D4CAC3FE1B8F3E6A2D1158EB77C4EC17870ED98CCA1E2FDD529656086346A1913408F82A8AF7BDF49BE2B263C0323904948274BABFDF7302F46B3BD6F7D9635BB7E2FC979C555192';
wwv_flow_imp.g_varchar2_table(80) := '990EEACEFFCD330137FF329FFCEF9DD01FFFE2E7E64ED74BB59442021FDFBBD7B67575958441D84E5E397DDA065515D1F78FBBFC165C91201A0450005803451398D729636660C0FF44A430AC2FCA31AA47F78D34080425E042FD5E8D88D9FFD363FE570A';
wwv_flow_imp.g_varchar2_table(81) := 'B1FB17AF1DF43D556FDBB8C11ED9B4D9D2A995CF75E19225BDA28880853C190E1B9495D34505D020B0A4528B058085E147202B136D2E4FEC7F87BCB0BFFAD0430A8D5AF93F8648311E04FA95C4E6EDB3678299FD2B78F2BF4BEFA5D151FB4F7FF6635F98';
wwv_flow_imp.g_varchar2_table(82) := 'BDCAB2F7B4F20ED4452033E01D3903FEEEF011BB7AFBA6EF7833B256A43BB80688C76F47E547890F40E599C7E28D2EF39F73FE9B9F99F61DEF9EBE8DF6F056F2FEC742A01118A43BF9BFA950BFE92077FE2BB0F93B44C7956EF7C5BFFC812FAD8ED676FB';
wwv_flow_imp.g_varchar2_table(83) := 'C281FDD610914C7BEF5FB8604787067DC75BD3D06875BDEBC8091081F51FC521A00044512A1118D3DCCD9BE62AFF345179CE0000200049444154F91550A99397F1732A94B2A68D8C63111057E487E042FD0E1E97B7BFAFD3DAC753E8686A96B7BF42FDCA';
wwv_flow_imp.g_varchar2_table(84) := 'E8F0E707ECAA42111FFFBFFF8D2FCF26D518F883071FB2968824D91997C2F2AB2387F56BEAE3CAA56B3AA700D446A4B471E4176AC2068802903081079DEEECC888CDA90EBB5F5BDFD96D4FED9229345D1BB44B9E4B28810B72F87BFBD4A940E97D5772F3';
wwv_flow_imp.g_varchar2_table(85) := '77E2B92187D747FEAF7FEDABF8B6281AE10F1E7CD09A22A200E464A9FBE9E1C33675DBFF77D525047289816810F834011400D6C46709CCCFDB944C8B962733DA13BB77DBB69E35D083405E02030A21759BFF74A00C7F2B77F2BF3B89B3B27C7DED87FFD6';
wwv_flow_imp.g_varchar2_table(86) := '774E1DAD6DBA023810992B0037D0F72E0ED9B1F3E77DC79C52A86E83BBAAC35787DFD64F11400160497C86C0DCEDDBE62C007E6645E7F4F79DC71EB7C608C44323BEE812189197FAEF8E1D0B96DB7F05CDFEF712FCBDD2ECFEE31FFF7B5FA87D72027C72';
wwv_flow_imp.g_varchar2_table(87) := 'C74EAB8B880F801BE83525EBFAD53B6F5B4E8AFB924DBFAF2E29508DAE2F6810B897000A00EBE133045CDE7F97FFDFAFAD6BEFF01CA1F0FE67F1F81170257DDF3A71C26603DDF99737C35F3152FADF9563FF7F3EF8B2CF4752B6B36F833DBC65B3D546E9';
wwv_flow_imp.g_varchar2_table(88) := '34ADFBFFBF971FC098FC01FC9A8B047011013408A000B006FC09E814313D38680B3E265B970CE5A93DBB6D73C0DAEBA04E1E8101298F6F69239D0994DE77E5CDFEF74AE81B3FFB899DF249AEE3D6FEA3AA79B1238269AF3F50F2A2C3795203D7A88891AB';
wwv_flow_imp.g_varchar2_table(89) := '10C83540F27E1FF3CD180B00EBE11304DCC63FDDEF92FF2CED555C9FA9B33F7CF861CCFFAC9B25090C4F4EDACB1F1C91D9DFBFB2DEDD0F963BB77FB1227A4B392FBEFFD77FA5A5BFB429BD46B1FF5F7DE4515B5D5F5F6CD7657F7EF4D66D3B28EE3359BF';
wwv_flow_imp.g_varchar2_table(90) := '6A8A296B90E582A440651745AC5E8002102B71957FB0CEF3DFBBFFF769CE09EA6BCAFE4783C0A70938B3FF9B32FB676366F6BF3B8F3FFCE98FEDF46517FABA746B6B59657FA810C02859FFEF8EF48E14AE5795C5702CCFD55D9DD276D73637B17021F011';
wwv_flow_imp.g_varchar2_table(91) := '01140016C3270864E50495D31F72BFE6E5FEDFB60D6A10F80481416D3C6F2ABDEF4C106FFF0A14F629563CFF87C6FECF5F7177FFFEA551F66EDE620F6DDC586CD7157BFED0F97376E2E2D2750CDC20D22ADB9DE9EAACD8787851F409A000445F46951BA1';
wwv_flow_imp.g_varchar2_table(92) := '9C896686876DFECE9D25DF59A3A3CF13BBF7D89608DE81560E126FFA348111399FBDA2D3A78B492FD4A266F677E37D47E989BFFFE3BFB2F979FF6B8B265D7D7D41F1FFEDBA4B8F6AEB97F2FEAA7C2FFC5A8D9201D5AF5F1FD5E133AE15208002B002D0A3';
wwv_flow_imp.g_varchar2_table(93) := 'FACAF9A92965FFBB642E0DF0526D95D28A3EBB6FBFADC68C185511567C5C1714E7FF96E2FCB3014FFE3FF8F6776CAB4CE95169E775E5F53D99FEAFE649A4E3C67ABF0A001DD814EDCA7AB7F4FBFB1395089603C6927853E98C9715D03904D220E008A000';
wwv_flow_imp.g_varchar2_table(94) := 'B00E3E22E04CFFD9F12BFAF7A5CDA01B1446F4ECAEDD968A500C34E25B3902FD57AFD93B6702E6F68FA0D9BF5F9BFE777F5278F36F5459DDAFE8F4DF1C41E7BF7BA55F382B60CA326B7A2CDDD6B6728B8637478A000A40A4C4B1B283991DB9A4F4BFFE95';
wwv_flow_imp.g_varchar2_table(95) := 'C5EEDFB2D50EB850225AE2090CDFB8EEE5F6CFF97A9D7F8CA823AA9BBF3BF9E74977BD3883943DB673A7ED88412A5D570EE035F901F42B24D0AF911638F1BFBA9F008002C07AF888C0F4857E5BC8F307FD0BF7DD6FBDED14FF49FA921990A5E80DCFEC3F';
wwv_flow_imp.g_varchar2_table(96) := '5310456437FF00277F37B90D6BD6CAEAB54B6A403CDAD92B13CAC1A0EC8B3EC58152B266346C8EF655463C4857C7285100AA438EA167B1A0A42D5EFCBF4F0CB44B82F2ADC71FB716D2FF86661DE70EDCE6FFCE993336353D55701A71DFFC7BE435FFA436';
wwv_flow_imp.g_varchar2_table(97) := 'FF964CA6E05CA3F2C04D955AFEE53BEFD8EC9C8F43A67219346CD9C2355E5404B6C2E3400158610144E5F585CAFF7634B7D897750F5AAB3F20B464121856A8DFABA74E5A569B4CA1E655F593C3DF16AD9BA8B4A077FE6EBC6DAB5AEDF3CAFAB72A660E73';
wwv_flow_imp.g_varchar2_table(98) := '0B3AF9FFFCD03B36E913C9E3AE34EAFBD65B4D13F900A2B22E57721C28002B493F2AEFD61F8DAC42A1722ADBEAD7F66ED8680FBA934354C6CC382A4AC039FCBD71FAA4E58278FB6B73F9E18B7F645B5AA2B4F9DF96C3DF5F17F4F677503B543EF7D95D7B';
wwv_flow_imp.g_varchar2_table(99) := 'ACA5319EDEF2AF9E3E65FDA3FE098DBCBA009DCA0710C58C46155DD5BC0C05803520ABFFBC65F507C365015CAAB914A8CFECD96B1BDC1F0D5AE208B850BF43A7CFD8F4CC74C1B94731CE7FF1E4EF36FFDB05C7DF250FF9C754ED6F758C4FC8C794C9F3BD';
wwv_flow_imp.g_varchar2_table(100) := 'B36735D7A5A3796A57ADB2BA352AE58D35AFE07AA8F6075000AA5DC201E6E7E2FE67862EFA3A00D6BB30A8FBEFB75594130D40B3BA1E71497E0EBAF4BE411CFE227BF2FFAB409B7FABF2133CBB7BB7B5C778F377AB6F48111A2F1F3D6AE6538F21A57046';
wwv_flow_imp.g_varchar2_table(101) := '971028954E57D762653645134001281A59F57D605E66DD9901E700B8F489A149615CDF7CE8214B13FF5F7DC2CF3323E7F0F7FB9332FB0709F57377FE2FEACE3F6266FF3F5186BF6B770A9FFCDB742AFEBCB25C5683923B3E3D6D2F1F3962D37E8E9A2939';
wwv_flow_imp.g_varchar2_table(102) := '022AA951AA2E3ECE8D89FAC5ABE06451002A083BAAAF7219006786867C87B75A0580BE4E01A0A88AAF2CE35A34FB9F96D93FA0C35F8C37FF4E99FD1F8FB9D9FFDE45705316BDD78F1FB7F1EBFE353DEA55D3808C8065F9D58955A72800B1125779065BA8';
wwv_flow_imp.g_varchar2_table(103) := '02E0FAEE1E7B5E1ED1B464101896D9FF356D20B3313EF97FF727C1CCFEED32FB3F5D0566FF7B57664E96BC37A4BCF5E7A96C58A72B805AD506A0259B000A40B2E5EFCD3E270FEFEC95715F12DBFBFAECF1AD54004CC2521950A8DFEBC78FD95CA0C23EF1';
wwv_flow_imp.g_varchar2_table(104) := '36FBB7B7B4DAF37BF75873CC42FD82ACC377FBFBEDF8A0AEF57C5A4605BDD2AB5707E98A67AA98000A40150B37E8D4B2636396CB5347FC81EDDB6D7F2F55C482F28CEB7303721E7B4BE97D67029DFCA31AEA17ECE4DFA13B7F57D97275953AB69E5651AF';
wwv_flow_imp.g_varchar2_table(105) := 'B7CE9CF65D8AE9F6D596E9E98EEB5265DC2522800250229071EEC65500748980FCDA53FB0FD816C50ED3AA97C0C8E4A4BD2ACFF1D95CB6E024A31AEAF7270AF5BB1620D4AF4DC9899EDEBBB76A377F27C04B72E0FC870F8EF8CAD20B055CB7AEA0AC79A0';
wwv_flow_imp.g_varchar2_table(106) := 'BA09A00054B77C0BCECEE500981D1EB1F9A93B4B3EDBA850A1A70F1CB035CA8C46AB4E0283BAF37FF5E807AA22BB7419D97B671DD5CD3F48553F378F558A567841EB39EA95FDC2AEB41B52845C4640BFE63201D6F7F6920B202CE8987F1E0520E6020C3B';
wwv_flow_imp.g_varchar2_table(107) := 'FC79850CCD2A09D0824F86B72E390A3DB9779FB556A9A9342CBFB87FFE82AE7EDE519C7F7CCDFEC193FC3887BF27E4CCDA9980B57C47D11B3F7EE76D5BC8930BA06EED3AABA9AF8BFB1266FC2108A0008480570D1F75A6FFECD8B8FE502C5D3C645357B7';
wwv_flow_imp.g_varchar2_table(108) := '3DA172A8E984240D71A910E69541CD65447079D55D4B2965AAAB80E00A225553F6D48B32FB3B87BFD9A0E97DBFADF4BE31CDEDEF4EFE4FC9ECDF15F3243F41FFE6CCA8B8D72F740570C727BB672A9D910F408FD5B61009109469353E8702508D522D624E';
wwv_flow_imp.g_varchar2_table(109) := '39DD1566C7FD2300F66CD8600F6DDA6CA92A4E1B7A5BA7A42BD33376F9E6A45DD71FCC6965BD9BD1BFE7741FEE9480B42A20362A1B627D43BD75E814B94E71E3AB5521AE29C689915CB6B8578F1D97B77FC03BFF186FFECD4A64F5C503F759ABE4979496';
wwv_flow_imp.g_varchar2_table(110) := 'D39A7E494E8097E5E0EBD7324A079CD65AA62597000A407265EFCD3C7BE54ADE22400F6DDF617BDD5D6195B5AC7C1FC694006970E28A8D4E5CD5863F65B9B9791DFFF3DC832B839A330164D2B5D6A093E43A39466E5CDD615DDA60D235F12993D4EF4AFA';
wwv_flow_imp.g_varchar2_table(111) := 'AA604CB0243FF2F68FDCE6AFC23E3F556E7F9FD3EDBD4BB54D99099DB77F524EFE77E73EE772010CF4DB85C1417F05A0ABCB5C61205A7209A0002457F68B0A40DE10C0947767BA4D31C3D5D29C55FFB21C1E8F0D5FB4D1F12BE6EA20F8154D0932E71A99';
wwv_flow_imp.g_varchar2_table(112) := '52D7EA24B55F1ED5DD5204A27E4570510E7F2EBDEF4CD0C23E91DBFC75E7FFD31F07DAFC5D6EFF2776EDB2EE0426BC710AC0E14B2376FCEC39DFF59D96F29AE9EE0AB2CC79A64A09A00054A960834E6B76F4B2CD4DDEF0793C65CFECDF6F9BAAE49430AD';
wwv_flow_imp.g_varchar2_table(113) := 'CDFE8D81411B1E93D36336DCC6FF6960A9DAB46D9012F0F8E6CD5617D1EB9241A5867DEDE4299B0B54D847497EBEADDCFE51BBF30FB8F9B734B5D8F3FBF65A5B021CFE96FAE59D9702707C7CCC0E4BDE8B1E2D9F6DE9B676CBACE909FAA782E7AA90000A';
wwv_flow_imp.g_varchar2_table(114) := '40150AB59829CD5E521960DD7D2FDD52F6F9FBEEB3BEF6F662BA8CE4B3D7E415FD86EE442794F530CC893FFFE452D6A3B4C98F6DDB6A6DF21B88523B2FB3FF21CD7F46511F859A17EA17B993BFCCFE5E49DFA54B56DF3BA77685AC3E29C7D58E049EFCEF';
wwv_flow_imp.g_varchar2_table(115) := '72700AC0695DEFBD276BCFDC82AEB69668B5E254B76E6DA1E5C0CFAB98000A40150B37C8D46686876DDE37794ACA5E5011A0B5ADF1CE017059F37B5327A1C9DBFEC98E82B00AFA4CBBB2AC3DB66DBB4CCF4D413F52D6E73CB3FFA9539E9F43A1D6E1AAFA';
wwv_flow_imp.g_varchar2_table(116) := '45F1E4FF1399FD036CFEAB74E7FFE4AEDD8934FB7F5AB667AF4ED8DBCAEC38E7E3D752AB2B92BA5E920115FA9DA8E69FA30054B37403CCCD550174D500976CBAD0FEB2CA007747C80C1C604A9F78645227DE9FBFFBAEEEFA0B7BBB17DB77BEE76BEB1BEC';
wwv_flow_imp.g_varchar2_table(117) := 'CBBA3E59E953A8DBFC0F2ACE3FBE66FFE027FF669DF89FDFB3D7DA1312EA5768BD0EB9A24E1F7C60391F05A046BCEA551488965C022800C995BD37F319DD89CFFB39844901F8CAC39F8BAD07F52DC542FFEEC80776BD4227FF4F2FA50639053E2727CA6E';
wwv_flow_imp.g_varchar2_table(118) := '9D4A57A29D77257DCF9C8DF1C93FF8E6BF68F6DF25852B1A56979590F7A7DF39A228898387DFB7AC4F32A01AF947D42BCC97965C022800C995BD37F3E9FE016501F4A9F9AEB0B7AF7DEE73D61143472A17D2F7D6B9B3767EF45260096FEEECB22FABF0D1';
wwv_flow_imp.g_varchar2_table(119) := 'B3EBFB6CAD36EFAE0FABC48DCB8A70E9CE6D7B45D692BF3F77CE06AE5F75598202F5EB3CD19F9427BACBA858C936A80C7F6F2AD42FD89D7FB3FDE0C5EFD8D615525496E2724E9BD7F715EA371120B77FBBF2DA3FB663E78A295A95946B31EF1ABB73C77E';
wwv_flow_imp.g_varchar2_table(120) := 'F7FEFBBEF51D52F5F5D6B06953315DF26C95114001A83281163B9DE90BFDF2889F5DFA63F266FFFAE71EB1D5312C977A5AE98DDFD20658B8A56CBB32A2FD374F3C69CFAC09E610F5928A27FD4FAF1FB47EE50F08E250E82C015FDAB7CFDA2A649A5E34FB';
wwv_flow_imp.g_varchar2_table(121) := '2BC94FA00C7FD12CE9FBDD9F04ABEAD724C5EA8B7B1CDBC6C2A24ED813D7A5B8FEFABD7795E679E9EBAF54A6CE1AB66C4E1815A67B2F01148084AF87E9F3E73F8C85FF2C0897FDEFEB8F3C6AED3A29C4A9CD2ADCEF67CA833E5D6803D415C77FFDF4B3F6';
wwv_flow_imp.g_varchar2_table(122) := '9FE8DE7839ED5F1DFBC0FEC5EBAF4B0758DACBFADE3E1B64457956EFE929F3297B40A17E6F9D92B77FA0387F77F2FFB64EFEAB9633FDB27CA698937F9B4EFE4FCBE16F758514ABB24CB88C9DBA2BB0BF534120BFDF8394B259366CD952C611D075D409A0';
wwv_flow_imp.g_varchar2_table(123) := '00445D42651EDF944B14E2E724A4D8F6AF3FF248E442DAF22171A97B0F0D0ED8C98181BCE43AB5E9FDAF5FF9AA3DD4D1198AF09B57C6EDBFFCD52FE5A17EBB603F8DB2043C299F80756552029CD3D79B0AFB9A0EB0F977CAB1F307DFFAB66D29D3580AC2';
wwv_flow_imp.g_varchar2_table(124) := '58E281F332FB7FCF85FAE9BAA55073572B8F2BD4AFDC0A55A17144F9E75352847FF9CE3B76C7E78ACFE5AE6850C82A2DB9045000922B7B6FE6537212F33BC1A695E5CE2900AB7452884BBB26B3E7DF1E3AE45BDCC8CDA34EF3FACBEFFCB1ED2B517E830B';
wwv_flow_imp.g_varchar2_table(125) := '6EE352829A8900616A3562F995071E2CB95F852BEC73F0D8319BF3BBCEB947805EA89FEEFCA3B4F9F74B810A6CF6D7F8BFA80A9598FDF3FF56CEC8F9CF2900B7FC14C29A5A6BDCBE2D2EBFDA8CB30C045000CA00354E5DE6B300D47E6801688D58529B7C';
wwv_flow_imp.g_varchar2_table(126) := '7CDF93A3DEB10BE7F38AE09F7FE56BF6AD8DA5757E72A7D73F0BA804D4E94AE5B9FD076C4D891C032FE8E4FFF6F1E3361B60F3F74EFE32FB4729C3DF79294EDFFB71B0937FBB2C164FBB50BF183AA656FAEF82CB7CF94B29C3B751002A8D3E36EF430188';
wwv_flow_imp.g_varchar2_table(127) := '8DA8CA33D02979B59B5F9890AADD2D5E01C4C307E0B60BFB53E2936B375CB6BFA5DBC3AA6CF8C32F7FB52C30172D01C13CD79BE558F9E4BEFDA1958041A5717E4B7376150C0BB5689EFC95DBDFCBF057D8ECDF26E5E5711756C99D7F21517B3FBFE3F900';
wwv_flow_imp.g_varchar2_table(128) := '1CF2BD0230FD7E376EC302100866953E840250A5820D3AADE97372029C7379F13FDB520A03FCFAA3F171021CD606FCAAC29EB2792AFAFDF4BBDFB33DADE52B817AC19D6695B52EC875409D2C2B2FDCFFC0B2AF03466EDE549E832372E1585A7EF74A34EE';
wwv_flow_imp.g_varchar2_table(129) := '9B7F4343A37D4969A9DB62189112F477B1D4CFDD9213AC5300A67D2C43A9B47C00B6E203506AEE71EA0F05204ED22AC358A72F5C5018A04F963C79C97F4D618071C9037054A17FEFE709FD7B70C346FBCBAF7EBD0C143FD9A55302FE34E0A9B64ED61557';
wwv_flow_imp.g_varchar2_table(130) := '6FA1A7C853ED80CCFE6FC9EC3F13C0EC1FDDCD3F587ADF565D953CAB3B7FCCFEC52D5DE70FF39B770FD98C57F17209059F30C0E28056E1D328005528D462A6943F1150BC3201FE5E218DE72E0EF94EFFBF7AF639FBCF772F2FE4AF18A6EED9454B40C0EB';
wwv_flow_imp.g_varchar2_table(131) := '00DD673FA17BEDB5013DF2076E5CB7B74FC8DB3F90D93F8A857D9CD93FD8E68FD9BFD895F7F1F3E3BA56794999005D58EC920A008980960FB74A3E89025025825CEE340AA502FEF2430FC7A2B0CAC2FC82FD56A7FF4B63977D51FC9FAA70F7ACAAF555AA';
wwv_flow_imp.g_varchar2_table(132) := '79968080CE6DF5AA1DF005D50EE82CE018382C6FFF57027BFBC77BF3AF97D9FF8503076C350E7FCB5AB2A3BA227AF9F061DF2B3152012F0B6B557D0805A0AAC459FC64F21603B2947DE9C1076D8D12AE44BD2DB8902765BFBB7AD565E75BBAFDFC4FBF6F';
wwv_flow_imp.g_varchar2_table(133) := 'BB2A3C976294808C36BCCFEFDD6B6B7C2C01FD2AE9FB96AAFACD26E0E4DFAC50BFE7943D312ED74F51FCFD70E9A05F3F7AD4BF1890AE9DEAFBFAA23874C6542102280015021DD5D7142A07FC85FBEEB7DEF6F239CD958ACB7C3667BF38FC9EDD50FEF3A5';
wwv_flow_imp.g_varchar2_table(134) := '5BCADEFA277F6EED2B90D3E0824CB17FFA63A5B60D90E0C6A50D7E5CB503FA3E5582D9FD3177A98DA775AF5BA845B6A4AFC224AFCA51B3505B252BC823CAF0D71BF04AA4507F49FDF99989097BC795035E985B1201D50093BA323E9E370A40C2D7C0ECC8';
wwv_flow_imp.g_varchar2_table(135) := '88CDF9FE514ED9B3FBF7D9C690D9F22A81784E8E8C7FABD2A7376EDDF45500DEF98FFFDC5A950468255A3196801ADDCD3E2F4BC05A55B873990D2F3B53EEF163962B94DA5813EBD0A9EE87BAEA88529C7FBFAE42BE1B70F36F74277F85FA55BA78D24AAC';
wwv_flow_imp.g_varchar2_table(136) := '8972BE735EEBE6C4D8981D397D5A0AC0D2A9AA6BB5BEEAD605AB7F51CEB1D2F7CA1140015839F69178F3AC3CE7E774AFEC776A7E4A1BD196AEAE488C35DF20DC15C0DFEA6EFC9A72E1FBCDE5577FF68FB43156B62ADFBD632946097095DAEEDFB2CD66E6';
wwv_flow_imp.g_varchar2_table(137) := '73767670D0B2814EFE11DDFC033AFCB528CEFF596DFE4E89A18523E014800FF4BB7DECEC599BF75100D26DED965953399F987033E2D3E5208002500EAA31EA33AB53424EE665BF4DD399A3B7AF59138B19FDBD7C00C6C6C77DC7FA177FFC1FDA232B6CCD';
wwv_flow_imp.g_varchar2_table(138) := '284A09F0AC150BBEC59AEE9D68644FFE0137FF5532F73FAA92BEEB2AECA3118B85BD8C41CE4901786FF8A29D3C7FC15B434BB5F4EAD596E9EE5E46EF7CA45A08A000548B2497398FAC36CC9C9CCBFCDAE7B66DB7DDEBD72FB3F7CA7EECA04E3B0323C3BE';
wwv_flow_imp.g_varchar2_table(139) := '2FFD679F7FDEFE7CE7EECA0E6A89B7B98C815E9E80003E0141061BD93BFF809B7F834EFCCFED56863FEEFC83883BD0333929006F2A2CF6829400BF9696329CE90A570C2BD0607828B2045000222B9ACA0C2C27AFF9EC952BBE2FDBDFB7C1EEDFBCD95C69';
wwv_flow_imp.g_varchar2_table(140) := 'E0A8B723FA6377C4A536F669FBD6F6DA8FBFF9AD484CA3544A40DC37FF165DC93CB36B8F75B6ACDCD54C24164489079155ECFFEFE4347A39CFEFB63BFD3B2B002DB9045000922B7B6FE6737230CB8E8DFBA603DEA23F124FEEDC6529E50D8F7A1B5676BC';
wwv_flow_imp.g_varchar2_table(141) := '831F1C51D8D3D24E4F6EFC3FFA0FFEC41E5ADD1189A9845502A2B9F907AFEAE7CCFE8F6CDF69BDADD10F338DC482296210B3B3CE29F688DDF2A950E94A01677ABAAD962B9722A856DFA32800D527D3A266343F3565B3A397950E7876C9CFAD9163D6134A';
wwv_flow_imp.g_varchar2_table(142) := 'C3DAD2D85054BF2BF1B0AB7EF692E29E275420C7AFDDAF2A80FF4ED500A3D296AB0474E8E4FCC36FC5B9A46F933D2DB37F0F66FFB22CC53B721AFDE93B6FDB9C8F329C521D8ABAB56BAD86DA0A65E11F974E5100E222A9328DD379CFCF0E8FD8FCF4D492';
wwv_flow_imp.g_varchar2_table(143) := '6F58A53F14AE6A5D774C4E0A6FF60FD899C1FE3CB452F6DFBEF025FBC75BA35305AD982A826E62D1CCED1FFCE4DF2CE5C5DDF93B2586561E02D7E467F20BD501F06B35CA3751B7BE3716577BE52144AF8E000A00EBC05300E6FC4C85E2F3B414804D9DF1';
wwv_flow_imp.g_varchar2_table(144) := '70161AD51FBEDFA822A04AE4F94A36AD64403FFCF61FDBFDEDED91917ED0DA012E55F00F627CF27766FFC776EE54DD03CCFEE55C7CC3F2ED79E9E807BEAF70A6FFBA75EBCA3904FA8E010114801808A9DC439CBD7CD9E6747FEED71EDABEC3F6F6F6967B';
wwv_flow_imp.g_varchar2_table(145) := '1825E9DFC53FFFBD929F5CB93C9AB7BF4EFD01FC8B6FBE685B75C511957656FE18DF7709737CA203DCC9FF072F7EC7B646C86C7E4E0AD7F77F1AACE851A34E9D4F29CE3F68D1A3A8C8258EE338A5045F6F9F3DE3AF04B72B04503E00B46413400148B6FC';
wwv_flow_imp.g_varchar2_table(146) := 'BDD9178A04D8B561833DB2253E75C327E4D7F077EFBEEBEBD87857E45D2DADF617DF7A714593037D7AF99D5726C37FF4F39FDAB894817B5B8F1496FFF71B1A6B8436FFF3DAFCFF2CE0E6DFE442FDE44BD249929F8AFCC5795765BE8F0F0DFABE8B08808A';
wwv_flow_imp.g_varchar2_table(147) := '8821F22F410188BC88CA3F40970AD8A504F66BEBBABAED8BCA0818A7F6D6E0809DEEEF2F38E42E99A2FFE25BDF8E9412704D297FFF87D75FB35F9E39AD4BBA947D43C998FEFBC79FB4B615A863E007D06DFEDFD3E67F55750E0AB55659591ED51C38F917';
wwv_flow_imp.g_varchar2_table(148) := '22559A9FBBB43F074F9EB4C13C9531EB64D1AB8D9032599A99D34BB10450008A255685CFBB48005715D0AFB52A67F8375515304ECD2542F99D52038F5E9D2838EC2ECDEFDF2A3F4094AE03DCA0AF7E98FBBF438E98516AC598FD9B64F67F5ACA630F0E7F';
wwv_flow_imp.g_varchar2_table(149) := '1513E14DD5C5785D5931C77D337C9AD5CBAAE7CA01D3924D000520D9F2F7663FAF8D666660401943974E19EAFE887FF3A1872C1D835C00F78A734661817FFBDEBB765B0A4EA1D6214BC08F6409D8CC4695179557D82760863F77E7FF85FDFB6D351B4DA1';
wwv_flow_imp.g_varchar2_table(150) := 'E557D29F8FC92AF3DAF1E35AF73E95316555AADFB4C96A22A6589614029D05228002100853753FB4A08D7266E8A26F2E80BA4C9D7DF9FE07ACAD297E2706170FFD77EFBF67778254D2D33DFB8FBE8912E0B7DACF7A0E7F7252F48918B9F773AB74D7FFD8';
wwv_flow_imp.g_varchar2_table(151) := '1E553444A1AAF81F8F7EA5F67E55D5234D21BE4BB5947E9FEB37F4592A9DAEF8D87861B408A000444B1E2B329A05250BC9BAAA803E65815D1AE0A7549F7D734C0B878CAADAE12BBA0E98F54976742F742C014B2FC1B3724EFC536DFE3702DCF97BDEFEAE';
wwv_flow_imp.g_varchar2_table(152) := '9C319BFF8AFC3E1F553D8CF75517C3AFB9BBFF8C9200C521BDF78A004CD04B510012246CDFA9CAF49F9D98F0A201FCDAF6F57DF6D8D6ADF2494BC5929853025E3E76D4B2BA1F2DD450023E49C8DBFC65F6BF11A07891BB2E7A1EB37FA12556D69FBF724A';
wwv_flow_imp.g_varchar2_table(153) := '0E800AEDF56BE98E0ECBB8BC1E31FD5D2E2BBC84758E02903081FB4D77EED6ED0F230196F603686D6AB1AF3DF4A0A5635014C86F8E4E09784DA6D1A920D701F80478188B39F93B6FFFC776EFB6359CFC57ECAFCAC2FC82FDCDA1B7ED86AFDF4BCA162300';
wwv_flow_imp.g_varchar2_table(154) := 'C8C2B862428AD08B510022248C951C8AF30398BED02F47C0A50BE9B893FFB71E7BDC5A62EE383424CFE83775429A9E9929883BE9968062367F17E7FFA4D2FB12EA57705995F58149E7F372E890CDCEE5967E4FAAC61AB6A8BA27F7FF6595435C3A470188';
wwv_flow_imp.g_varchar2_table(155) := '8BA42A30CE69250F59C863227F7AFF01DB2CF361DC9BE713204BC02C96005F5116B3F9D7CBCBFFF9BDFBADABB929EE4B23F6E33F7B65DCDE3C7142013D4B5BF29C03A0530068107004500058071F1170C980FC1C01DD43FBB66CB107376CAC0A62976E5C';
wwv_flow_imp.g_varchar2_table(156) := 'B7D7942C054BC067C559CC9D7FB3D2133FAE243FEB62522CAA2A16AFCF24DC9EFFDAB9B3D62F2740BF56ABABADBA5E6A0054F33A28666E2800C5D0AAF267730A1FCA8E8FFBCEB2B7ABCB9EDAB9CBEAABC47C38A4F9BEA9BA01D333D305259B94EB806236';
wwv_flow_imp.g_varchar2_table(157) := 'FF46DDF53FA1F5D0CBE65F70FD54E2816C36673F3FF2BEDDF18DD44859A6BBCBD2AB57576238BC23060450006220A44A0DD1CB08A8CA807E95F49AEA1BEC59797877559193D7A88A20BD2293E9EC6C109F8016250BFA4ED5260B2A66F37766FF2FB8DCFE';
wwv_flow_imp.g_varchar2_table(158) := '55B4162AF57B56AEF74CDEBE633F732580FDFC78A4B8BB0A8064002C9704E2D72F0A40FC6456B6112F2871C8ECA54B367FC7278398DEFCB892BB6C8F693E003F704E0978D5BB0E086209A84E25A098CDBF599BFE933BE5EDBF2A3A9514CBF64B11A38E2F';
wwv_flow_imp.g_varchar2_table(159) := '8C8DE95AEB84EF886BE4A859BF7E3DE17F319269B9878A02506EC231EBDF5D01B8AB00BFB6BDAFCF1EDFBA2D66B32A3CDCE2AE03AA4B0958DCFCFF5A71FEFE8ADF5D828DDA441E97D97F7D6B6B61A83C513102AE0CF6DBBAFF3F93A7A89733FDBB2A8034';
wwv_flow_imp.g_varchar2_table(160) := '08DC258002C05AF804813995A1755600BFD62627A26FA82E4035B61185083A4B4092AE038AD9FCEB3C6FFF7DD68DD93F72CBFFB6C2785FF9E0039BB839E93B362A00464E6C2B3E201480151741B40630AFF8F8990157477CE930A2743A635F9702B0AAA1';
wwv_flow_imp.g_varchar2_table(161) := '215A032FD16816AF034E048C0E88B725A098CDBF45497E9CC31F66FF122DB41277332CC5FDA5C3EFCB7F67E93C1EB2FB5BC3E64D968A791E8F12634B7C772800895F029F02A03F20D3FD03B690F34B999BB28776ECB0BD7226AAD676D1250B922560AA8A';
wwv_flow_imp.g_varchar2_table(162) := '1D038BD9FC9B3E0CF5C3DB3FBA2BFE90AA799E18E8F71D604A8ABB53002CC6993CA34B3FBE23430188AFECCA36F259E5119FD349D8AFAD5ED56A5F7DE001ABA9E25CE2A3938A0EF00A0805A91D102F4B40319B7F46969E17F6EDC7DBBF6CBF6DE13B9E93';
wwv_flow_imp.g_varchar2_table(163) := 'D2FE7365FFBBE557FE57AF48B7B75BA6A727FCCBE8A1AA08A0005495384B331917053033AC64223ED9C49C39F10F1F7DD4DAABF41AE02EC5CBBA4F7DE5D8719BA9224B40319B7FB34BEFBB678F72FBE3ED5F9ADFACF2F472C999FF55F2DA39022ED994FE';
wwv_flow_imp.g_varchar2_table(164) := 'D795FFADA9F2DFD7F2D0ADEE5E5100AA5BBECB9E9DAB0BB090A77CEE833B76DABE2ABE06B80B6E486983DF54DAE0E9206983B551FEE8C5E8E6092866F37755FD1ED5E6DFA7D2B1B46813785D29BCCF0F39BF1D9FFD5FF7FE0D9B37477B128C6E4508A000';
wwv_flow_imp.g_varchar2_table(165) := 'AC08F6E8BF347B79CC724A97EBD7BA5513E0D95D7BAC31938EFE64428E705461722F1FF9C0B2BE7E111FBFA0431B66149305BFBD2F3A00002000494441541513E79FA9AFB7170EDC679DB200D0A24D605EDEFF7FF5DEBB36E35BFD0FF37FB425B8B2A343';
wwv_flow_imp.g_varchar2_table(166) := '015859FE917DFB9CD289CE8E281CD027AB586D4DAD3DA3AC807DBA5B4C42BB7CEB9617663593C72A729743D494806236FF669DFC9FD9B7CFBAD8FC63B1AC4795B3E3375A977E513B26F3BFCBFD5F4BE8662CE459E941A200549A784CDE17242BE08EDE3E';
wwv_flow_imp.g_varchar2_table(167) := '7B6C7BF52505F213D1B07C027E7FF4B84D67E39336B898CDBF4971FE2ED3632F66FF58FC967AC97FCE9EB13379F276B8EC7F2EFD6FAAB63616736290952580025059DEB17A5B4EE17059A517F56B4D0D8DF6E2E71E5164512A56F30A33D851395CBD72F4';
wwv_flow_imp.g_varchar2_table(168) := 'A8A203660B76B3D296806236FF745DBD7DF1BEFBAC9B937F41B946E58149F9A5BCF4FEFB76737ACA7748CEF3DF4500D020B014011400D6852F810585C04DCBC1C8AFA5645E7C4E77C57DED6D89A278D929010A110C161DB04A3E01DFAE7801216FF3FFE9';
wwv_flow_imp.g_varchar2_table(169) := '8FED866F65B88F4586D93F9ECBF7F4952BF6961C54F3B50695F04E6532F19C20A32E3B011480B2238EF10B6462F49202E539ED6E9479F1D9ED3B12576064F886AE03BC8C81D12B2074560ACA9FFE2CE0E6AF13FFA3BB76DB7A4AFAC6EB1755BF9B2F9F3A';
wwv_flow_imp.g_varchar2_table(170) := '65436397FD15745975BCE43F3408F81040016069E425901DBFA2E24057FD4D8CB569FB23E5044827F0947151C9925E5329E16CA03C0195B1041473F2CFE80AE70BFBF62AB73FA17E71FB333029AFFF5F39EF7F45012CDD5296EEECB44C6747DCA6C6782B';
wwv_flow_imp.g_varchar2_table(171) := '480005A082B0E3F8AAF9E9699B1D1EB18539BF3F34664FE804B96DCD9A384E2FF498879D12204BC0AC6A28146A1D2AA454CEEB8062EEFC5D7ADF6715E7DF85777821B145F2E7EF0E0DD9F10BE7FD4FFFE9B4D5AB7227B9FF2329BEC80C0A052032A288EE';
wwv_flow_imp.g_varchar2_table(172) := '405C56C0F93C77C95DADEDF69C4E928D09B40238A90D2814EBCDD3A7022A01E5C91350CCC9BF599BFE234AE4D44749DFE8FED2E519D9AC4EFD3F7DEF3DC5FEFB976FAE552487ABFE4783403E022800AC8F82040A4503B80E9EDCBDC7B62638D7B85302DE';
wwv_flow_imp.g_varchar2_table(173) := '387DDAB22BE01350CCC93FE34AFA2AD4AF8750BF82EB3EAA0F9C191DF514CE7C2D238B5CBA2D59CEB951955794C785021065E944646C2E1A60667028EF35C06ADD237F4D658253555C20A89038DC75C0ABAA22584925A098CDBF4927FFA755D2B70787BF';
wwv_flow_imp.g_varchar2_table(174) := '42A28CECCFA775FA77657F27F258E452F2CBA9DFB801EFFFC84A313A034301888E2C223D92ECC455CB4D5CF1BF73D44F9EDE7FC03629457092DBA02B252C4BC04C9ED8ECBB7CC2E6092826B7BF67F6DF2EB37F5B6B92C513FBB99F525E8EB7E57392F7F4';
wwv_flow_imp.g_varchar2_table(175) := 'DFD565E984FF1EC65ED0159A000A408540C7FD350B3A797839017C2B049A752AE1C857A404A4125E737CC029010AD19A2DE3754031277F67F67F76F76E5BA732CEB4F812989B9BB35F1E3962D79591D25F13AFB186AD8AFD27F35F7C055DC191A3005410';
wwv_flow_imp.g_varchar2_table(176) := '76DC5F35ABBBC73955C7CBF3D7C75E5036B9B5641EB3115D07BCA210C15C8010C14E5D9FFC3FDF7CD1760434CD9F940CFE23C5F95F57D9E642AD4171FECFC83F630D77FE855045FEE7E7AF8CDBEFB5A616F228E1B5BAF7AF4B68444EE40518C101A20044';
wwv_flow_imp.g_varchar2_table(177) := '5028511DD26248E0B07C01E67C87B8B1678D3DB96B97A513EC0B7017CE90AA29BE214BC08CB8156A19856DFDD3679EB37FA2A44A353EEC5CEEF77F23E7AFFFE5B583AA4CE81F9679F75DCD0AF57B6427DEFE85D8C7E1E74EF67FEB4EFF792A74A6B486EA';
wwv_flow_imp.g_varchar2_table(178) := 'D6AFB71A5573A4412008011480209478E62302B3976405C86382AC95F9FFF9FBEEB7B5849879CC16AF034E060A11543A457B5875DBBF2373FD5699EB77286FC0BCFA38A7B4BEE76451F8F7BAFB7D7F7020D06AAC53929FA715E7DF1BD0AA10A8531E5A31';
wwv_flow_imp.g_varchar2_table(179) := '02A35A47BF9102E05BF54F3FE1F4BF62E289ED8B5100622BBA9519B8B302B888807C7F88FABABBEDF30A35A32D121891C9FEA072B66755BCA5A8A65A0B5EF329C9ECD757A3EEFC9FD9B34FA17ECD45BD8E87A349606E7EDE5E3D71DC862626F20C30E579';
wwv_flow_imp.g_varchar2_table(180) := 'FED734344473128C2A92045000222996680F6A56E547E7946FDEAFA56B6AED8B0F3EA414B34DD19E480547E7D206BBDA013301320686195653A372FBEBCEBF6F15E97DC3708CD267DD55D2CB870FE71D52AD2C4675EBD64669D88C25060450006220A4A8';
wwv_flow_imp.g_varchar2_table(181) := '0D318815606D778FBD2053B61203446DF82B369E0129016F1C3F6ED900A5849733C8BAFA067B6ADF3E5B8FC3DF72F045F233B9B979FBED89633676D5BF1E87BB3A72457F48FB1B4911467A50280091164F7407373374D1E6F3A422757F949EDEBBD7362B';
wwv_flow_imp.g_varchar2_table(182) := '2699F631814BB76ED9C1A3476D3640744031DC9A9CB7FFDE7DD6ADEFB4EA21707C64C4DE3B7BC616F24CA946CE9EF57DEBAB67D2CCA4620450002A86BABA5E34A78DCC3904E6BB9F6E9713DB0BF7DF6F0DC4247F42F837E50BF03B59026E4CDE28C9A2E8';
wwv_flow_imp.g_varchar2_table(183) := '6A5F6D0F2BF2A21BEFEF92F08C4A27538AF4F8F93B6F4B59CCE33B22A7DB3A95E4AEA5A85354C416AB71A000C44A5C111AACC2923C5F002902F9DA230A6BDB455192CF20BAA53FEEBF3F7FDEC6C6C7F28655E663EB52BE6EE85D670F6FDC64CD285911FA';
wwv_flow_imp.g_varchar2_table(184) := 'E5083F1417EBFFA6126F9DBDE81C6EFD5BADA26DBCB87FAEDAC2434F600F280009147AA9A6BCE80B3098B7BB7A6D525F9243607B5363A95E5B35FD38B3EE3531EC1F1FB7F3A3976C5A35DE83B416250EDA2287AF2D5D3DD65A9709F2119E8919816B4AF2';
wwv_flow_imp.g_varchar2_table(185) := 'F4CB43876C3E6F04883CFF376D24EE3F66B28DD2705100A2248D188E25ABDCE4AE5A60BED6D3D9692FE87EDA2FC14D0CA75DD221BBC46E777259BB7AEBB60D5FBB6A775C0A6115605AC82D265C72095EE6D3B552A29A6DEDEAD5D621736FA3142B0E7D25';
wwv_flow_imp.g_varchar2_table(186) := '1543643A5B985FB057953B6240D6A17CCDE5FBCFE0631319B9C57120280071945A84C6ECB2023A87C0857C4E6DDAA99EDBB7DF3650A02490E41614F7ED6A2EDC4DF9EA5558D457D26B2C048257050F9D906FCDA133A735137FD7BF545DBDD56FE823E77F';
wwv_flow_imp.g_varchar2_table(187) := '15C87B25A78002B092F4ABE4DD3985B7652FBBD38AFF1FACD5BAAB7C411902EB135E28A84A44CE34CA44E08E7C43FEE69D770A4489A42CB3A6C7D2CAFB4F83401802280061E8F1D94502CE2170440E81B7F33B04EEDFB6DD1E50AE721A0420F05902EE2A';
wwv_flow_imp.g_varchar2_table(188) := 'E890523D9F1CE8CF8BA7563E207572FEE40E88551496000A4058827C7E5107F0CA05EB0F571EA7A5742663CF1FB88FCA74AC19082C41605429A3FFE1C861FD0AB90A103E4D16B406D58B707E213408842580021096209FFF8840766C5C0E81D7F2126993';
wwv_flow_imp.g_varchar2_table(189) := '13DB97E5105847D81A2B07021F11B823A7CFDF1C3B6693057243E0F8C7A2292501148052D24C785F9E43E0C0A0AC01D9BC24766ED8689FD32986A880842F18A6BF683D93EDFFB72AF37CE9F2E5BC4452993A2FEC0F6750164EA908A000948A24FD780472';
wwv_flow_imp.g_varchar2_table(190) := 'D7E5103896FF0F99BBBB7C4A57015BDADBA10681C41338A72A7FBFD7E93F9F13AD839451C21F1CFF12BF5C4A0A0005A0A438E92CA84360BD0AD77CE1C001EB24773D8B26C104C66EDFB6DF1E7EDF72F2A1C9D770FC4BF02229E3D45100CA0837A95D2FE8';
wwv_flow_imp.g_varchar2_table(191) := '3ED36508745702F95A6B6B9B7DF5BEFB2C43686052974AA2E73DA5444FAF1C3B6AE32AF79BAFA5E42F53BF51A67F39D1D220504A022800A5A4495F1F11C85DBB66D9F12B05CD9A7BE40BF0A07C02F00760F1248DC0EBAA0571BE40AE7F575533D3DD6569';
wwv_flow_imp.g_varchar2_table(192) := '39CFD220506A022800A5264A7F1F11981D1DB5398536E56FF2079015007F00164E92089CBE72C5DE3AEEEEFDF337AFD8CFDAB5851EE3E71058160114806561E34341087851018343B690CD53CE541DB5B4B4D8B30A0DEC686808D22DCF4020D6042EA982';
wwv_flow_imp.g_varchar2_table(193) := 'E6CB478F5A2E5FFA6CCDD0F3FADFB88174BFB19676B4078F02106DF9C47E745EC5C08BC366F3F9FD017ABA7BEC4BBBF790DC2CF6126702F908DC9652FCCAF1E336A1A24F795B8DEEFDFBD65B0D4A310BAA8C045000CA0897AE17092CD60A28101AA8E7B6';
wwv_flow_imp.g_varchar2_table(194) := 'F66DB027B66C450960E15425817917EF7FF2A48D16A8F2E7264FC85F552E81C84D0A05207222A9C201B95A012A1B3C2745A050DBB3759B3DDCD757E8317E0E815811C8A9C4EFA1A1013B33305070DC69E5C7C8747793EBBF20291E084B0005202C413E1F';
wwv_flow_imp.g_varchar2_table(195) := '8880AB15E0F90314C812E8BC9EEFDFB1C30EAC53B1131A04AA80803BF91F191EB6A3E7CF159C4DAA4EF7FE1BB8F72F088A074A420005A02418E9240881F93B776C6678246FC1A0BBFD3CB16FBF6DEBEC0CD22DCF4020D2048ECAFAF5FEC91385C798AAD1';
wwv_flow_imp.g_varchar2_table(196) := 'E6DFC7BD7F61523C512202280025024937C1082CE607182FF8704A4E504FECDD6B5B3B3A0A3ECB0310882A8133130AF7D3BD7FA1A4586EFCCEEC4FBC7F5425599DE34201A84EB9467A56D92B1396BB3A51708C0DF5F5E62C01EB1526488340DC085CBA79';
wwv_flow_imp.g_varchar2_table(197) := '53697E5D79DFFC11306E5EE98E4ECB7461F18A9B8CE33E5E1480B84B30A6E30F9624C8AC4E3503BEF2C003D62A65800681B810B8E272FC1F396CB34A8B5DA891ECA710217E5E2E022800E5224BBFF909B8C800972950A7A442ADA5ADCD3EAF1C01ED2801';
wwv_flow_imp.g_varchar2_table(198) := '8550F1F308109854EE8B5F2BC7FF94948042AD7695CBF4B7068FFF42A0F8795908A00094052B9D06222025606668C85CB2A042AD47BE008FEFDA6DAD144429848A9FAF2081C9D959FBEDD10FEC96B2FD156A358D4D9ED31F0D022B45000560A5C8F35E8F';
wwv_flow_imp.g_varchar2_table(199) := '80738E9A5588541025A0CDB304ECB555F575D08340E4084CCECCD86F75F20FB4F92BC35FDDFAF5A4F98D9C14933520148064C93B92B39DD71FCED9914B056B06B8C1374B0978427902D6363547722E0C2A9904C664EE7FE5D4299BBE55F84ACBE5F8AFEB';
wwv_flow_imp.g_varchar2_table(200) := '5D67355C692573B14468D628001112469287B25833E0A26A06CC17C4D02CD3E9237B765B5FCBAA82CFF20004CA4D60E4F62D3BF8C151CB1628EEE38DA346B1FECA74498EFF724B85FE83104001084289672A42604EF7A6B3A3AA1910206CAA56BE004FED';
wwv_flow_imp.g_varchar2_table(201) := 'D96B1B95369506819522706662C2DE569CFFFC5CAEF0106A6BBDD2BEB5CD58AF0AC3E2894A104001A80465DE119840EEAA1205A956BABC030A7F467F503F27C7C0DD5D5D859FE509089490804BEF7BFCCAB81D3E7D467E2C0136FF546A31D10F0A6B09A5';
wwv_flow_imp.g_varchar2_table(202) := '40576109A0008425C8E74B4EC0AB1EA8F4A9A63FB2855A4A0FECDBBEC31EE8ED2DF4283F87404908B8C23E472F8DD8D1736783F5E736FF9E1E4BCB7F8506812811400188923418CB470472D7AE5B56E6D520D701AE80D0AEAD5BED73BA5B750A010D02E5';
wwv_flow_imp.g_varchar2_table(203) := '22E04EFE6F0F0DDA997E57D5AFB0826A4A699D514D8BF46AAEAACA2513FA5D3E011480E5B3E3936526B0E813301AC831D00D6543DF067B74D3266BD4D5000D02A526704B152DDF387BD646C7E4A712A4C9E1CFBBF3279575105A3CB30204500056003AAF';
wwv_flow_imp.g_varchar2_table(204) := '0C4E607E6ACA730C5CC8CE06FA5077CF1AFBDCE6CDD6A9386B1A044A456058CAE8FBFDFD762D400D0BF7CE949C54EB54D21A6FFF5249807ECA410005A01C54E9B3A4045C8860F6F26573F90282B48CBCAC1FDDB1D3362BCDAAAE5F69100845E0B49C520F';
wwv_flow_imp.g_varchar2_table(205) := 'E9BE7F2EE0FA4BD5D57BE97DD9FC4361E7C3152080025001C8BC223C8105995F672E0EDB4290586B7702D3CEBF7DCB167B787D9FA5D102C20B20813D4C2B4BE5BB3AF59F1F567E8A80CD6DFEF57DCAF0974E07FC048F4160E508A000AC1C7BDE5C2C0125';
wwv_flow_imp.g_varchar2_table(206) := '099A51C6C0F93B858BAC2C769DB26E95587D7CDB766B23EB5AB1B413FDFC3565F67B5BF7FD6337AE07E65023CB53BDCCFE2ED90F0D027120800210072931C68F08B8DA0159F904CC29FB5AD0D6A0B4C14F2973E0BAE696A01FE1B98412589097FF90A24F';
wwv_flow_imp.g_varchar2_table(207) := 'DE3C7DDA6672854BF9DEC554BB6A9565D6ACB1149B7F42574E3CA78D02104FB9257ED4B3F2099853BE80A02DA5C8807D9BB7D801E50BA8E54A2028B6443D97CBE6ECD0F97376F6F2689000BF8FD8A457AFF692FCD0201037022800719318E3FD8880CB18';
wwv_flow_imp.g_varchar2_table(208) := 'E83207068AC7F63E95B2CD5200F6A90ADBEAC64648426091804EFDD7A44CBEA5CD7F3C4019DF8FB1A52CAD32D5195D33D120104702280071941A63FE8880CB15901D1BB78522CCB5CD0A117C60EB36DB420AE1C4AFA4B9D9AC9D1F1DB1F786866C56D74B';
wwv_flow_imp.g_varchar2_table(209) := '415B2A9D5176BF6E62FC8302E3B94812400188A458185431045C8480CB1A387763B2086B8059B74E6FF76FDA6C6B757F4B4B1601E74B32EC72F90F0ED9B5A93B454C3E65B56DAD5E763F3CFD8BC0C6A3912480021049B130A8A209C88C9B9B9C5C2C2454';
wwv_flow_imp.g_varchar2_table(210) := 'C4492EA393DC26656BDBAF70C196FABAA25FCB07624640EB64521EFEC70707ED8292FACC05283FFDD10CE5479291D528DDDAEAE24C633671860B81CF1240016055541581F9D95945098C9A4B1E544C6BAC6FB087B76FB38D1D9D56C31FF762D0C5E6D95C';
wwv_flow_imp.g_varchar2_table(211) := '56E67EC5F41F1919B169598D8A692EA94F468A624D1D4A6231DC7836DA045000A22D1F46B70C02CEBC9BBB7AD572D71525B0305F440F29EBD2B5C0839B36DA1A6511A4550701B71E2EAABAE4FB2AE273A348C5D015F349B7B779CE7E84F855C77A60161F';
wwv_flow_imp.g_varchar2_table(212) := '1340016035542D81397725307135701D81BB206A6BD3B6559102BB94D4A54D99DD3008C47389CCAB6CEF95C91B766664D8869C42588CB95F537659FD9C873FC57CE2297F465D98000A4061463C1163020BFAA39F938360EE9A0B172CAED5A9A0CBB675BD';
wwv_flow_imp.g_varchar2_table(213) := 'B65B8A403399048B83B7824FBB643ED76FDEB453172FDAF9892BE64AF816DBBCD87E172582F6572C3A9E8F1101148018098BA12E9FC09C3604CF1A201F81E0790316DF57A3BCEE1BD6AEB3BDBA03EE6C6A5AFE20F86459092CE8C43FA613FF71DDF18FC8';
wwv_flow_imp.g_varchar2_table(214) := '1974A1A8743E6E6829AB9123685A1EFE9CFACB2A2A3A8F080114808808826154808036889C72BBBBE4410B73C53981B9D1A51531B041E95E777CA8089051B002320BF08A9C4EF8A34AE4736678D82ECBD2939B0F1ECFFF51F7CEC35FA77E77F2E7D41F00';
wwv_flow_imp.g_varchar2_table(215) := '3A8F5405011480AA102393288680772D7045D7023A2D5A91F7C29E22A0CDA24FE6E1DDBDEBADB36515FB4531F04BF8EC9C36FE11DDED9FBD3462C3FABEAC96AAB1DA56E5F1973C5DBA681A04924400052049D266AE9F2030A778F0DCB5EBAA2EE812C114';
wwv_flow_imp.g_varchar2_table(216) := '7F4F9CD2E6B146E6E2DD4A2FBC5EB1E17889576681CD39AF7E9DF88F38AFFE22933F7D3C4299FB9B9BBC137FAD4B0BCD5D7F6584C75B224500052052E260301527E012086933C98E8F7B39E197D35CDE80D55200FABA7BAC571B4A9B62C6D36C28CB41E9';
wwv_flow_imp.g_varchar2_table(217) := 'FB99AC2C3537A6676CF8DA840DA81AE44D958476CE7ECB6A928D2BDE936E6F5FD6C7F91004AA85000A40B54892798422E0D2093B45606EF266D16183F7BEB85E21846BA5046CD006B3B6B5CDEAE55446CEB8E589C66DEF7714B73F2ABF8D2139F58D29AF';
wwv_flow_imp.g_varchar2_table(218) := 'C3EC327C37EEBE3D95A9F3CCFDE9B636D2F82E4F247CAACA08A000549940994E38022E4A2027B3B2CB21B01C47C17B4DCCB5751929039DB6A5BBCB7A6521A8533401AD308119296317AF5FB7F3B2CA5CB97ECDE694C12F4C73857BBC8DDF5DD390C92F0C';
wwv_flow_imp.g_varchar2_table(219) := '4A3E5B65045000AA4CA04CA744049CA3A02C022E7F80B30E846929999CEB9553608DD20CF7C86760754BB3ADD2A6D488D39987757A6EDE2655CD71424E9963CAD93021BF8CA9ECEC32BC323E292557ACC7DDF1BB13BFD5D48411219F854055124001A84A';
wwv_flow_imp.g_varchar2_table(220) := 'B132A95211709BBF2B39EC2A0DCECF14575F60C931C871B0BEA15E4AC02AEBD089B4ABB9D9BA945BA05E9B558D7E56EDAE03EEDA7E4EE999A775AABF3A3D65576EDDD6C63FE925EE99F1D2F42EF35EFF1ED835AAEBE02AF6B9587E2AF695EA37817EAA91';
wwv_flow_imp.g_varchar2_table(221) := '000A40354A9539959C80CB27EFAE055C7D81059D4E4BD6B4E3D76AC35AB5AAC57AA410AC59D5663D4D8DD65845D7056E4BBFAD0D7F4C5117976FDDB42B52A66E4AA99A9F9929C9867F5716EE8EDFE5EDAF75A67EAC2B255BA27454BD045000AA57B6CCAC';
wwv_flow_imp.g_varchar2_table(222) := '1C047484751601974CA82416814F8DD14514B812C54D8A24E896E9BABDB9C55AA410B854C4CEC1B05EA6EC285B09A6A428CDE8EB964EF337EF4CD9B5DBB7ECDACD49BBAD7FCECA816FD99EFB7964E94EFCE90E85F3E9C41F6938E5588FF4098110045000';
wwv_flow_imp.g_varchar2_table(223) := '42C0E3A3C925E092092DE804EB5D0FE86B21EBFC04C29BAF3F4354BB7D4A15E99AA510B4EAEAA0A5AE41FF5C6FCD2A54D3DC50678DEED4ABD36EAD14831A4F39D0F3EEFF6A4A1B7BE0D2ECCEBBCA8A9AA2FB3EA7F9BB787C67CA9FD4667F5B2CBCAFD919';
wwv_flow_imp.g_varchar2_table(224) := 'BB33336B935353CAB1A48C7CCB0DD5CBB7B4DC1C9D639F7C293C33BF9423723024F77791992F9F000AC0F2D9F14908780416B409CE2999900B219CD7BD7659363D1FD66E9B77960167216893B5A059D68206391C669C5270F74B8A81FB67A7283825C17D';
wwv_flow_imp.g_varchar2_table(225) := 'B934C6CEDAE00AE5B82FB7A1CFBB4DFDC32F974E775ECE793977F5E1CA2BEBF43E2B25E7D6D41DBB71FB8EB7D9BB90BC32A83CFEABCA8DB9A1D1F3E8F7367ECCFCFC0642201401148050F8F830043E49C0731AD40639A7BBEE799D8297936A380C53B7A9';
wwv_flow_imp.g_varchar2_table(226) := '7BFFE77D7716F10FBFBB4E651558FC3FF7CF5204F40F6E0377A77B679AF78AE7B8EFDE29FFE3523A8B8778593CDCFF96E3449F6FC26E9CCAD4572BA7C95A65EEC3A92FCCEAE0B310F824011400560404CA40C0BB229069DC2903F33A353B2BC1824ED465';
wwv_flow_imp.g_varchar2_table(227) := 'B92628C3F857AE4B2928B5BACA9015A3A6B16971D3D7F50726FE9593086FAE5E022800D52B5B661621028B9681DB36AFB037774DE0A20A681F1370E67C67DEAF71F7FA0A8DE4A4CFEA8040F909A000949F316F80C0270878D6015904E69D423035ED85C3';
wwv_flow_imp.g_varchar2_table(228) := '2D261BAAE88DFA0A4AC539F129EF81FC166A1A1B5494471BBE4EFC9CF2575024BC3A91045000122976261D2502F3BA2AF014015D152C2A0377BDE7AB452190B381E7B9AF53BEB7E9372D6EFC32EDD320008195238002B072EC793304962430AF7A04CE81';
wwv_flow_imp.g_varchar2_table(229) := '70F16B5A0A8172E157DAF92EAC6C3E0CD5F3367A39F1795FE4E10F4B95CF43A0A40450004A8A93CE20504202CE135FD7058AC3F31C089D22E09403C5E479858A9CA5C0FB5EAE1C0479A7A2137D262D873D7DE964EF4CFA29E526F0FED985E7E9CB7DF7CC';
wwv_flow_imp.g_varchar2_table(230) := 'FA51CE5C544271D11504E2460005206E1263BC10F89080DBF89D52E0F9134831707E049E73A1531ABC70BEC5B0BEC5583FEF7F3E0AF35BFCE70F3BF2E2025DE8A0FBE6FDCFE2F70FFFDD85127AFFEE120DB94DDDDDDFEB34EFDDDB2B218F530468108040';
wwv_flow_imp.g_varchar2_table(231) := 'FC08A000C44F668C18021080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F9931620840000210804068022800A111D201042000010840207E045000E2273346';
wwv_flow_imp.g_varchar2_table(232) := '0C010840000210084D00052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480D008E900021080000420103F022800F19319238600042000010884';
wwv_flow_imp.g_varchar2_table(233) := '268002101A211D40000210800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20';
wwv_flow_imp.g_varchar2_table(234) := '000108400002F1238002103F9931620840000210804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F811';
wwv_flow_imp.g_varchar2_table(235) := '4001889FCC18310420000108402034011480D008E900021080000420103F022800F19319238600042000010884268002101A211D40000210800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C1802';
wwv_flow_imp.g_varchar2_table(236) := '1080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F9931620840000210804068022800A111D201042000010840207E045000E22733460C010840000210084D00';
wwv_flow_imp.g_varchar2_table(237) := '052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480D008E900021080000420103F022800F19319238600042000010884268002101A211D400002';
wwv_flow_imp.g_varchar2_table(238) := '10800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002';
wwv_flow_imp.g_varchar2_table(239) := '103F9931620840000210804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC1831042000';
wwv_flow_imp.g_varchar2_table(240) := '0108402034011480D008E900021080000420103F022800F19319238600042000010884268002101A211D40000210800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A40';
wwv_flow_imp.g_varchar2_table(241) := '68847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F9931620840000210804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A8000042000';
wwv_flow_imp.g_varchar2_table(242) := '0108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480D008E900021080000420103F022800F19319238600042000010884268002101A211D40000210800004E2470005207E';
wwv_flow_imp.g_varchar2_table(243) := '3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F9931620840000210';
wwv_flow_imp.g_varchar2_table(244) := '804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480D008';
wwv_flow_imp.g_varchar2_table(245) := 'E900021080000420103F022800F19319238600042000010884268002101A211D40000210800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A4068847400010840000210';
wwv_flow_imp.g_varchar2_table(246) := '881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F9931620840000210804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A80000420000108C48F000A40FC64C6';
wwv_flow_imp.g_varchar2_table(247) := '8821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480D008E900021080000420104FC366980000013A494441543F022800F19319238600042000010884268002101A211D40000210800004E2470005';
wwv_flow_imp.g_varchar2_table(248) := '207E3263C410800004200081D00450004223A40308400002108040FC08A000C44F668C18021080000420109A000A4068847400010840000210881F011480F8C98C114300021080000442134001088D900E20000108400002F1238002103F993162084000';
wwv_flow_imp.g_varchar2_table(249) := '0210804068022800A111D201042000010840207E045000E22733460C010840000210084D00052034423A80000420000108C48F000A40FC64C68821000108400002A109A0008446480710800004200081F8114001889FCC18310420000108402034011480';
wwv_flow_imp.g_varchar2_table(250) := 'D008E900021080000420103F022800F19319238600042000010884268002101A211D40000210800004E2470005207E3263C410800004200081D00450004223A40308400002108040FC08FCFF2607B1F0FEF1EB050000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(8651978854604410)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8643341481604518)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>45081998939356
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8643596963604514)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>45081998939459
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8643816185604513)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>45081998939490
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8644130870604512)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>45081998939520
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8644418588604511)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>45081998939537
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8644790581604510)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>45081998939537
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8645039007604510)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>45081998939544
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8645373411604509)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>45081998939567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8645693501604508)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>45081998939585
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8645976612604507)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>45081998939610
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8646211495604506)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>45081998939626
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8646503384604505)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>45081998939645
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8646812493604504)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>45081998939665
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8647132674604503)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>45081998939686
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(8653286978604406)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>45081998941088
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/emp_manager_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9087847724170229)
,p_name=>'Emp Manager Rights'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'SELECT 1 FROM WF_EMPLOYEE_DET WHERE ENAME = :APP_USER AND JOB = ''MANAGER'''
,p_version_scn=>45146154476186
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/emp_president_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9088308694161411)
,p_name=>'Emp President Rights'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'SELECT 1 FROM WF_EMPLOYEE_DET WHERE ENAME = :APP_USER AND JOB = ''PRESIDENT'''
,p_version_scn=>45146195542914
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/emp_other_employee_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9088538593159866)
,p_name=>'Emp Other Employee Rights'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'SELECT 1 FROM WF_EMPLOYEE_DET WHERE ENAME = :APP_USER AND JOB IN (''SALESMAN'',''ANALYST'',''CLERK'')'
,p_version_scn=>45146195506753
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/emp_president_and_manager_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9199878079946604)
,p_name=>'Emp President and Manager Rights'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'SELECT 1 FROM WF_EMPLOYEE_DET WHERE ENAME = :APP_USER AND (JOB = ''MANAGER'' OR JOB = ''PRESIDENT'')'
,p_version_scn=>45238524202514
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_due
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8788207203374737)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov_query=>'.'||wwv_flow_imp.id(8788207203374737)||'.'
,p_location=>'STATIC'
,p_version_scn=>45082142531301
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8788560574374736)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Overdue'
,p_lov_return_value=>'|0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8788882473374712)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Next hour'
,p_lov_return_value=>'0|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8789216111374710)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Next 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8789640011374709)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Next 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8790031609374707)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Next 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8790457491374706)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'More than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8794614866374688)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(8794614866374688)||'.'
,p_location=>'STATIC'
,p_version_scn=>45082142531434
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8794946899374687)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8795382050374685)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8795716831374684)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8796167527374682)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8796594089374681)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_priority
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8691923336869164)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45082011732804
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8792779672374697)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45082142531357
);
end;
/
prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8791286889374703)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45082142531309
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_initiated
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8827709855366186)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(8827709855366186)||'.'
,p_location=>'STATIC'
,p_version_scn=>45082142656351
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8828072449366185)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8828437435366184)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8828859899366182)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8829282927366181)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8829667529366180)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
end;
/
prompt --application/shared_components/user_interface/lovs/workflow_console_lov_workflow_state
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8826235670366192)
,p_lov_name=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45082142656318
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(8653535512604403)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8648010860604494)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8648296798604493)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8776956760426904)
,p_short_name=>'Submit Expense'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8786646013374746)
,p_short_name=>'Pending Expense Approvals'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8824244258366200)
,p_short_name=>'Monitor Expense Workflows'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(8648916863604484)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(8647487152604501)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>45081998939716
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/automations/increase_budget
begin
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(8897989320954509)
,p_name=>'Increase Budget'
,p_static_id=>'increase-budget'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=HOURLY;INTERVAL=2;BYMINUTE=0'
,p_polling_status=>'ACTIVE'
,p_result_type=>'ROWS'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_type=>'TABLE'
,p_query_table=>'EBA_PROJECTS'
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(8898295546954480)
,p_automation_id=>wwv_flow_imp.id(8897989320954509)
,p_name=>'Increase BUDGET for Project'
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update EBA_PROJECTS set BUDGET = round(BUDGET * 2, 1) where ID = :ID;',
'    apex_automation.log_info(''Budget for '' || :NAME || '' increased.'');',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':NAME = ''Configure Web Environment'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8647715242604498)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>45082144909803
);
end;
/
prompt --application/shared_components/security/authentications/custom_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(9185530615013975)
,p_name=>'Custom Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'WF_CUSTOM_LOGIN.WF_login'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>45230113757311
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Oracle APEX Workflows'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8661012184604260)
,p_plug_name=>'Oracle APEX Workflows'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Task Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Task Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(() => {',
'    apex.jQuery("a.taskActionMenu").each((index, item) => {',
'        const element = apex.jQuery(item);',
'        const actionName = decodeURI(element.attr("href")).match(/\$([^?]+)/)[1];',
'        const actionLabel = element.text();',
'        apex.actions.add({',
'            name: actionName,',
'            label: actionLabel,',
'            action: (event, element, args) => {',
'                if (args.do === "submit") {',
'                    apex.page.submit(actionName.toUpperCase());',
'                }',
'                else if (args.do === "openRegion") {',
'                    apex.theme.openRegion(actionName.toUpperCase());',
'                }',
'            }',
'        });',
'    });',
'});'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8672565801869301)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context => ''SINGLE_TASK'',',
'                   p_task_id => :P2_TASK_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if ACTUAL_OWNER/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.ASSIGNED_TO_USER 0=&ACTUAL_OWNER!HTML.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '{if OUTCOME/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &OUTCOME.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8672965861869250)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8673419649869241)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8673934845869239)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8674445008869237)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8674938045869236)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8675401088869234)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8675917083869232)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8676414360869231)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8676923900869229)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8677489926869227)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8677967350869225)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8678478873869223)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8678961588869221)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8679485507869220)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8679907927869218)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8680470909869217)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8680920639869215)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8681481105869213)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8681951444869212)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8682405543869210)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8682994629869208)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8683408917869207)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8689811538869176)
,p_plug_name=>'Delegate'
,p_region_name=>'DELEGATE'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8691491921869166)
,p_plug_name=>'Priority'
,p_region_name=>'SET_PRIORITY'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8693305918869156)
,p_plug_name=>'Due'
,p_region_name=>'SET_DUE_DATE'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8694936246869150)
,p_plug_name=>'Request Information'
,p_region_name=>'REQUEST_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8696504522869144)
,p_plug_name=>'Submit Information'
,p_region_name=>'SUBMIT_INFO'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8698178221869139)
,p_plug_name=>'Invite Participant'
,p_region_name=>'ADD_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8699785474869133)
,p_plug_name=>'Remove Participant'
,p_region_name=>'REMOVE_OWNER'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8701300914869128)
,p_plug_name=>'Cancel Task'
,p_region_name=>'CANCEL'
,p_parent_plug_id=>wwv_flow_imp.id(8672565801869301)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Do you really want to cancel this task?</p>',
'<p>This will mark the task as no longer needed.</p>'))
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8702529761869124)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select param_static_id,',
'       param_label,',
'       param_value,',
'       is_updatable,',
'       is_required',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID',
'   and is_visible = ''Y''',
' order by param_label;'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P2_TASK_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_task_parameters',
' where task_id = :P2_TASK_ID'))
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'HIDE_BORDERS', 'N',
  'OVERLINE', '&PARAM_LABEL.',
  'REMOVE_PADDING', 'N',
  'TITLE', '&PARAM_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8702869127869123)
,p_name=>'PARAM_STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8703383900869121)
,p_name=>'PARAM_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8703862838869120)
,p_name=>'PARAM_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAM_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704305940869118)
,p_name=>'IS_UPDATABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPDATABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8704898241869116)
,p_name=>'IS_REQUIRED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_REQUIRED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8705899068869113)
,p_plug_name=>'Edit Parameter'
,p_parent_plug_id=>wwv_flow_imp.id(8702529761869124)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P2_CAN_UPDATE_PARAMS = ''Y'''
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8709055945869102)
,p_plug_name=>'Comments'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_string.get_initials(created_by) as user_initials,',
'       ''u-color-''||ora_hash(created_by,45)  as user_css_class,',
'       created_by                           as user_name,',
'       text                                 as comment_text,',
'       created_on                           as comment_date',
'  from apex_task_comments',
' where nvl(:P2_ALL_COMMENTS, ''N'') = ''N''',
'       and task_id = :P2_TASK_ID',
'    or nvl(:P2_ALL_COMMENTS, ''N'') = ''Y''',
'       and task_id in ( ',
'                select task_id',
'                  from apex_tasks',
'               connect by prior previous_task_id = task_id',
'                 start with task_id = :P2_TASK_ID )',
' order by created_on desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No Comments'
,p_no_data_found_icon_classes=>'fa-comments-o fa-lg'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'AVATAR_CSS_CLASSES', '&USER_CSS_CLASS.',
  'AVATAR_DESCRIPTION', '&USER_NAME.',
  'AVATAR_INITIALS', 'USER_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8709433416869100)
,p_name=>'USER_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8709917555869098)
,p_name=>'USER_CSS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CSS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8710443921869097)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8710941741869095)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8711487349869094)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8713192484869087)
,p_plug_name=>'Add Comment'
,p_parent_plug_id=>wwv_flow_imp.id(8709055945869102)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_plug_display_when_cond2=>'PLSQL'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8714744953869081)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       event_creator,',
'       event_timestamp',
'  from table ( apex_human_task.get_task_history (',
'                   p_task_id     => :P2_TASK_ID,',
'                   p_include_all => :P2_ALL_HISTORY ) )',
' order by event_timestamp desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P2_TASK_ID,P2_ALL_HISTORY'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'EVENT_TIMESTAMP',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'EVENT_CREATOR')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8715198397869079)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8715676360869078)
,p_name=>'EVENT_CREATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8716190862869076)
,p_name=>'EVENT_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIMESTAMP'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8717078488869073)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8690666664869170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8689811538869176)
,p_button_name=>'CLOSE_DELEGATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8692592551869159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8691491921869166)
,p_button_name=>'CLOSE_SET_PRIORITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8694170812869152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8693305918869156)
,p_button_name=>'CLOSE_SET_DUE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8695739592869147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8694936246869150)
,p_button_name=>'CLOSE_REQUEST_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8697377269869142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8696504522869144)
,p_button_name=>'CLOSE_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8698938485869136)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8698178221869139)
,p_button_name=>'CLOSE_INVITE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8700547820869131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8699785474869133)
,p_button_name=>'CLOSE_REMOVE_PARTICIPANT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8701779522869127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8701300914869128)
,p_button_name=>'CLOSE_CANCEL_TASK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8708231354869104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_button_name=>'CLOSE_UPDATE_PARAMETER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8713954317869083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8713192484869087)
,p_button_name=>'CLOSE_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8717426384869071)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8717078488869073)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8717822574869070)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8717078488869073)
,p_button_name=>'CLAIM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Claim Task'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_claim )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8718214551869069)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8717078488869073)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_reject )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8718669291869067)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8717078488869073)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_approve )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8711958782869092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8709055945869102)
,p_button_name=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_static_id=>'OPEN_DIALOG_ADD_COMMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'not apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )',
'and apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_comment )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8691052606869167)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8689811538869176)
,p_button_name=>'DELEGATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delegate'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8692970191869157)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8691491921869166)
,p_button_name=>'SET_PRIORITY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Priority'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8694579008869151)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8693305918869156)
,p_button_name=>'SET_DUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Due Date'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8696148241869146)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8694936246869150)
,p_button_name=>'REQUEST_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8697703951869140)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8696504522869144)
,p_button_name=>'SUBMIT_INFORMATION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8699345438869135)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8698178221869139)
,p_button_name=>'INVITE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8700916828869129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8699785474869133)
,p_button_name=>'REMOVE_PARTICIPANT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Participant'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8702128962869126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8701300914869128)
,p_button_name=>'CANCEL_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel Task'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8708628983869103)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_button_name=>'UPDATE_PARAMETER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8712348430869090)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8709055945869102)
,p_button_name=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_static_id=>'OPEN_DIALOG_SUBMIT_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Information'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_submit_info )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8714322864869082)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8713192484869087)
,p_button_name=>'ADD_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8746974380868955)
,p_branch_name=>'Reload Dialog'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.::P2_TASK_ID:&P2_TASK_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8671326559869309)
,p_name=>'P2_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8671797327869306)
,p_name=>'P2_CAN_UPDATE_PARAMS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8690255895869173)
,p_name=>'P2_NEW_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8689811538869176)
,p_prompt=>'New Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8691804239869164)
,p_name=>'P2_NEW_PRIORITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8691491921869166)
,p_prompt=>'New Priority'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select priority',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8693700422869155)
,p_name=>'P2_NEW_DUE_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8693305918869156)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Due Date'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(due_on, ''YYYY-MM-DD HH24:MI'')',
'  from apex_tasks',
' where task_id = :P2_TASK_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8695381097869148)
,p_name=>'P2_REQUEST_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8694936246869150)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8696992907869143)
,p_name=>'P2_SUBMIT_INFO_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8696504522869144)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8698580861869137)
,p_name=>'P2_NEW_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8698178221869139)
,p_prompt=>'New Potential Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8700129672869132)
,p_name=>'P2_POTENTIAL_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8699785474869133)
,p_prompt=>'Potential Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( ',
'           apex_human_task.get_task_delegates ( ',
'               p_task_id => :P2_TASK_ID ) )'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8706280229869111)
,p_name=>'P2_PARAM_STATIC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8706674518869110)
,p_name=>'P2_PARAM_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_prompt=>'Parameter'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8707082852869108)
,p_name=>'P2_PARAM_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8707484196869107)
,p_name=>'P2_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8707843817869105)
,p_name=>'P2_IS_REQUIRED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8705899068869113)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8712758160869089)
,p_name=>'P2_ALL_COMMENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8709055945869102)
,p_prompt=>'Include comments from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8713549691869086)
,p_name=>'P2_COMMENT_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8713192484869087)
,p_prompt=>'Comment'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>7
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8716625671869074)
,p_name=>'P2_ALL_HISTORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8714744953869081)
,p_prompt=>'Include history from expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id ',
'  from apex_tasks',
' where task_id = :P2_TASK_ID',
'   and previous_task_id is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8672118510869305)
,p_computation_sequence=>10
,p_computation_item=>'P2_CAN_UPDATE_PARAMS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case ',
'    when apex_human_task.is_allowed (',
'            p_task_id   => :P2_TASK_ID,',
'            p_operation => apex_human_task.c_task_op_set_params )',
'    then ''Y''',
'    else ''N''',
'end'))
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8737733491868989)
,p_validation_name=>'Delegate'
,p_validation_sequence=>10
,p_validation=>'P2_NEW_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(8691052606869167)
,p_associated_item=>wwv_flow_imp.id(8690255895869173)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8738130011868985)
,p_validation_name=>'Request Information'
,p_validation_sequence=>20
,p_validation=>'P2_REQUEST_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(8696148241869146)
,p_associated_item=>wwv_flow_imp.id(8695381097869148)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8738526209868984)
,p_validation_name=>'Submit Information'
,p_validation_sequence=>30
,p_validation=>'P2_SUBMIT_INFO_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a message'
,p_when_button_pressed=>wwv_flow_imp.id(8697703951869140)
,p_associated_item=>wwv_flow_imp.id(8696992907869143)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8738927214868982)
,p_validation_name=>'Invite Participant'
,p_validation_sequence=>40
,p_validation=>'P2_NEW_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(8699345438869135)
,p_associated_item=>wwv_flow_imp.id(8698580861869137)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8739306874868981)
,p_validation_name=>'Remove Participant'
,p_validation_sequence=>50
,p_validation=>'P2_POTENTIAL_OWNER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a potential owner'
,p_when_button_pressed=>wwv_flow_imp.id(8700916828869129)
,p_associated_item=>wwv_flow_imp.id(8700129672869132)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8739797024868980)
,p_validation_name=>'Update Parameter'
,p_validation_sequence=>60
,p_validation=>'P2_NEW_VALUE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a new parameter value'
,p_validation_condition=>':REQUEST = ''UPDATE_PARAMETER'' and :P2_IS_REQUIRED = ''Y'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_imp.id(8707484196869107)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8740139781868978)
,p_validation_name=>'Add Comment'
,p_validation_sequence=>70
,p_validation=>'P2_COMMENT_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please provide a comment'
,p_when_button_pressed=>wwv_flow_imp.id(8714322864869082)
,p_associated_item=>wwv_flow_imp.id(8713549691869086)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8719050881869065)
,p_name=>'Refresh - Comments'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8719421142869063)
,p_event_id=>wwv_flow_imp.id(8719050881869065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8709055945869102)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8720811292869054)
,p_name=>'Edit Parameter'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.parameter'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8721231993869053)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8705899068869113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8721758950869051)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8708628983869103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8722272475869040)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_STATIC_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8722731427869038)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8723274673869037)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_PARAM_VALUE,P2_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8723760918869035)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_IS_REQUIRED'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-required")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8724220592869033)
,p_event_id=>wwv_flow_imp.id(8720811292869054)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8736305330868994)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P2_NEW_VALUE.value != apex.items.P2_PARAM_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8736751409868992)
,p_event_id=>wwv_flow_imp.id(8736305330868994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8708628983869103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8737235938868991)
,p_event_id=>wwv_flow_imp.id(8736305330868994)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8708628983869103)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8719990394869057)
,p_name=>'Refresh - History'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ALL_HISTORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8720322096869056)
,p_event_id=>wwv_flow_imp.id(8719990394869057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8714744953869081)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8724759367869032)
,p_name=>'Add Comment'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8711958782869092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8725118987869030)
,p_event_id=>wwv_flow_imp.id(8724759367869032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8713192484869087)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8725626725869028)
,p_name=>'Submit Information'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8712348430869090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8726047298869027)
,p_event_id=>wwv_flow_imp.id(8725626725869028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8696504522869144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8726529214869025)
,p_name=>'Cancel'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8717426384869071)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8726932429869024)
,p_event_id=>wwv_flow_imp.id(8726529214869025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8727381967869023)
,p_name=>'Close Delegate Dialog'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8690666664869170)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8727758369869022)
,p_event_id=>wwv_flow_imp.id(8727381967869023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8689811538869176)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8728296998869020)
,p_name=>'Close Change Priority Dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8692592551869159)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8728688455869019)
,p_event_id=>wwv_flow_imp.id(8728296998869020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8691491921869166)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8729194178869017)
,p_name=>'Close Change Due Date Dialog'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8694170812869152)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8729518821869016)
,p_event_id=>wwv_flow_imp.id(8729194178869017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8693305918869156)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8730081608869014)
,p_name=>'Close Request Information Dialog'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8695739592869147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8730400055869013)
,p_event_id=>wwv_flow_imp.id(8730081608869014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8694936246869150)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8730946654869011)
,p_name=>'Close Submit Information Dialog'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8697377269869142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8731339273869010)
,p_event_id=>wwv_flow_imp.id(8730946654869011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8696504522869144)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8731867336869009)
,p_name=>'Close Invite Participant Dialog'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8698938485869136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8732212719869007)
,p_event_id=>wwv_flow_imp.id(8731867336869009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8698178221869139)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8732792420869006)
,p_name=>'Close Remove Participant Dialog'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8700547820869131)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8733195063869005)
,p_event_id=>wwv_flow_imp.id(8732792420869006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8699785474869133)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8733680845869003)
,p_name=>'Close Cancel Task Dialog'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8701779522869127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8734051043869001)
,p_event_id=>wwv_flow_imp.id(8733680845869003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8701300914869128)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8734505763869000)
,p_name=>'Close Edit Parameter Dialog'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8708231354869104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8734904326868999)
,p_event_id=>wwv_flow_imp.id(8734505763869000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8705899068869113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8735444519868997)
,p_name=>'Close Add Comment Dialog'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8713954317869083)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8735809078868996)
,p_event_id=>wwv_flow_imp.id(8735444519868997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8713192484869087)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8740549089868977)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Renew Task'
,p_attribute_01=>'RENEW_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_09=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RENEW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task renewed'
,p_internal_uid=>8740549089868977
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8740906981868975)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Claim'
,p_attribute_01=>'CLAIM_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8717822574869070)
,p_internal_uid=>8740906981868975
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8741352473868974)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Approve'
,p_attribute_01=>'APPROVE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8718669291869067)
,p_process_success_message=>'Task approved'
,p_internal_uid=>8741352473868974
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8741771992868973)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Reject'
,p_attribute_01=>'REJECT_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8718214551869069)
,p_process_success_message=>'Task rejected'
,p_internal_uid=>8741771992868973
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8742143252868972)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Release'
,p_attribute_01=>'RELEASE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RELEASE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Task released - can now be claimed by others'
,p_internal_uid=>8742143252868972
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8742540147868970)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Delegate'
,p_attribute_01=>'DELEGATE_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8691052606869167)
,p_process_success_message=>'Task delegated to &P2_NEW_OWNER!HTML.'
,p_internal_uid=>8742540147868970
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8742987434868968)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Priority'
,p_attribute_01=>'SET_TASK_PRIORITY'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_05=>'P2_NEW_PRIORITY'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8692970191869157)
,p_process_success_message=>'Task priority changed'
,p_internal_uid=>8742987434868968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8743348442868967)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Change Due Date'
,p_attribute_01=>'SET_DUE_DATE'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_06=>'P2_NEW_DUE_DATE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8694579008869151)
,p_process_success_message=>'Task due date updated'
,p_internal_uid=>8743348442868967
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8743747255868966)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Request Information'
,p_attribute_01=>'REQUEST_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_REQUEST_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8696148241869146)
,p_process_success_message=>'Information requested'
,p_internal_uid=>8743747255868966
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8744146628868965)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Submit Information'
,p_attribute_01=>'SUBMIT_INFO'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_SUBMIT_INFO_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8697703951869140)
,p_process_success_message=>'Information submitted'
,p_internal_uid=>8744146628868965
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8744582697868963)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Invite Participant'
,p_attribute_01=>'ADD_TASK_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_NEW_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8699345438869135)
,p_process_success_message=>'Participant &P2_NEW_POTENTIAL_OWNER!HTML. added to task as potential owner'
,p_internal_uid=>8744582697868963
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8744990156868962)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Remove Participant'
,p_attribute_01=>'REMOVE_POTENTIAL_OWNER'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_04=>'P2_POTENTIAL_OWNER'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8700916828869129)
,p_process_success_message=>'Participant &P2_POTENTIAL_OWNER!HTML. removed from task.'
,p_internal_uid=>8744990156868962
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8745364164868961)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Cancel Task'
,p_attribute_01=>'CANCEL_TASK'
,p_attribute_02=>'P2_TASK_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8702128962869126)
,p_process_success_message=>'Task canceled'
,p_internal_uid=>8745364164868961
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8745770441868960)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Update Parameter'
,p_attribute_01=>'SET_TASK_PARAMS'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_10=>'P2_PARAM_STATIC_ID'
,p_attribute_11=>'P2_NEW_VALUE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8708628983869103)
,p_process_success_message=>'Parameter updated'
,p_internal_uid=>8745770441868960
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8746158903868959)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_MANAGE_TASK'
,p_process_name=>'Add Comment'
,p_attribute_01=>'ADD_TASK_COMMENT'
,p_attribute_02=>'P2_TASK_ID'
,p_attribute_03=>'&P2_COMMENT_TEXT.'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8714322864869082)
,p_process_success_message=>'Comment added'
,p_internal_uid=>8746158903868959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8746514708868957)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CLAIM,SET_PRIORITY,SET_DUE,INVITE_PARTICIPANT,REMOVE_PARTICIPANT,RENEW,UPDATE_PARAMETER,SAVE,ADD_COMMENT'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>8746514708868957
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8683967707869205)
,p_region_id=>wwv_flow_imp.id(8672565801869301)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362317865359806322
,p_label=>'Actions'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-ellipsis-v'
,p_is_hot=>false
,p_show_as_disabled=>false
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8705396807869115)
,p_region_id=>wwv_flow_imp.id(8702529761869124)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="parameter" data-id="&PARAM_STATIC_ID!ATTR." data-label="&PARAM_LABEL!ATTR." data-value="&PARAM_VALUE!ATTR." data-required="&IS_REQUIRED!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':IS_UPDATABLE = ''Y'' and :P2_CAN_UPDATE_PARAMS = ''Y'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8684400871869198)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Renew Task'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$renew?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_renew )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8685052291869192)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Release'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$release?do=submit'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_release )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8685642309869190)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Delegate'
,p_display_sequence=>30
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delegate?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_delegate )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8686204420869188)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Priority'
,p_display_sequence=>40
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_priority?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_priority )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8686823450869186)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Change Due Date'
,p_display_sequence=>50
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$set_due_date?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_set_due_date )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8687401940869184)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Request Information'
,p_display_sequence=>60
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$request_info?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_request_info )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8688029547869182)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Invite Participant'
,p_display_sequence=>70
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$add_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_add_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8688601957869180)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Remove Participant'
,p_display_sequence=>80
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$remove_owner?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_remove_owner )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_comp_menu_entry(
 p_id=>wwv_flow_imp.id(8689271892869178)
,p_component_action_id=>wwv_flow_imp.id(8683967707869205)
,p_menu_entry_type=>'ENTRY'
,p_label=>'Cancel Task'
,p_display_sequence=>90
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$cancel?do=openRegion'
,p_link_attributes=>'class="taskActionMenu"'
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.is_allowed (',
'    p_task_id   => :P2_TASK_ID,',
'    p_operation => apex_human_task.c_task_op_cancel )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Submit Expense'
,p_alias=>'SUBMIT-EXPENSE'
,p_step_title=>'Submit Expense'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8776599154426930)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8648010860604494)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8778097316422008)
,p_button_sequence=>60
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8754229475822749)
,p_name=>'P3_EMP_NAME'
,p_item_sequence=>20
,p_prompt=>'Employee Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8754302838822750)
,p_name=>'P3_EXPENSE_AMOUNT'
,p_item_sequence=>40
,p_prompt=>'Expense Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8777387261422001)
,p_name=>'P3_EXPENSE_REASON'
,p_item_sequence=>50
,p_prompt=>'Expense Reason'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8777459674422002)
,p_name=>'P3_EMP_MAIL'
,p_item_sequence=>30
,p_prompt=>'Employee Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8777541819422003)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Submit Expense'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(8221790293067345)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8778097316422008)
,p_process_success_message=>'Expense Report Submitted!'
,p_internal_uid=>8777541819422003
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(8777676474422004)
,p_page_process_id=>wwv_flow_imp.id(8777541819422003)
,p_workflow_variable_id=>wwv_flow_imp.id(8749607966822703)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_EXPENSE_AMOUNT'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(8777709562422005)
,p_page_process_id=>wwv_flow_imp.id(8777541819422003)
,p_workflow_variable_id=>wwv_flow_imp.id(8749599110822702)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_EXPENSE_REASON'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(8777843097422006)
,p_page_process_id=>wwv_flow_imp.id(8777541819422003)
,p_workflow_variable_id=>wwv_flow_imp.id(8749848557822705)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_EMP_MAIL'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(8777995588422007)
,p_page_process_id=>wwv_flow_imp.id(8777541819422003)
,p_workflow_variable_id=>wwv_flow_imp.id(8749736791822704)
,p_page_id=>3
,p_value_type=>'ITEM'
,p_value=>'P3_EMP_NAME'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Pending Expense Approvals'
,p_alias=>'PENDING-EXPENSE-APPROVALS'
,p_step_title=>'Pending Expense Approvals'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8786196377374748)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8648010860604494)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787274483374742)
,p_plug_name=>'My Tasks - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(8786196377374748)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(8787365909374742)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8787365909374742)
,p_plug_name=>'My Tasks - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_id,',
'       task_type,',
'       task_def_name,',
'       details_app_name,',
'       details_link_target,',
'       subject,',
'       initiator,',
'       actual_owner,',
'       priority,',
'       due_on,',
'       due_in,',
'       due_in_hours,',
'       due_code,',
'       state_code,',
'       is_completed,',
'       outcome,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_human_task.get_tasks (',
'                   p_context            => ''MY_TASKS'',',
'                   p_show_expired_tasks => :P4_SHOW_EXPIRED',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P4_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P4_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'task'
,p_entity_title_plural=>'tasks'
,p_landmark_type=>'main'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&TASK_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.TASK.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    {case DUE_CODE/}',
    '        {when OVERDUE/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_HOUR/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <strong class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</strong>',
    '        {when NEXT_24_HOURS/}',
    '            <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            <span class="u-danger-text">&{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.</span>',
    '        {otherwise/}',
    '            {if DUE_IN/}',
    '                <span role="separator" aria-label="&middot;"> &middot; </span>',
    '                &{APEX.TASK.DUE_SINCE 0=&DUE_IN.}.',
    '            {endif/}',
    '    {endcase/}',
    '{endif/}',
    '{if !IS_COMPLETED/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    {case PRIORITY/}',
    '        {when 1/}',
    '            <strong class="u-danger-text">&{APEX.TASK.PRIORITY.1.DESCRIPTION}.</strong>',
    '        {when 2/}',
    '            <span class="u-danger-text">&{APEX.TASK.PRIORITY.2.DESCRIPTION}.</span>',
    '        {when 3/}',
    '            &{APEX.TASK.PRIORITY.3.DESCRIPTION}.',
    '        {when 4/}',
    '            &{APEX.TASK.PRIORITY.4.DESCRIPTION}.',
    '        {when 5/}',
    '            &{APEX.TASK.PRIORITY.5.DESCRIPTION}.',
    '    {endcase/}',
    '{endif/}',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'HIDE_BORDERS', 'N',
  'REMOVE_PADDING', 'N',
  'TITLE', '&SUBJECT.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8797943768374673)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8798480974374671)
,p_name=>'TASK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8798989774374669)
,p_name=>'TASK_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8799408825374667)
,p_name=>'DETAILS_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8799976053374665)
,p_name=>'DETAILS_LINK_TARGET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILS_LINK_TARGET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8800492259374663)
,p_name=>'SUBJECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBJECT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8800962065374661)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8801467110374659)
,p_name=>'ACTUAL_OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_OWNER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8801909988374658)
,p_name=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8802419007374656)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8802961152374654)
,p_name=>'DUE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8803403948374652)
,p_name=>'DUE_IN_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_IN_HOURS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8803984108374650)
,p_name=>'DUE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8804445469374648)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8804903761374646)
,p_name=>'IS_COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_COMPLETED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8805405476374644)
,p_name=>'OUTCOME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTCOME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8805933326374643)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8806403360374641)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8806947427374639)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8807497403374637)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8807923797374635)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8808402639374633)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8786885776374744)
,p_name=>'P4_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8787782619374739)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8788109081374737)
,p_name=>'P4_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(8788207203374737)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8791181876374703)
,p_name=>'P4_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8791845939374700)
,p_name=>'P4_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8792233231374699)
,p_name=>'P4_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8792629385374697)
,p_name=>'P4_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8793347068374694)
,p_name=>'P4_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8793716190374693)
,p_name=>'P4_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8794167242374690)
,p_name=>'P4_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8794568927374688)
,p_name=>'P4_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(8794614866374688)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8797281428374678)
,p_name=>'P4_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8787274483374742)
,p_prompt=>'Owner'
,p_source=>'ACTUAL_OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8810827287374622)
,p_name=>'P4_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8787365909374742)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8811234317374619)
,p_name=>'P4_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8787365909374742)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8811663495374618)
,p_name=>'Claim'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.claim'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8812092994374616)
,p_event_id=>wwv_flow_imp.id(8811663495374618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8812537237374613)
,p_event_id=>wwv_flow_imp.id(8811663495374618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.claim_task (',
'    p_task_id   => :P4_TASK_ID );',
''))
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8813032304374611)
,p_event_id=>wwv_flow_imp.id(8811663495374618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task claimed'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8813535062374609)
,p_event_id=>wwv_flow_imp.id(8811663495374618)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787274483374742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8814046487374607)
,p_event_id=>wwv_flow_imp.id(8811663495374618)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787365909374742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8814575769374605)
,p_name=>'Approve'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.approve'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8814952143374604)
,p_event_id=>wwv_flow_imp.id(8814575769374605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8815445778374602)
,p_event_id=>wwv_flow_imp.id(8814575769374605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.approve_task (',
'    p_task_id   => :P4_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8815961172374600)
,p_event_id=>wwv_flow_imp.id(8814575769374605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task approved'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8816450215374599)
,p_event_id=>wwv_flow_imp.id(8814575769374605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787274483374742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8816915701374597)
,p_event_id=>wwv_flow_imp.id(8814575769374605)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787365909374742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8820305395374585)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8787365909374742)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8820765836374584)
,p_event_id=>wwv_flow_imp.id(8820305395374585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787365909374742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8821273863374582)
,p_event_id=>wwv_flow_imp.id(8820305395374585)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787274483374742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8817476545374595)
,p_name=>'Reject'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.reject'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'body'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8817868322374594)
,p_event_id=>wwv_flow_imp.id(8817476545374595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_TASK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.dataset.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8818363985374592)
,p_event_id=>wwv_flow_imp.id(8817476545374595)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_human_task.reject_task (',
'    p_task_id   => :P4_TASK_ID,',
'    p_autoclaim => true );'))
,p_attribute_02=>'P4_TASK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8818880434374590)
,p_event_id=>wwv_flow_imp.id(8817476545374595)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'apex.message.showPageSuccess(''Task rejected'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8819346338374589)
,p_event_id=>wwv_flow_imp.id(8817476545374595)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787274483374742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8819855870374587)
,p_event_id=>wwv_flow_imp.id(8817476545374595)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787365909374742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8821753552374580)
,p_name=>'Refresh - My Tasks - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8822154848374579)
,p_event_id=>wwv_flow_imp.id(8821753552374580)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787365909374742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8822687373374577)
,p_event_id=>wwv_flow_imp.id(8821753552374580)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8787274483374742)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8808970608374631)
,p_region_id=>wwv_flow_imp.id(8787365909374742)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8809493319374628)
,p_region_id=>wwv_flow_imp.id(8787365909374742)
,p_position_id=>362316004162771045
,p_display_sequence=>20
,p_template_id=>362316605839802174
,p_label=>'Claim'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-user-plus u-hot-text'
,p_action_css_classes=>'claim'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':STATE_CODE = ''UNASSIGNED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8809988725374626)
,p_region_id=>wwv_flow_imp.id(8787365909374742)
,p_position_id=>362316004162771045
,p_display_sequence=>30
,p_template_id=>362316605839802174
,p_label=>'Approve'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-check-square u-success-text'
,p_action_css_classes=>'approve'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8810425408374623)
,p_region_id=>wwv_flow_imp.id(8787365909374742)
,p_position_id=>362316004162771045
,p_display_sequence=>40
,p_template_id=>362316605839802174
,p_label=>'Reject'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'data-id="&TASK_ID."'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-times u-danger-text'
,p_action_css_classes=>'reject'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':TASK_TYPE = ''APPROVAL'' and :STATE_CODE != ''INFO_REQUESTED'''
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Monitor Expense Workflows'
,p_alias=>'MONITOR-EXPENSE-WORKFLOWS'
,p_step_title=>'Monitor Expense Workflows'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8823732270366202)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8648010860604494)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8824852144366197)
,p_plug_name=>'Initiated by Me - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(8823732270366202)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(8824955522366197)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8824955522366197)
,p_plug_name=>'Initiated by Me - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workflow_id,',
'       workflow_def_name,',
'       workflow_def_app_name,',
'       title,',
'       initiator,',
'       state_code,',
'       created_on,',
'       created_ago,',
'       created_ago_hours,',
'       last_updated_on,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context => ''INITIATED_BY_ME''',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "LAST_UPDATED_ON",',
'            "expr": "last_updated_on desc"',
'        }',
'    ],',
'    "itemName": "P5_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Workflows'
,p_no_data_found_icon_classes=>'fa-workflow fa-lg'
,p_show_total_row_count=>false
,p_entity_title_singular=>'workflow'
,p_entity_title_plural=>'workflows'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8830642288366175)
,p_name=>'WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8831186392366174)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8831682874366172)
,p_name=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8832126355366170)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8832634014366169)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8833104682366167)
,p_name=>'STATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8833646315366165)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8834181346366164)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8834607679366162)
,p_name=>'CREATED_AGO_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8835132847366160)
,p_name=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8835642668366159)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8836152599366157)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8824459729366199)
,p_name=>'P5_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8825381692366195)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8825748140366194)
,p_name=>'P5_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'Type'
,p_source=>'WORKFLOW_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8826128766366193)
,p_name=>'P5_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.WORKFLOW_STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_workflow.get_lov_workflow_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8826870132366189)
,p_name=>'P5_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'Application'
,p_source=>'WORKFLOW_DEF_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8827203701366187)
,p_name=>'P5_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8827631955366186)
,p_name=>'P5_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8824852144366197)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'WORKFLOW_CONSOLE.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(8827709855366186)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8837163395366154)
,p_name=>'P5_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8824955522366197)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort By'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Last Update;LAST_UPDATED_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8837500782366152)
,p_name=>'Refresh - Initiated by Me - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8824955522366197)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8837909056366151)
,p_event_id=>wwv_flow_imp.id(8837500782366152)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8824955522366197)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8838467370366149)
,p_event_id=>wwv_flow_imp.id(8837500782366152)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8824852144366197)
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8836658328366156)
,p_region_id=>wwv_flow_imp.id(8824955522366197)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,:P6_WORKFLOW_ID:&WORKFLOW_ID.'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Expense Workflow Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Expense Workflow Details'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8840856585366140)
,p_plug_name=>'Subject'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title,',
'       workflow_def_name,',
'       initiator,',
'       created_ago,',
'       badge_text,',
'       badge_state',
'  from table ( apex_workflow.get_workflows (',
'                   p_context     => ''SINGLE_WORKFLOW'',',
'                   p_workflow_id => :P6_WORKFLOW_ID ) );'))
,p_template_component_type=>'PARTIAL'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'BADGE_COL_WIDTH', 't-ContentRow-badge--auto',
  'BADGE_LABEL', 'State',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_SIZE', 't-Badge--md',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<strong>&WORKFLOW_DEF_NAME!HTML.</strong>',
    '{if INITIATOR/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.INITIATED_BY_USER_SINCE 0=&INITIATOR!HTML. 1=&CREATED_AGO.}.',
    '{endif/}')),
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'TITLE', '&TITLE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8841228221366138)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8841703095366137)
,p_name=>'WORKFLOW_DEF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKFLOW_DEF_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8842208886366135)
,p_name=>'INITIATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8842763264366134)
,p_name=>'CREATED_AGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AGO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8843290760366132)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8843788424366130)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8844210192366129)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select activity_id,',
'       type,',
'       name,',
'       state,',
'       error_message,',
'       due_on,',
'       retry_count,',
'       start_time,',
'       end_time,',
'       initcap(state) as badge_text,',
'       case state',
'           when ''WAITING''    then ''danger''',
'           when ''COMPLETED''  then ''success''',
'           when ''TERMINATED'' then ''warning''',
'           when ''FAULTED''    then ''danger''',
'       end as badge_state,',
'       ( select max(workflow_id)',
'           from apex_workflows w',
'          where w.parent_workflow_id = :P6_WORKFLOW_ID',
'            and w.parent_activity_id = a.activity_id ) as invoked_workflow_id',
'  from apex_workflow_activities a',
' where workflow_id = :P6_WORKFLOW_ID',
' order by start_time'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P6_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'BADGE_COL_WIDTH', 't-ContentRow-badge--md',
  'BADGE_LABEL', 'Status',
  'BADGE_LABEL_DISPLAY', 'N',
  'BADGE_STATE', 'BADGE_STATE',
  'BADGE_STYLE', 't-Badge--outline',
  'BADGE_VALUE', 'BADGE_TEXT',
  'DESCRIPTION', '&ERROR_MESSAGE.',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'Y',
  'MISC', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{case STATE/}',
    '    {when COMPLETED/}',
    '        &{APEX.WORKFLOW.COMPLETED_SINCE 0=&END_TIME.}.',
    '    {otherwise/}',
    '        &{APEX.WORKFLOW.STARTED_SINCE 0=&START_TIME.}.',
    '{endcase/}',
    '{if DUE_ON/}',
    '    <span role="separator" aria-label="&middot;"> &middot; </span>',
    '    &{APEX.WORKFLOW.DUE_SINCE 0=&DUE_ON.}.',
    '{endif/}',
    '{if RETRY_COUNT/}',
    '    {case RETRY_COUNT/}',
    '        {when 0/}',
    '        {when 1/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE 0=&RETRY_COUNT.}.',
    '        {otherwise/}',
    '        <span role="separator" aria-label="&middot;"> &middot; </span>',
    '            &{APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE 0=&RETRY_COUNT.}.',
    '    {endcase/}',
    '{endif/}')),
  'TITLE', '&NAME.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8844677888366127)
,p_name=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8845153457366126)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8845621854366124)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8846002705366123)
,p_name=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8846512840366121)
,p_name=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ERROR_MESSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8847052076366118)
,p_name=>'DUE_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DUE_ON'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8847567124366117)
,p_name=>'RETRY_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RETRY_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8848015012366115)
,p_name=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8848581282366114)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8849053972366112)
,p_name=>'BADGE_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8849553905366111)
,p_name=>'BADGE_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BADGE_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8850025660366109)
,p_name=>'INVOKED_WORKFLOW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOKED_WORKFLOW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8851526759366104)
,p_plug_name=>'Activity Audit'
,p_parent_plug_id=>wwv_flow_imp.id(8844210192366129)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created_by,',
'       created_on,',
'       action,',
'       display_msg',
'  from apex_workflow_audit',
' where workflow_id         = :P6_WORKFLOW_ID',
'   and current_activity_id = :P6_ACTIVITY_ID',
' order by audit_id'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P6_WORKFLOW_ID,P6_ACTIVITY_ID'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8851964732366103)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8852456695366101)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_format_mask=>'SINCE'
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8852903661366100)
,p_name=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8853404844366098)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8854347165366095)
,p_plug_name=>'Variables'
,p_region_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select static_id,',
'       label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P6_WORKFLOW_ID',
'   and variable_type = ''VARIABLE''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P6_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8854769582366094)
,p_name=>'STATIC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATIC_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8855209208366092)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8855780781366090)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8856744100366087)
,p_plug_name=>'Edit Variable'
,p_parent_plug_id=>wwv_flow_imp.id(8854347165366095)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_landmark_type=>'form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8859500568366077)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label,',
'       display_value',
'  from apex_workflow_variables',
' where workflow_id = :P6_WORKFLOW_ID',
'   and variable_type = ''PARAMETER''',
' order by label'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$CONTENT_ROW'
,p_ajax_items_to_submit=>'P6_WORKFLOW_ID'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'OVERLINE', '&LABEL.',
  'TITLE', '&DISPLAY_VALUE.')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8859943403366075)
,p_name=>'LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8860455845366074)
,p_name=>'DISPLAY_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8860965469366072)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_msg,',
'       created_by,',
'       created_on',
'  from apex_workflow_audit',
' where workflow_id = :P6_WORKFLOW_ID',
'   and current_activity_id is null',
' order by audit_id desc'))
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_ajax_items_to_submit=>'P6_WORKFLOW_ID'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'N',
  'COMMENT_DATE', 'CREATED_ON',
  'COMMENT_TEXT', 'DISPLAY_MSG',
  'DISPLAY_AVATAR', 'N',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'CREATED_BY')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8861336266366070)
,p_name=>'DISPLAY_MSG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_MSG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8861882011366068)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8862392432366066)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_format_mask=>'SINCE'
,p_use_as_row_header=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8862866807366063)
,p_plug_name=>'Workflow Diagram'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>130
,p_plug_source_type=>'NATIVE_WORKFLOW_DIAGRAM'
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_navigator', 'Y',
  'initial_zoom', '0',
  'workflow_id', 'P6_WORKFLOW_ID')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8863209037366061)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--slimPadding:margin-bottom-none'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8840451375366142)
,p_button_sequence=>50
,p_button_name=>'TO_PARENT_WORKFLOW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'To Parent Workflow'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_WORKFLOW_ID:&P6_PARENT_WORKFLOW_ID.'
,p_button_condition=>'P6_PARENT_WORKFLOW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8853910355366097)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8851526759366104)
,p_button_name=>'CANCEL_ACTIVITY_AUDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8858788922366080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_button_name=>'CANCEL_EDIT_VARIABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8863670236366059)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8863209037366061)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8864097255366057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8863209037366061)
,p_button_name=>'SUSPEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Suspend'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P6_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_suspend )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-pause-circle u-warning-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8864469015366056)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8863209037366061)
,p_button_name=>'RESUME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Resume'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P6_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_resume )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-play-circle u-success-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8864808329366055)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8863209037366061)
,p_button_name=>'TERMINATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terminate'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P6_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_terminate )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-times u-danger-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8865273768366052)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8863209037366061)
,p_button_name=>'RETRY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Retry'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P6_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_retry )'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8859143440366078)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_button_name=>'UPDATE_VARIABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8839281152366146)
,p_name=>'P6_WORKFLOW_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8839668797366144)
,p_name=>'P6_ACTIVITY_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8840044569366143)
,p_name=>'P6_PARENT_WORKFLOW_ID'
,p_item_sequence=>30
,p_source=>'select parent_workflow_id from apex_workflows where workflow_id = :P6_WORKFLOW_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8857176553366086)
,p_name=>'P6_VARIABLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8857559292366084)
,p_name=>'P6_VARIABLE_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_prompt=>'Variable'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8857952539366083)
,p_name=>'P6_CURRENT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_prompt=>'Current Value'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8858302140366081)
,p_name=>'P6_NEW_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8856744100366087)
,p_prompt=>'New Value'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8865662829366051)
,p_name=>'Activity Audit'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.audit'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8866073794366049)
,p_event_id=>wwv_flow_imp.id(8865662829366051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8851526759366104)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8866594313366048)
,p_event_id=>wwv_flow_imp.id(8865662829366051)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_ACTIVITY_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8867057625366047)
,p_event_id=>wwv_flow_imp.id(8865662829366051)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8851526759366104)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8867509327366045)
,p_name=>'Cancel Activity Audit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8853910355366097)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8867971861366044)
,p_event_id=>wwv_flow_imp.id(8867509327366045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8851526759366104)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8868486608366042)
,p_name=>'Edit Variable'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.variable'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#VARIABLES'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8868810051366041)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8856744100366087)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8869303968366039)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8859143440366078)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8869836914366037)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_VARIABLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-id")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8870394881366036)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_VARIABLE_LABEL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-label")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8870841495366034)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_CURRENT_VALUE,P6_NEW_VALUE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.jQuery(this.triggeringElement).attr("data-value")'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8871326274366033)
,p_event_id=>wwv_flow_imp.id(8868486608366042)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_NEW_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8871806919366031)
,p_name=>'Cancel Edit Variable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8858788922366080)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8872292803366030)
,p_event_id=>wwv_flow_imp.id(8871806919366031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_NEW_VALUE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8872798268366029)
,p_event_id=>wwv_flow_imp.id(8871806919366031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8856744100366087)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8873240797366027)
,p_name=>'Cancel Dialog'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8863670236366059)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8873618196366026)
,p_event_id=>wwv_flow_imp.id(8873240797366027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8874175802366024)
,p_name=>'Disable/Enable Update Button'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_NEW_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.items.P6_NEW_VALUE.value != apex.items.P6_CURRENT_VALUE.value'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8874459353366023)
,p_event_id=>wwv_flow_imp.id(8874175802366024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8859143440366078)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8874923744366022)
,p_event_id=>wwv_flow_imp.id(8874175802366024)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(8859143440366078)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8875406614366020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Variable'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.update_variables (',
'    p_instance_id    => :P6_WORKFLOW_ID,',
'    p_changed_params => apex_workflow.t_workflow_parameters (',
'        1 => apex_workflow.t_workflow_parameter (',
'                static_id    => :P6_VARIABLE_ID,',
'                string_value => :P6_NEW_VALUE ) ) );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8859143440366078)
,p_process_success_message=>'Variable updated'
,p_internal_uid=>8875406614366020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8875844258366019)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Suspend'
,p_attribute_01=>'SUSPEND'
,p_attribute_04=>'P6_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8864097255366057)
,p_process_success_message=>'Workflow suspended'
,p_internal_uid=>8875844258366019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8876223768366017)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Resume'
,p_attribute_01=>'RESUME'
,p_attribute_04=>'P6_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8864469015366056)
,p_process_success_message=>'Workflow resumed'
,p_internal_uid=>8876223768366017
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8876644884366016)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Terminate'
,p_attribute_01=>'TERMINATE'
,p_attribute_04=>'P6_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8864808329366055)
,p_process_success_message=>'Workflow terminated'
,p_internal_uid=>8876644884366016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8877037045366015)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'Retry'
,p_attribute_01=>'RETRY'
,p_attribute_04=>'P6_WORKFLOW_ID'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8865273768366052)
,p_process_success_message=>'Workflow retried'
,p_internal_uid=>8877037045366015
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8877454166366014)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_VARIABLE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
,p_internal_uid=>8877454166366014
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8850501251366107)
,p_region_id=>wwv_flow_imp.id(8844210192366129)
,p_position_id=>348722977165395441
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="audit" data-id="&ACTIVITY_ID." aria-haspopup="dialog"'
,p_condition_type=>'ITEM_IS_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8851022826366106)
,p_region_id=>wwv_flow_imp.id(8844210192366129)
,p_position_id=>348722977165395441
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_WORKFLOW_ID:&INVOKED_WORKFLOW_ID.'
,p_condition_type=>'ITEM_IS_NOT_NULL'
,p_condition_expr1=>'INVOKED_WORKFLOW_ID'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_component_action(
 p_id=>wwv_flow_imp.id(8856296057366089)
,p_region_id=>wwv_flow_imp.id(8854347165366095)
,p_position_id=>362316004162771045
,p_display_sequence=>10
,p_template_id=>362316605839802174
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_link_attributes=>'class="variable" data-id="&STATIC_ID!ATTR." data-label="&LABEL!ATTR." data-value="&DISPLAY_VALUE!ATTR." aria-haspopup="dialog"'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_show_as_disabled=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_workflow.is_allowed (',
'    p_instance_id => :P6_WORKFLOW_ID,',
'    p_operation   => apex_workflow.c_workflow$_op_update_var )'))
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>false
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Oracle APEX Workflows - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8654178826604384)
,p_plug_name=>'Oracle APEX Workflows'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8655788114604292)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8654178826604384)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8654693921604369)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8654178826604384)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8655050657604299)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8654178826604384)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8655395075604297)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8654178826604384)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8657955398604281)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8657955398604281
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8658434499604280)
,p_page_process_id=>wwv_flow_imp.id(8657955398604281)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8658924201604278)
,p_page_process_id=>wwv_flow_imp.id(8657955398604281)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8656071922604289)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8656071922604289
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8656578745604286)
,p_page_process_id=>wwv_flow_imp.id(8656071922604289)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8657052994604284)
,p_page_process_id=>wwv_flow_imp.id(8656071922604289)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(8657516898604282)
,p_page_process_id=>wwv_flow_imp.id(8656071922604289)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8659816926604275)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8659816926604275
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8659448049604277)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8659448049604277
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
