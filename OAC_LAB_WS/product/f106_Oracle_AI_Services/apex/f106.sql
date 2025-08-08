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
,p_default_workspace_id=>9520444236666728
,p_default_application_id=>114
,p_default_id_offset=>7872712286274028
,p_default_owner=>'INSTITUTE'
);
end;
/
 
prompt APPLICATION 114 - Oracle AI Services
--
-- Application Export:
--   Application:     114
--   Name:            Oracle AI Services
--   Date and Time:   10:43 Tuesday August 5, 2025
--   Exported By:     MRVIRPURA_DIGVIJAY@YAHOO.CO.IN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     11
--       Items:                   23
--       Processes:               31
--       Regions:                 21
--       Buttons:                  8
--       Dynamic Actions:          2
--     Shared Components:
--       Logic:
--         Build Options:          3
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              2
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                14
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   3
--         Plug-ins:               1
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'INSTITUTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Oracle AI Services')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TRADING-APP114')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5A8143BDA7DA3D42F76D50E2D06D4E57A3C236E6D4258CA1ADFA8D39E02FD4F9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_accessible_read_only=>'N'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(41120350409443052)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo=>'#APP_FILES#app-114-logo.png'
,p_logo_text=>'Oracle APEX AI'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:W'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Trading App'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>24
,p_version_scn=>45145487195337
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'portrait'
,p_pwa_apple_status_bar_style=>'black'
,p_pwa_is_push_enabled=>'Y'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(7872712286273922)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(41121162429443046)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_nav_list_template_options=>'#DEFAULT#:t-Tabs--inlineIcons:t-Tabs--fillLabels:t-Tabs--small:t-Tabs--pill'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(41409921562442683)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(41291156377442926)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/oci_document_reading_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(316086884359)
,p_name=>'OCI Document Reading Credentials'
,p_static_id=>'oci_document_reading_credentials'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/remote_servers/vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(28921953668740251)
,p_name=>'vision-aiservice-ap-mumbai-1-oci-oraclecloud-com-20220125-actions'
,p_static_id=>'vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'https://vision.aiservice.ap-mumbai-1.oci.oraclecloud.com/20220125/actions/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('vision_aiservice_ap_mumbai_1_oci_oraclecloud_com_20220125_actions'),'')
);
end;
/
prompt --workspace/remote_servers/document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(28939645522510091)
,p_name=>'document-aiservice-ap-mumbai-1-oci-oraclecloud-com-20221109-actions'
,p_static_id=>'document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'https://document.aiservice.ap-mumbai-1.oci.oraclecloud.com/20221109/actions/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('document_aiservice_ap_mumbai_1_oci_oraclecloud_com_20221109_actions'),'')
);
end;
/
prompt --application/shared_components/data_profiles/oci_text_extraction_oacupx
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(11613451933083)
,p_name=>'OCI Text Extraction (OACUPX)'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(11635405933083)
,p_data_profile_id=>wwv_flow_imp.id(11613451933083)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(11936084933082)
,p_data_profile_id=>wwv_flow_imp.id(11613451933083)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12298137933082)
,p_data_profile_id=>wwv_flow_imp.id(11613451933083)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/data_profiles/oci_vision_oacupx
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(63429832678603)
,p_name=>'OCI Vision (OACUPX)'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63587581678603)
,p_data_profile_id=>wwv_flow_imp.id(63429832678603)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(63848502678602)
,p_data_profile_id=>wwv_flow_imp.id(63429832678603)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64127990678602)
,p_data_profile_id=>wwv_flow_imp.id(63429832678603)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/data_profiles/oci_document_reader_oacupx
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(12034922714606859)
,p_name=>'OCI Document Reader (OACUPX)'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12035061841606856)
,p_data_profile_id=>wwv_flow_imp.id(12034922714606859)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12035346358606855)
,p_data_profile_id=>wwv_flow_imp.id(12034922714606859)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(12035689496606855)
,p_data_profile_id=>wwv_flow_imp.id(12034922714606859)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/data_profiles/oci_document_reader
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(41937387645043321)
,p_name=>'OCI Document Reader'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(41937572331043320)
,p_data_profile_id=>wwv_flow_imp.id(41937387645043321)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(41937836280043320)
,p_data_profile_id=>wwv_flow_imp.id(41937387645043321)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(41938145142043320)
,p_data_profile_id=>wwv_flow_imp.id(41937387645043321)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
end;
/
prompt --application/shared_components/web_sources/oci_text_extraction_oacupx
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(12660989933081)
,p_name=>'OCI Text Extraction (OACUPX)'
,p_static_id=>'oci_text_extraction_oacupx_'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(11613451933083)
,p_remote_server_id=>wwv_flow_imp.id(28939645522510091)
,p_url_path_prefix=>'/analyzeDocument'
,p_credential_id=>wwv_flow_imp.id(316086884359)
,p_version_scn=>44956929131091
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(12915602933080)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(13252437933079)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(13689861933078)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(14031062933078)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "compartmentId": "#COMPARTMENT_ID#",',
'  "document": ',
'  {',
'    "namespaceName": "#NAMESPACE_NAME#",',
'    "bucketName": "#BUCKET_NAME#",',
'    "objectName": "#OBJECT_NAME#",',
'    "source": "OBJECT_STORAGE"',
'  },',
'  "features": ',
'   [',
'      {',
'        "featureType": "#FEATURE_TYPE#",',
'"generateSearchablePdf": true',
'      },',
'      {',
'        "featureType": "DOCUMENT_CLASSIFICATION",',
'        "maxResults": 5',
'      }',
'   ]    ',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(14479584933078)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'BUCKET_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(14992934933077)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'COMPARTMENT_ID'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(15520706933077)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(16011928933077)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'FEATURE_TYPE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(16451836933077)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'NAMESPACE_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(16978944933077)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'OBJECT_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(17510318933076)
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
end;
/
prompt --application/shared_components/web_sources/oci_vision_oacupx
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64586114678602)
,p_name=>'OCI Vision (OACUPX)'
,p_static_id=>'oci_vision_oacupx'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(63429832678603)
,p_remote_server_id=>wwv_flow_imp.id(28921953668740251)
,p_url_path_prefix=>'/analyzeImage'
,p_credential_id=>wwv_flow_imp.id(316086884359)
,p_version_scn=>44956935654149
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64792163678602)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65218204678602)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65614057678601)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(66006455678601)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "compartmentId": "#COMPARTMENT_ID#",',
'  "image": ',
'  {',
'    "namespaceName": "#NAMESPACE_NAME#",',
'    "bucketName": "#BUCKET_NAME#",',
'    "objectName": "#OBJECT_NAME#",',
'    "source": "OBJECT_STORAGE"',
'  },',
'  "features": ',
'   [',
'      {',
'        "featureType": "#FEATURE_TYPE#"',
'      }',
'   ]    ',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(66866084678601)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'COMPARTMENT_ID'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(67355118678600)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(67834057678600)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'FEATURE_TYPE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(69386575678600)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(90015896584547)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'NAMESPACE_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(90494230584547)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'BUCKET_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(90973845584547)
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_name=>'OBJECT_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
end;
/
prompt --application/shared_components/web_sources/oci_document_reader_oacupx
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(12036020381606854)
,p_name=>'OCI Document Reader (OACUPX)'
,p_static_id=>'oci_document_reader_oacupx_'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(12034922714606859)
,p_remote_server_id=>wwv_flow_imp.id(28939645522510091)
,p_url_path_prefix=>'/analyzeDocument'
,p_credential_id=>wwv_flow_imp.id(316086884359)
,p_version_scn=>44956741374235
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(12036299532606847)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(12036617817606846)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(12037040927606846)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(12037448854606846)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "compartmentId": "#COMPARTMENT_ID#",',
'  "document": ',
'  {',
'    "namespaceName": "#NAMESPACE_NAME#",',
'    "bucketName": "#BUCKET_NAME#",',
'    "objectName": "#OBJECT_NAME#",',
'    "source": "OBJECT_STORAGE"',
'  },',
'  "features": ',
'   [',
'      {',
'        "featureType": "#FEATURE_TYPE#"',
'      },',
'      {',
'        "featureType": "DOCUMENT_CLASSIFICATION",',
'        "maxResults": 5',
'      }',
'   ]    ',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12037805801606845)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'BUCKET_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12038385017606844)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'COMPARTMENT_ID'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12038896762606844)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12039306827606844)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'FEATURE_TYPE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12039804551606843)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'NAMESPACE_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12040376343606843)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'OBJECT_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(12040827327606843)
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
end;
/
prompt --application/shared_components/web_sources/oci_document_reader
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(41938466171043320)
,p_name=>'OCI Document Reader'
,p_static_id=>'oci_document_reader'
,p_web_source_type=>'NATIVE_OCI'
,p_data_profile_id=>wwv_flow_imp.id(41937387645043321)
,p_remote_server_id=>wwv_flow_imp.id(28939645522510091)
,p_url_path_prefix=>'/analyzeDocument'
,p_credential_id=>wwv_flow_imp.id(316086884359)
,p_version_scn=>44956741517249
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(41938644697043320)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(41939029271043320)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_operation=>'POST'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "compartmentId": "#COMPARTMENT_ID#",',
'  "document": {',
'    "namespaceName": "#NAMESPACE_NAME#",',
'    "bucketName": "#BUCKET_NAME#",',
'    "objectName": "#OBJECT_NAME#",',
'    "source": "OBJECT_STORAGE"',
'  },',
'  "features": [',
'    {',
'      "featureType": "#FEATURE_TYPE#"',
'    }',
'  ]',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41940485065028824)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'COMPARTMENT_ID'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41940976751028824)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'NAMESPACE_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41941400807028824)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'BUCKET_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41941911698028824)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'OBJECT_NAME'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41942401049028823)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'FEATURE_TYPE'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41942945145022064)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'RESPONSE'
,p_param_type=>'BODY'
,p_is_required=>false
,p_direction=>'OUT'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(41943318842018045)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_web_src_operation_id=>wwv_flow_imp.id(41939029271043320)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(41939460121043319)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_operation=>'PUT'
,p_database_operation=>'UPDATE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(41939849058043319)
,p_web_src_module_id=>wwv_flow_imp.id(41938466171043320)
,p_operation=>'DELETE'
,p_database_operation=>'DELETE'
,p_url_pattern=>'/:id'
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11294346607155985)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(11290714868155997)
,p_version_scn=>39413417996418
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11294770701155983)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(11290440417155999)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41121162429443046)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44958648092497
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41420454887442626)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18606391908631)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Text Extraction'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64994731401516)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Key Value Extraction'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(82132821397224)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Table  Extraction'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(111186764220798)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Image Classification'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(151227406819150)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Object Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(326057646914902)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'OCI Document Understanding'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(41409921562442683)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39414582649114
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9166300735950428)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41421976203442611)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41422448819442610)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(41421976203442611)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41422876357442609)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(41421976203442611)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/app_114_logo_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001F4000001F4080200000044B448DD000078D849444154789CEDBD7980244599F7FF3C11997574F5DD3D373303CC3030C3CD705F0A82C28228C7AA8B281EABAEBEAEBBEBAEC77AAEFBBAAEC7BA0AB2AB3FD9';
wwv_flow_imp.g_varchar2_table(2) := '77BDC5FB0614C50304B90F3986630E8619E6EAFBA83333E2F9FD1199599955D53D5D3D55DDD539CF8706BAABB22223ABBBBEF1E4379E78028908188661987821E6BB030CC3304CE3617167188689212CEE0CC3303184C59D61182686B0B8330CC3C41016';
wwv_flow_imp.g_varchar2_table(3) := '7786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8';
wwv_flow_imp.g_varchar2_table(4) := '330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D';
wwv_flow_imp.g_varchar2_table(5) := '61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0C';
wwv_flow_imp.g_varchar2_table(6) := 'C3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C61716718';
wwv_flow_imp.g_varchar2_table(7) := '8689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC330';
wwv_flow_imp.g_varchar2_table(8) := '4C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC198661';
wwv_flow_imp.g_varchar2_table(9) := '62088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C61716718868921D67C778061E6020AFDC7FC8F8227B0F64BD0FF0F7A07E01407324C2B82E4FF91';
wwv_flow_imp.g_varchar2_table(10) := '334C0C202022F35FEF0F1B111150344299355175CB18D67F86691958DC99050C1111902602000494623A9BB1A89CA272264B8549275F50A542A9A84817954B4068A27A3F424F492951A6AC64D2B23376BA23914E4A3B29ED69145C91361F254414E06B3E';
wwv_flow_imp.g_varchar2_table(11) := 'C3CC1F2CEECC42828834101121A2C41A523E56C8EECE8EEC9D1C7A213BBC636C605F7E6C576E746F6E6CAC303156CC66DD42DE75F2CA71B5A3950B409E570300188DBF11844C4869A52CBB4D263276AA2395E949B62F4A77ADC8742F49752DEFE85F99E9';
wwv_flow_imp.g_varchar2_table(12) := '5D92E95B96E9E94EB6574BB9917BA3F52CF5CCDCC3E2CEB43A9AC844E81245854AEECB8E6E1BDDFDECC8AE2707776C1EDDBD6574CF9E89C1A162B658CA0328D00488800842000A1002100105A0100828040020A2F9001000F8DE0D0190EFC10012100101';
wwv_flow_imp.g_varchar2_table(13) := '900652401A407BA71752DAA9BE64FBD2F6FEC33B97ACEB5EB6A167E5115DCB0EEB5ABA2CD31BEE271128520D34881866BFB0B833AD4810A15B42861FDF971D7D6A68C7A37BB73EB067F31303DBB78FEE192C4C805B02044001C20269492905CA40430901';
wwv_flow_imp.g_varchar2_table(14) := '400793A8E59955FF001D88AD09DE4353AC0880488068BEF543700244F2461D0D5A817641B9001A0841DADDA9F6D59D4B36F4AEDCB878ED49FD6B8EEA3DA442EB5DAD10CD48C542CF340B1677A685D0449AB4401421CBE5F9D1BDF7EFD9FCA79D4F3EB0F3';
wwv_flow_imp.g_varchar2_table(15) := 'A94D433BF7E5C6409700102C1B2CDB16965149427F2A1500808090D0283BF8D1B90705DA5DADEF02012070CFFDC388D0BC0C09C988BBF794771CA2B90930639252A04BA014900669F7A43A8FEA5971F29223CF5ABEFE94C5471CDEB5B4EA7A0587F34CC3';
wwv_flow_imp.g_varchar2_table(16) := '617167E61F4D5A134921824876383F71FF0B4FFF6EDBC3773EFFF8E383CF8FE727402BB06CB412099930CAAF893490798571B78306CDDF7448BB292C9EA1B953EF3042287F0C440D9D0DE93B10A21FFBD7BE1C13E19B285F1369ED825B02E580906DC9F6';
wwv_flow_imp.g_varchar2_table(17) := 'A37B569CB96CC34B569D70DA922317B77507AF72B5AA18D518E640607167E60D22AD8104C840799F1EDAF9BBAD0FDFB6F9817B773DBB6B7C00940356422492092911D0242192C977AC8AB5ABC49DA06CA3185BA5FCA75E7E39024254DCA15ADF4D206F46';
wwv_flow_imp.g_varchar2_table(18) := '122404242F8E9FC9651A9F1D11894079425F0221FB327DA72D5EF3D2551B5FB2EA8463FA5607C7BB5A712CCF1C382CEECC5C4340441A11D15F20FDE89EADB73E73CF2F373F78FFEE2DB9DC28A01489946DD9C2333A3445036D081B2900542BF3905083C9';
wwv_flow_imp.g_varchar2_table(19) := '55091E11B5C41D6AE87BB441EF3600001035800C7F6048E82903F85A2000A210889A482B17DC02682593ED1BFB0FFD8BD527BFFCF0D34E5ABCD61C691C9BEA39648699212CEECCDC41A409B4406F5D74D17DEA96A7EFF8CFBB9F7960F79385C2245849CB';
wwv_flow_imp.g_varchar2_table(20) := '4E26A40DC6A801320A8EE44D6796318E87FF0801A0C00AA31C800821183F0889A01CC74354DF8327BC07BDD355C7EF84429067CE9813D3ACE7448388DED50A9C02B8254CB69DBC78EDE5879EFA8AB5676EE85D650E53A4006AE77D32CC34B0B833738009';
wwv_flow_imp.g_varchar2_table(21) := 'D58591CB5C6978EBF02DBBC7BF7DF3334FDD70FF62A53A13A9A48592883469A3D081F561BE0188E8BBA7C551A3BCC299F10FF5FE0D0EC69AE64CAD1B825AE6BB06810068666BFD571EE8272808E75DADC02D825B4C24DBCF5D7ECCAB8F38FBD2C34E5B9A';
wwv_flow_imp.g_varchar2_table(22) := 'E9318729D29C60C3CC1C1677A6895484EA7B26EE7F7CCF4D5B877E5470B7FF72CBAA5F6E3921614B295CA5237F858176030189902F5221EE2175AEE9CC00F8613F21F89933043A38B25ADC213C66D4165202014022F4F2D907EF959D053019924A2B70F2';
wwv_flow_imp.g_varchar2_table(23) := 'A0DC451D8B5E79F8E9AF3FEAFCB3571C638E61479E99212CEE4C5320D200842801C05193CF0EFEE4F13D5FDD3EF2474B148548DEF4D829F7EE5A964AE68DFC579766091B28E1C9CFCA2C172F37D13BACA6BE5767CE40E88435F5BD2233B2B23D2444A4B2';
wwv_flow_imp.g_varchar2_table(24) := 'BE4792231B0202081480A85C079C1C08EB8C65EBDFB8FEC22B8F38BB37D50E008AB4770CC34C018B3BD360883401099400305EDCF1C49EAF3DB1F7EB23B9678944773A3956CCFCF703C73F37DCD9962A2A63881345BC9220CFD03C18C963A1B0DA56C7EF';
wwv_flow_imp.g_varchar2_table(25) := '41AC5D953CA30184691001286A9487D3DEC97426FCAC402C67BE97CF438848A83DD7C8487DE34140295011502907DA3DA473E9EBD7BFE48D1B2E5CDBBD1C00146900603B9EA9098B3BD330083410980495C1EC138FBCF0A5A707BF972DEEB32D1BA1BD23';
wwv_flow_imp.g_varchar2_table(26) := '517A7EBCEDBFEF3B69309F6E4B9694098F4558822BA9114A43740F02F472CEA3D17D75E68CC98D2CC7F69599EF539BEF66B636DA470420100420CAD60C923FF3DB1484B16BDC2294F2EDE9CE57AD3DFB1DC7BF7CE3E2B500A0890088A378A6021677A601';
wwv_flow_imp.g_varchar2_table(27) := '106820CF84D93BF9D0833BAFDF3CF0A3823B91B4D252245D0D1D89FCB3C3DDFF75FFC69C63252DA5835786B4B886B89BC09980103486662E0542C86EA1A83A83A8A1B2047ECE8D4955F75CF81A93AB356E080444DBF357306195F90ECD9377AF6F028552';
wwv_flow_imp.g_varchar2_table(28) := '2E94B2D24A5F75F869EF3CF115672F3F1A0094D6801CC5336558DC9903C224AD1B1366DFE423F73EFFE92D433F2EA942CA6A17681129574347D2D934D8FBA5FB4E2C696159AE2609A1AC95B0575EE36F316492843267CA4A5F33BA2701A1C950F2325A90';
wwv_flow_imp.g_varchar2_table(29) := '80101135824979D738DDE4EAD4CB56FD5263A6EE409019E93DB8FF37ED00410021A4D20A8A5990F62B0F3BE51F4FBAD2CCB82AD25C9B8C31B0B833B384808894C98419CC3E7EDF8ECF3C3DF00357E59256BB404B93022045D89170360F755F77CF464568';
wwv_flow_imp.g_varchar2_table(30) := '4BE57A112F86A6346B540E00F0CC0F13BC9B27B40807EFFE51D5592EE1012314C393E7E18BC05B99CA9C992E73C61F29BC2610FC9A337EF79B69CE843112AF49536112A4FDEA3567BCF794579B35504A2B11AAE5C01C9CB0B833B38148191366BCF0FCFD';
wwv_flow_imp.g_varchar2_table(31) := '3BFEF3F13D5F29B9E349DBC8BA6B8E511A3309E7F9B1CECFDF7D72490B5B2AB3D2547BB9E7E8CF705258DFAB7322C13749BC45FFDE73910415D35439C6F78DF2EAB204918204FBCB8C0CB78902A9B2C1CACC192420D473BC2F93F425DEB292D7AE3FFF7D';
wwv_flow_imp.g_varchar2_table(32) := '27FFE511DD2B0040916697E66086C59DA90F220D0088A2A4261FDA79FD832F5C9F2DEE4DD919817620EB00A00953961ACAA53EFBC753274A76C252CA2BA70BE0E9BB0000DF3DA10A5F3B1CBF7B117CB0AC293824F4925A99339E9B5FA9EF428396E02F8F';
wwv_flow_imp.g_varchar2_table(33) := '42202D220E4E4536BDF61F09EE21FC06CB313DF9E6BB7F8A79F84C492195D65018EF4C77BEEBF8CBDEBDF1CA9E64BBA952C9127F70C2E2CECC1C539F5602C0D303DFBF6BDBBF0C649F4CD969894963C204C769425BA8A2B23E7BE7297B726D2913B3A3B7';
wwv_flow_imp.g_varchar2_table(34) := '5614CA76874008B91CBEFD021513A46113679ACC19CF23C15AFA1E4A6CF7468AF22B35D6BD6C9528F073D05FD684C1B0D0ECCC99A9F0BC78E54261E2B09E151F3DFD9A6B375C08BCB4F56085C59D9911810FB36FF2D13BB67E70EBF0CDB6B06D99A990F5';
wwv_flow_imp.g_varchar2_table(35) := '8084D4D7DF7DD2A681FEB66451695156C2D03C2A95CD772FB31DB01C685339E5DDC764CE54483F56C4DA4818FA9BAE51DFD13B0B008257071E7D65AE2C3B33CD0D41A8410020EFD4A17B8090DACF29662F59D72982933F7FF549FF76D69B4E5F7A240028';
wwv_flow_imp.g_varchar2_table(36) := '5212E57E5FCEC4061677663F04F9308ECADEFBFC271FDCF979474DA6EC2EF378F5F19AB02359FAC643C7FC61DBAA4CAAA074D98F06306AABA1AC98117DAFC89CA910F7F053E5C9D54A710798AE6624F92A1E88BBD74E7872759ACC19042FD532D460B860';
wwv_flow_imp.g_varchar2_table(37) := '5959DF2B964ACD31021151A8C2A494F25DC75DFAE1D3AFE949B62BD2BCA1EBC1038B3B330DA4FD7C986DC3BFFCFD96F70F4C3E9AB2DB054A4DAAE60B146157AAF49B6757DFF4C8864CB2A8C8F3B3A3F5BF2AF45D0413A20035963561608553396B25F257';
wwv_flow_imp.g_varchar2_table(38) := '3B6D6664CDCC190022F0D65BF9250422817639782F4F0B846B46861B0C6CA5B23943A6FCFC7C7BDD12A5220585F1B5BDAB3F75F69BAE587B160028ADA598EF9E31CD87C59D990A4FD90BEEF01D5B3FF8E7DD370AC4846C9FCA8701004DD8663B9B87BAAF';
wwv_flow_imp.g_varchar2_table(39) := 'FBE3C9526A2F6DB046A54604F4427E5F82CB3B9EEE27ED1DC024AA4782FAA8015299A55EA9C5FEE54532674C86A38E9C7A9A1B82296A8AA130BBFC094FDCB1C13567668725A4EB14C02DBD6EFD4B3E75CE5B96657A94D642B00B1F7358DC991A040EFBD6';
wwv_flow_imp.g_varchar2_table(40) := 'A15B7FBBF9EF86F2CFB6D99D00485304EC00400012C951E253BF3F6D28974ADA4A9B1543358F16E0F930E5E03DB4AC29B204A952E24325622A12DBC3075064FF0D2C4B79E42A05208950FA0B85DB81A8D56EEE0EA630DFFD71C35831FEB2267FC3A6A9DE';
wwv_flow_imp.g_varchar2_table(41) := 'B3B9C31427D0F9B1555DCB3E73EE5FBFEA88730140692505BBF0B185C59DA944932BD07254F68EAD1F7868D7172CB46C9909A7394EF12A6C4F966EBCE7F8FB762E6B4F969431D4836CC26A027DAF953963E277A3BAD5E25E3EE9549933555A1CDC108433';
wwv_flow_imp.g_varchar2_table(42) := '23C95B2555DE8D8FF6973953BD6C3554F70CC19B240EF4DD57FCD6C012D2758BE014DE74CCC5FF71EE5B7A92ED2E298B6759630A8B3B53C64F4511BBC6EFFDF5336FDF33F1705BA20BA698380DA33476A69C3BB6AEF8FA03C7B4A73D6537200A028A84D8';
wwv_flow_imp.g_varchar2_table(43) := '65F33D9CF65E913913494A894EAB42607563A5DA860F43A895C518B95CC0B0BE7B7DC3900B3F6DE60C0140659D8360E44080A066E4FC64BED7C49B68CD8D1ED9B7FA8B2FF9DBF30E39DED4D2E78A05F183C59DF108AC9807777EEE8EAD1F22282664A726';
wwv_flow_imp.g_varchar2_table(44) := '67062F445BEA917CF293BF3DDDD12885AEF6D96B38EF50CE9C81D0B2A619D69C092F2BD5582373067C0307A6DC1C3578B072B7D5A932678236A7CE8C346B9E10D05B64E537329F9933D558C2724B3949F491D3AFFEC869AF055ECE1A4758DC1900DF8AC9';
wwv_flow_imp.g_varchar2_table(45) := '3B43B73DF3B6A7F6FD306DB723CA691CF6304490B6DD1BEE3AE9F13D7D6D0947870C994861F45AFA8EA1D28CD5FA1E9EB7ACA9EF41FB217D0F578FF432DF75D818A92A4B40E5234DEC1D996AADB88A1AE64C343DDFBF562214A19A6204D01293AB01C2DC';
wwv_flow_imp.g_varchar2_table(46) := '51E5C62E3EFCF41B2FFCFB15EDFDAE56165BF03182C59DF1D69DEE1ABFE7964D6F18CE3FDD66774F93125381B1DAFFB875E5D7EE3FBA3D55507EF65FB5B843957BEEE15B16C1E46AC5B2A67247A399EF15BB354DB7DB6AB827BE3953B9E7AAF0043B3878';
wwv_flow_imp.g_varchar2_table(47) := '3FE67BF930A41AA2ED07EE5ED919ED5D4E2B810052586E7E6C65C7E2AFBEEC1FCF5F7902AF658D132CEE0735E4D908E2D1DD5FFEEDE677131513B27DBF73A7A1978325F46431F1C9DB4F2FB896145A43D969A950BD502ABBFF2305F67A387306006439AA';
wwv_flow_imp.g_varchar2_table(48) := '8E6613D65CD3045173269239637E0461326182836B993326B62E87F3B4BF0D3D4299EF15D93DE6DE85C89B590DDE87B9AE293613A490CA2948529F3EFBCDEF3EE94A00D0A479EB8F18C0BFC2831722852080E837CFFEEDAF9E7A9B449849564C184D98B4';
wwv_flow_imp.g_varchar2_table(49) := 'D42F1E5F339A4F5952533482AD8E1BB0E6B3BE466228880FCDC0024C117F1051F814C19C25862670C9FF37ACBE35EF20BCDDF2FC571A499E2AF0F14E5DB66122834E708C973D1F384F24A6BA9679446925ACA4B6D2FFF8BB2FBEF1B6CF16DC9240A1F47E';
wwv_flow_imp.g_varchar2_table(50) := 'A6D099D68723F7831463B2674B7B6EDE74EDB6E1DB32896E224533B362FC16B0CD769EDAD777FD1D27A56C1559760F5033E9056006E64C901919B2C44DB63846D683869BF432DF23B931D39A3381A3E21F1D64CE1090089E208C0C05D3D59C819A1B7A94';
wwv_flow_imp.g_varchar2_table(51) := '6B46FA99F02D943913C6AB48931D39F390E3BEFD17EF5FDDB1982DF8850E47EE072346D907B28F7DE79173B78FDC9649F46872EB5276004020578B9F3D7EB81F5D07D1724856A92A4CA65A06359465324896213FEA0EE7BB4C158B54B7193ED0DBDE3A74';
wwv_flow_imp.g_varchar2_table(52) := '58D508636E1DB0FC0379067CB81D0C7583A842F92BDA442FFAA7F2CFFE8B6B5EC13C4340AE5656A6F7EEDD4F9EF3DD7FBC67CF539690AE9ED18C3AD39AB0B81F741865DF36FCCBEF3C72DE58616BDAEE9E49BE63054A637BD2B9E7B9E55BF6F5A4138E26';
wwv_flow_imp.g_varchar2_table(53) := 'A38395B12C04724C91876AB4E8BD5400A008CC140A07D05E124E2D1D27200A8A0A7B513944564F79A3C4945A1C3C28C0776782CC99C87844916FC30386FFA21AFD0B2FCE0A12E95B1057BB56AA63476EE4821FBEFFFBCFFED112D2D575D8744C4BC1E27E';
wwv_flow_imp.g_varchar2_table(54) := '50E1958B796CCF577FF4D8654A67EB9A3E0D63493D5E48DCF6D4EAA4AD484B8040D710AA75535766794F11BC870E20F08A8B05FBD751C410AF24B492156BDE83F8AF0D9B22537A92E86DD1E1CF849603F88A590573BA69A372F48C7FD49148BF55ED5057';
wwv_flow_imp.g_varchar2_table(55) := '2B61A7B200AFBAF9E3D73DF2534B588A74BD77754C2BC0E27EF040045AA0BCF7F94FDDFAD41B6D999422315571C7E9518499847BC7E6957BC733094BFB41B73723698E4112A1BFAE2A35A648D1F5481FFD172040287E175861CE845E8E18999E1561B50D';
wwv_flow_imp.g_varchar2_table(56) := '07EFD513BC3583770053DDC64C99FA33ABD3CDC786EAFCD6D4771124594E73DED6419316428A64E6EF7FFB850FDEFD55898268EA8190695558DC0F0A08888010E4EFB6FCE3EFB7BC3F6D772288FD161598A229B0851E9C4CDFB1F990B4ED92B7F4C82403';
wwv_flow_imp.g_varchar2_table(57) := '9A58DB8BB62312A6C35A3CB52951F6D9CBE991E5D701D68CA0CBBE364513DE2B9EF6F55DD4EA5858BC3CCF3D4897F1979CD6E8AF7F3F1109C9AB6708C88C51DA777ABC826553BE0FF38D262202ABADFB137FFAC65B6FFF8299DDD62DDC61A61A16F7F843';
wwv_flow_imp.g_varchar2_table(58) := '5EFD5A71DB336FBBEFF9FFCC24BA8988A628E7B5FFD608DB6CF777CFAC1CCEA66CA143C2EA3B18E169442F7E37816BA58C5606EFA6015DF6B1037D272200ED5F0A207A99EA15B995DEB04210798AB042DFA942DF8D3A473267BCFB06F2953A92A21FFDB1';
wwv_flow_imp.g_varchar2_table(59) := '460E4F7081587E4FBC2C192CBF152DAEEF04A4B4B632BD373EF293BFBAF5930480887A560101332FB0B8C79C208CBC79D3B50FBFF0E5F6442F919E75C60611D852ED9DC8FC69DBF2B4ED6A8D10B6C249F85AEC1D1F75A86B18CD950794BF09A7AF842757';
wwv_flow_imp.g_varchar2_table(60) := '6BC7DA5E6B88A8A9EC90945BAE9CE50D351EB93DF0B6DF335D332529CBE36024780F0D05DEA022C20380AEF50E9B0342DBABB6F85A500270B5B2337DDF79F23797FFFC5F5DAD040A8EDF170A2CEE71863C39A19B9F7ADD137BBEDE9EECD5E00012CE1602';
wwv_flow_imp.g_varchar2_table(61) := '91B6E9CECD878CE593B6F40A84856732C34B78FC283ED2A1AA2E4E25825EE64BA83641B9F170AC5D19BC031090D9CD236ABF5476A3BC80D46FB0B23E8C776BE1592A66B7D5AA59DF08B5C72A3F8B277C79E604D4C29933018E76ED4CEFCF9EBDF3CA5FFC';
wwv_flow_imp.g_varchar2_table(62) := '6B49B988C8FABE2060718F2DA198FDF54FECF9567BB26716298FD106212169289BBEE7B9A569DB55BA8634D7D6E23055216DC59F60596D236386B92128CFB34E37BF579D5C1FEE5408A4A8575ED5DF7264ADC9F39DA695B5482A7DEDBE052E4F58ED5B5D';
wwv_flow_imp.g_varchar2_table(63) := '2B8DBEFFFCD9BBAEBAF9E325E508D6F785008B7B5C3173A8FAE64DD73EB1E75B1D893EA555B0B266765FA445CA567FDAB26C249BB2858EC8970E96E39B82325E206C7A12CD9CA9EAE854993300BE39133650FCFED47248BC1FD1CB76D715AE8757BB1D42';
wwv_flow_imp.g_varchar2_table(64) := '7D0B45F7148DADC32A8D18AE0E3FD5B2A6E0110C1E0946320AAE23F0D94365835B3E78070047BB56A6F7E7CFFEF155377FBCA81CE4F9D59687C53D961011218A5B9F7EF3937BBFD991EC57DA3526F2817C49411385C4DD5B97252D5753856C86271801FD';
wwv_flow_imp.g_varchar2_table(65) := '49D448BA48402D3F3AA474C1358466262333ABFEF153EB3B844436F254E8D4D3644686D3BABD701D09CC48506B83EE8A066B385191644D011AC23567A87A6EB925713D7FE68FAFBAE5131A080134E7BFB7302CEEF183346944F1EB67DFFEC49EAFB527FB';
wwv_flow_imp.g_varchar2_table(66) := '35B9B336D9C36E7B5B423FF4FCE27DE3E984AC9467CF54D69E9912ACC70C1F00108ADFABB5ACE65C6BA89241B06CB5DC72682E37ACD42629DBDB9E9AC2DB9A560E09261BA63A6F122B32672293C6888440E50F0E5634E8973AA8B82E34BBB47ADE7F3957';
wwv_flow_imp.g_varchar2_table(67) := '148100B1356B8A55E368D7CEF4FDEC993B5EFBCB4F2362399D88693D58DCE386262550FE61EB7B1E79E14B99C422DDA0E5E3085474E45D9B97595664E168F498B2D2854A08F8CF4634B4326D1CABA36F2F3332F8CE286ED80C881421ABEE50C42A89D82F';
wwv_flow_imp.g_varchar2_table(68) := '9163914084B7CE8B0C1841E60C10E8EA4A96352E2D3863F04339BD07CA89A11ABCC968F2F6F306120B42278DFFFEDD276E7BEBED5F902894667D6F5158DC6385A91B73FF8EFFB86FC77F6412FDB32B2D50AB594C27D533FBBAB70FB5A72DD74F2DA97528';
wwv_flow_imp.g_varchar2_table(69) := 'F9D60961D49C0947F41075B8BD9FAB468C90E0024039C40E6656CBFD0867CE44F267FC571B6F3D9C1B53EE708554FB7705159933E5BB05E3704DADEF35CAE9E88A1B022F671FC91BE5CC60B020CC770070B4B2DBFB6E7CE4271FBCFB6B96102ED7076E49';
wwv_flow_imp.g_varchar2_table(70) := '58DCE38351F627F67EE38E6DEFCB24FA08669FCF1E06FD825C776F591A4AD0A6A9166D42300D6ACA89858D883054C37C8F1AF935C264FF868002C7062B63EDA819141A30BC1B0B040414840285F992555F82500A21CA626C2E08BDC54B7E443F7D150184';
wwv_flow_imp.g_varchar2_table(71) := '5AE6BBF78C087A5BF93B5A08E60C00385A596D3D9FF8D337AE7FF4E736D78F6C49ACF9EE00D3184C45B0ED23BFF9CD336F495A5D5E227523F6D32180A4AD778DB63FF9424FCA56A403CDD340229481E28104045E2A3D11026AA363C674463216882E1F1C';
wwv_flow_imp.g_varchar2_table(72) := '7AB9A77755F509D01B4AC87F095145AC6D4CECF0CEA7419A0B227AFBA68206AD48BB5AFB2BB9B42FD6FE49D17C832005A000145278C3008646190A19FBC139D15F0A0C7EE08F7EEFCC43E614FE6B3C7D47E1BD93E0DD20786F569DBFA5794011C9B6AEBF';
wwv_flow_imp.g_varchar2_table(73) := 'FBED0DCB33BD57AD3D4B692D05078B2D048B7B1C205202E550F6899B375D2D4552A045A46AB9D0B34113262CFDD073FDD9A2DD992EE9F00424D68ECACB2559CC527FD4665612FD454F842153252A6411410C2ED0C829860FD044C29FA50C5E8BC29BFE05';
wwv_flow_imp.g_varchar2_table(74) := '45DA51AE562E2817B436B584C14E24AC44672ADD9948A7AD445B226109994EA411113CB705F2A5BCAB545E3B39551A2F15264A79C729825B02B3F25E48B02C10B625A490969906D0813B54D5F3F0E8E57D5F21DCE405F966851461751B2D0A0111089168';
wwv_flow_imp.g_varchar2_table(75) := '7BD36D9F3D24D377FAB2A3787FBE968277625AF0106804CC3B83DF79F4C5E3856D09D93EBB5A8FD3F3E95B8FDF37DE665B6ED81936112FD508B501C0945634E9E19ED80731BF570226503111D577C46A1397005040F0128D5E838828502090022A2947BB';
wwv_flow_imp.g_varchar2_table(76) := '0EB80E081489545FBA735567DFEA9EA587762D5ED5B36C75D7A2FE4CF7A24C57772A93B153096927E494C18DA3DCA27673A5C248213B981F1BCC8DED9818D83EB27BDBF8C07363BB9F9F1C19CC4D909B07D2206DB01396B4240A0252D10412C4E8B2D65A';
wwv_flow_imp.g_varchar2_table(77) := 'BB4F2F94DD56AB11288410EEF8C0CABED58F5E7D4377320391A905663EE1C87D6163425A0DEAD6A7AE1DC93F9DB6FA0F70196A059AB02DE1FE7947DF0B23994CD2D5E4277B60109352CD5B04F20D6E30A13B9A1C1B0882778060E7D4B2651120A0B2B019';
wwv_flow_imp.g_varchar2_table(78) := '029086202E94802824019494AB9C1C28176C7B6947CF917D2B4E5876C409CBD76E58B4FAD0EE258BDBBBA7BFC048428F772604005B5AB6B4DAEDD4E24CF791B0A2E25583F9B1E746F73D39B4E391BD9B1FDEB3F9C9E15DFBF2C3AE530421C14EDA968D88';
wwv_flow_imp.g_varchar2_table(79) := '9AB4F60B46962DA41A968BB7FC8BC2993341524DAB225000822EE6B456171F71F63F9FFA9AF6440AFCAD1099568023F7858D9944FDFD96773FF0C2E7DA13CB34951ADCBEC6F694F33F7F38F24F5B96B4A74BDA946CF413FD90BC087ACAE01DCB719C466D';
wwv_flow_imp.g_varchar2_table(80) := '8CE6DAF17BB55F516BB7553307AA49E78C5522E4E2F6DE1397AF3DF7B0E3CE5C7DF4318B0FEDCF74555E4220B2FE3FC198328D1279F92E5E751EFF1F00449455CEC3707EFC89A1E7EF7EE1C93F6C7FEC81BDCF0E64478014580969274D38AF8922FBBB56';
wwv_flow_imp.g_varchar2_table(81) := 'EEB66A6E43A8B29C654BEEB6EA5D51290FA4CE5A7ECC7B37FEE5656B4E9FEF4E313560715FC078E9317BBEFAAB67DED49658D2D8981D0088C09234964F7CF217C715958C7A2764824B0450681C63AA7D3F2E7C090F9C785FDEFDEC483F1B5D54EDB7EA37';
wwv_flow_imp.g_varchar2_table(82) := '888052A006C8978AE416C19247F6AF78F1DA8D171D71F2E9ABD62F6DEF0DF599146900108846C91B1E49FA730564C60C89227C927DB9D1FB763FFDCB6D0FFDE6B9879E1ED909AE0376D2B65388E8065B1AF96F6534E15283882C8F8AEE1132CF783B686B';
wwv_flow_imp.g_varchar2_table(83) := '0DA52C009DB3FC987FDC78D52BD69C01DED20362B7BDD560715FA8102944B977E2C1EFFDF97C29EC66DCC86BC2F6A4FB87A7967EEDAE351D694753E4D36B02EBE8F6A23542E12078270033B30A20FCA0DC6C87E177DBBFA90FB789420AC4A2729C620E10';
wwv_flow_imp.g_varchar2_table(84) := 'D72D5E7DE9FAD32F5B7FFAA92BD7A7EDA4DF4FB3281745ED3D569B0E11692022122884DF81A272EEDFFDF44FB7DCFBD3CDF73C3BB41D882091B6AC041169D215D30C00E0AD6B420C32673CE67BDF268102119572A094432B71C9EA8DEF38EEE5171F7AB2';
wwv_flow_imp.g_varchar2_table(85) := '795691AEBE95615A0116F70589B1DA8B6AF43B8F9E3B5E78DE96196AC2242A11A413EA0BB7AD7FE285EE545269AA888309A3056BBD4597D5AAE5CF22120281F683772FEDC537678263BD4945290401644B45700AFD9DFD971C75DA6B8E7FF18BD69C1068';
wwv_flow_imp.g_varchar2_table(86) := 'BAD27E84DE4A33784426A22729A479A4A89C3B77FCF9A6A7EEF8F996FB0626F6819D94765A0874FD8D2F42F13B19E32ABA8A607E265705A240E19206270F6EA9BF7DD155479CF5E60D2F3D79C93A0030372E2CEBAD0C8BFB82C41832373FF5DA6706BE97';
wwv_flow_imp.g_varchar2_table(87) := 'B6176B2A352AF13180086C8B06C6539FBEF968D208A26C929409F90681778EA1CD2842477AFAAEBD50BDC27C27DF7A26106809A948E7F29300B4F190A35E7BD205571DF7A295DD8BCDC1AE5688E8B92E2D0C0110694D64F92ABF6B72E8874FFFF1EB9B7E';
wwv_flow_imp.g_varchar2_table(88) := 'FBC0AEA70000531929A5D64AD73067A2993330C59C4613309AAE89B45B04A70056E2F4A547BD76DDB957AE3D7B597B1F9802A0C0B2BE0060715F7898EA318FECFAEFDF6E7957C6B3DA1BFFC9D71A3B52CE2F1F5BFEDD7B5677A61DADA58E7C9C032D06F0';
wwv_flow_imp.g_varchar2_table(89) := '13428C08C114C13B05FB2A792510BD64460889BB25844B3A5F98B4ADC485EB4E7EDB69975CBCE10C5B4808E274D1EA9A5E0DF915D5CC1A1F0DF4ABADF77FF1D15B6EDEF6A0560548B65B427A4BA2BC6552664B2BB3DACBCC6634377847DF7B296BBAB40E';
wwv_flow_imp.g_varchar2_table(90) := 'EF39E4B2D527BF6ADDB9672C5B6F0E53DEB0CAB2BE3060715F6018AB7D5FF691EF3D7A9E14895AEB661A75224825F4E76F39EAE93D9DE9844982042A3BC5C1EC28856B589037C98AD5A92E55993361730684901A742E3F9EB253AF38E6CC779E7DC5D987';
wwv_flow_imp.g_varchar2_table(91) := '1D6B9E72B5AA98B45CA098C9DE2090BF6FF7D3D73DF8939F3E775F363B06960589B4252480D9A7549B526246DA018844ED94D3596396EF0A4422525A815B0455022B7978F7F20B0F39EE956BCE3C67F9D1193B650E8ECDAFE0A082C57D2161AC765717BE';
wwv_flow_imp.g_varchar2_table(92) := 'FFD8F983D92713567B33AC76F03C193D309EFED4CF37106190B24E35D7E00091F00699723C5F731A3030DF3DAB1D01C012021027F213B6B4AE38F6ECF79CF79A8D2B8F046FFF0F12A2C6CCE342479136C132006C19DDFDF32D7FFAC9E63FDDBB6F6BA130';
wwv_flow_imp.g_varchar2_table(93) := '0E8860A784B4BC309FBCB2BA07983963323FD1D4A33011BA764139E0964088B654E771BDAB5E7CC8B12F5DBDF1B425EBDAACF2AC0602082E2AB03061715F4818ABFD8EADEF7BF085CF3523F7B17C228DED29F7F627967CFBEE433B928E32E20D00506B01';
wwv_flow_imp.g_varchar2_table(94) := '3D44CC77AF85A9921045397847145258D9624E2BE792F5A77EE0C26BCF3CEC68309A8210FBDB7F4D9A0002F3FA9991177EBBE3D15F3FF7D07D7B9FD9393904AA040820126025404A69EAE3209553EEC12F93E6CFC5FAC94ADEB059AE7A63D243B502E580';
wwv_flow_imp.g_varchar2_table(95) := '768108A4D591EA38B26BD9A94B8F3C77C5B1A72E3EE2B0AEA541C722B9A4CC8285C57DC1600C99E7476FFFC9139725AD1EA226D659D50499A47BFD2F8F786C477726A5B40AD2AF1122E64CB97755E68C08E5A98317FD4359DCA5C0A2768BF9C9130E39EA';
wwv_flow_imp.g_varchar2_table(96) := '5F2E7EC32B8E3D1B0E1A590F63F238C3A6C77829FFE4D0F6FBF63E73FFDE671F1FDCB67D6268A43809AA64F6A60221410840538D41F803AD2FF0A481B4D961D1FB0600844499E84DB5AF6AEF3FAA77D5717D879EB4F8F00DBD2B0F695F54EE07814B0B63';
wwv_flow_imp.g_varchar2_table(97) := 'A69A99212CEE0B03020D04253DF19D47CE9D2CEEB4449A2AD7E737F05C60099AC85BFFF693F525D7642446D3CFB166E1712F771B0954B0F6A866942F5008399E1DEFCF74BCEFC2D7BEF39C2B52768217C21895175533967BB2C33B2606B78EEF7E6E62E0';
wwv_flow_imp.g_varchar2_table(98) := 'B989C1DDB9E1A1DCD8782937A98A05E5145D6F4D321124A4959476C64AB45BA9EE74C7A274F7F24CEFEAF6BE95EDFDAB3B962CCFF42C6AEBAE38A9D20A104DC1B5B9B94C66CEE0DA320B042244F9A7ED1F1BC93FDD9658A2B5D3CCA9544CD86AF373EDE3';
wwv_flow_imp.g_varchar2_table(99) := '793B9374B59FA787DE9674E86D081AD98B0EFDFE20F8EBA908A8220624005BCA9C53744A137F79E279FFFEF2B7AE59B40200945652C866E4FC2C2004A240097E760D119945A14B33BD4B33BDA72C5D57717C5E398E728ACAB3E608C8165642DA69999846';
wwv_flow_imp.g_varchar2_table(100) := 'A995D65E416640811824E333F183C57D01600C991D637FF8F39E1BD38945442E466EC61B0C020A84277775064347A85A2F92A9DD1B5947EA7746038850855BEFC5E5E93C4B88B1C9D155BD4B3FF957EFFDAB932F00938621244B4C180494E5996700221D';
wwv_flow_imp.g_varchar2_table(101) := '2A6E636C13444C4B3B2DED9A2D90298FE06F8A6572928CA073C9F5830716F7D68700D0D5B93BB6BD4F62C2F7AE9B17E49244CA16ADADBBDB1352D748D128CFE01155560134FA1EAE6C4E0082485BD272943B3939F69A532EFCEC15EF5CDED5A7B446448B';
wwv_flow_imp.g_varchar2_table(102) := '657D5A8CB1256BD67508DEE0C8D1607292BCEA6807F5BDD0C10E8B7BAB63B6587A70E77503938F64124BFD0C9966CD9468C274426DD9D33E309648DA146C8457DEAAD4F75ACA75C0FC43208836B1FC8C06B2A53D969FE84EB55D7FCDFBFFFACC4B01C0D5';
wwv_flow_imp.g_varchar2_table(103) := 'DAE210F2C0C0F0BBCC3055B0B8B734445AA0359C7BEAE117AE4FDB8B34E9A66F7B4B600978667787A3454AB85063E694C2FAEE6D3B175E40EF3DEBC5EFB61063E3C3A71F76F48DAF7BDF31CB0EF70376567686692E2CEE0B80BBB77FD451D994DDDB8C2D';
wwv_flow_imp.g_varchar2_table(104) := '962A400457896776652CB33D2A55CA3B2246F6C6D304D5F3771A408040A1B51E9B1879CB39AFF8C2ABFE2169D9AE56ECC330CCDCC0E2DEBA981A325B867EBE75E4D674A25F933B07D5A32C4963397BC750DA92A4C94B6D2CEFAB47DECED750CE9CF11EF5';
wwv_flow_imp.g_varchar2_table(105) := '1BF04C1989B2E01641A9FFFAAB7F7AC7B997034078E53DC330CD86C5BD6521047475FE9E1D1FB7441AA23BF934094D98B4D45343ED13392B9D543517BC473367CC43BED9EE3F654B6B2C37B1A4A3EB9B6FFAC8F9EB4E525A0B5163032386619A077FDE5A';
wwv_flow_imp.g_varchar2_table(106) := '14228D28FEBCE7C6A1DC9309D9DEBC254BD1B38214B0794F469B05A79E6D5EA34E8C97C64E600AD26230DD0A604B6B6472F4E8A5AB7EFF0F5F387FDD49AE525208CEDB6098398623F75684801045AEB4F7E15D372464A726776ECE8B484507B7ED69B344';
wwv_flow_imp.g_varchar2_table(107) := '790F518CCE9D42387306C04B7A24442212684B6B647CE8820DA7DCF4E68FF5B777B95A5992AD1886990758DC5B12D280F2A15DD7654B7BD2F62222770EEEB108C092349A4BBC3092B2A436770A918D376A169D2D578D015B58236383576C3CFFDB6FFE48';
wwv_flow_imp.g_varchar2_table(108) := 'D24A28CD263BC3CC1B6CCBB41C041A518C16B63CB9F71B29AF40D85C781A44685BB47B3835919396D9FCDA98EABA5CBB3DECCF78F1BBBF63902DAD91D1C16BCFBAF47B6FFDD78495D0A4793124C3CC231CB9B71E4480E2A117AE2BE9C9B4DDA7C99DA395';
wwv_flow_imp.g_varchar2_table(109) := '2A04B6A4E7F6B5298D08A0B5D9CE94C8ECE659AB0BA11954393C3678ED392FFFEAB51F20F2B68A9E8B3E330C3305FC096C2D0834A21CCA3DF1CCD00F92568F2635676B104D86FB73FBD29620ED1535A1A0C049F9B0AAC9555B5AC363436F38E7D2AF5EFB';
wwv_flow_imp.g_varchar2_table(110) := '01ED6F5A3D377D6618662A58DC5B0C22007868D70DAE2A20CEA9612D054DE4E5EEE1A42D822447200D82C02B03590B4BCAA1B1A1D79F75E957AEFDA00EB2E01986996F58DC5B0822852886724F6C19FA59CAEAA6B94A9201DF701F184F8C4C5A96AC2DE5';
wwv_flow_imp.g_varchar2_table(111) := 'C18341F06E4B6B786CF88A8DE77DE50D1FD0A401A6DA7E896198B9863DF7960201F0CFBB6F747521213373506C204003DA52ED1A4A171D91B05DD218548B379A8E412EA4BF70C9B2ACE189D1976C38F95B6FF92802106FF8C030AD0447EEAD028146C4D1';
wwv_flow_imp.g_varchar2_table(112) := 'C2962DC33F4D595DBA99BBE855830402F0F97DC9C883E5CE999D53CD3E6F0000B690E3B98963561CFEBDBFF978CA4E10102B3BC3B4142CEEAD82D9DCE8F1BDFF5B50A302EDE615F5AD0922155DB1633865497F1A35FA3C0555E409248ABC535C9CE9FAE1';
wwv_flow_imp.g_varchar2_table(113) := '3BFEAD37D3A9B4E6DC18866935F833D92290409973F66D1EFA4952766B983B43060008404A18CB5A4363B62D75D8718F546B07306B963469E5BADF7ACBBFAC5BB25269C5F9EC0CD382B0E7DE12106944F9D4C04DD9D2EE367BF1DC14800C9D1D6C4B0F4D';
wwv_flow_imp.g_varchar2_table(114) := 'D8E35999485045BDB0B2F9AE0104488123E3A35F7CC3FBCE5B7F92AB5AA2BA00814610E3C5E71E1EF80236F4A6C7D46EEB4DAD3F7ED1DF546F09CB30AD0C8B7B2B4088D2D5F96706BF6FCBF63976DBCDF96D09BB8793254724936E2D5BC6C312D6F0C4D0';
wwv_flow_imp.g_varchar2_table(115) := '5BCEBBFC6F5EFCCA1651F60097F2A3C5CD02130D1577E9E8C9A4EC6A54830C3367B0B8CF3F6623BDE7467E359C7F266DF56952736C971931DF359844A4EA354AE007EF52C8F1DCE429871DFD85ABFFA105AB0B20080BD38D9DAE4010844A62A2510D32CC';
wwv_flow_imp.g_varchar2_table(116) := '9CC1E23EFF200800D834F06D81D69CCEA2FA080057E1AE615B7ABB2F1189CAE05D203ACA6DB3135FFDEB0F27ED8426DD8229ED049A801A3A174D7E9B0CB3C060719F674C99B0A1DC137B26EF4F581D406AEE355308CA16ADA171DB92FE5C2A8159961A28';
wwv_flow_imp.g_varchar2_table(117) := 'B844319A1BFB9F377F60C3F2435BCD906118A69AD6BAB33E18210280A707BFEBAA4901F3A098446049189DB4C6B3D2125EA60C1281AFEC446449393439FA9AD32E78F3B92F6F6965470284A67C31CC428323F7F9851065494D6C1BFE952D3BF55C55F78D';
wwv_flow_imp.g_varchar2_table(118) := 'F400C012343066171C91496A5DB523B64451281557F62CFEFC6BFF8188449563D33A9036BB4335D496F153435BF7B219A6161CB9CF27441A00768CFD6EA2F4BC255273BC70C9EF0348017B476CA510B19CE21E88240A91CDE73EF39A772EE9EAD5D4E2EB';
wwv_flow_imp.g_varchar2_table(119) := '959AF306B2E5CE2C4038729F5F1000360FFD0440CCD7AC9DD94869EF700291BC14F720782792528E4C8C5E75EA4B5E7DDA054A2BD9E23B2B6168506A0C044835CA1C334CCBC3E23E6F988D52278A3B764DFC2921DB01685EF24F8400578B7DA3B6C4CA62';
wwv_flow_imp.g_varchar2_table(120) := '9002D175DCBEF6CE4FBFEA1D344FDDAB0B226A7CB60C9199179962C3128669515AF9163BEE900280E7476F2FBA2352CC7531990021205F942393D254FAF576D4230093D83E39FEDE4B5E77D8E2E54AB5B821C3DE09C344E0C87DDE409400B475E4562112';
wwv_flow_imp.g_varchar2_table(121) := '0473BE2A15004CE1014943E362322F85F4B65F0244229228260BD9130E3BF26F2FB84AE9965BB25413F2CA5636D496290F790CB39060719F1F4C3994D1C29681DC23B668278279B98B220021F5C8845D286132A18D2D43DE864AA2582A7DECCAB7A41249';
wwv_flow_imp.g_varchar2_table(122) := 'A515B676D80E000004A009746383780205536D43C5302D0C8BFB3C4104083B467F577227D2763FCDE1BE1C6190C01238346EB90AFC641D042029C4686EE2A2E3CEB8ECC47394D6AD3E8FCA304C152CEEF30502C08EF1DF5B32399FC91888026060D42685';
wwv_flow_imp.g_varchar2_table(123) := '7EC94302004D24113E72F91BE7AD63B384436C86F160719F074C9ECC7871C7BEEC239648D3DC97810CA10187C6252210996AED6409399C1DBFEAD4F34F5F7BEC4271DB0D4DCA9661CF9D59882C98CF6DAC200D00BB26EE2EBA66D3A5790305B81A47C6A5';
wwv_flow_imp.g_varchar2_table(124) := '904615090915E994657FE0B26BE7B163B382259861CA70E43E2F2000EC1ABF4BA00520703E4ACA180452B184A393D2169E340A21467263579E7CDEF1AB8FD00B2A6C07003F55A6A1D9320D6E9061E60816F7B9871045494DECCB3E6C8936983F4FC6940C';
wwv_flow_imp.g_varchar2_table(125) := '1BCF8A5C5108B3820981086C61BFFB92AB61A14A5A33C49D61161E2CEE738DD9516F20FBE84471675276CD5786BB410A1ACFC942092C8B40A31062343779C131279FBEF69816DC8E637F60B33C774E856416200BEBD31B07CCECDCEE897B89E639799C00';
wwv_flow_imp.g_varchar2_table(126) := '10716C522A17118910109088DE71E19500A0179CA21147D90C538623F7B9065102C0DEEC435224E6AB9E8CD71302296974522805820005660BB9E357ADBDE8F83308C85A80B9EDE4FDA7D1B60C170E6316202CEE730A012160DE19182D6CB6446ADE73EC';
wwv_flow_imp.g_varchar2_table(127) := '10606CD22240229402F3A5FCD567BE3461592DBD23C71410407356A86AB6659885088BFBDC421A500EE41ECB3B0349AB9BE663778E48770087278559BF54749C25DD7DAF39EB4200100BCC6D6F22ACEBCC02853FC3F3C0DEC9078914CEFB9B8FA0358E4F';
wwv_flow_imp.g_varchar2_table(128) := '0A4492424EE472171E7DCA21BD8B3569D1F2D57DA780A598613C38729F5B5000C060EEF179AC0459EE0B82AB702227249A7A8AF09AB35E4AA6B6E282D476932BD3847AEE3C66300B90F90E1E0F2E08014B6A7CA2F89C85A97977720582E362362FA4C45C';
wwv_flow_imp.g_varchar2_table(129) := 'B178E48AD5E71D7D320288053895EAD3A46DF658DC99850747EE738729A53B5AD89A7306FCD9D4798B9089404AC81644A184B6C4E17CFE65C79EDA964C2D80BDF4F6032F626218008EDCE7160280E1FC2697F2AD501E5D20E58B58701081A4902FDF78CE';
wwv_flow_imp.g_varchar2_table(130) := '7CF7E8C0612166180F8EDCE70E13A80FE53601080001F3EAB913801090CB4BED8ABC28AC5BBEEAF475C701408BEFA5373D5A133676836C24D2BC42955990B0B8CF1D080280460ACF4A4C7A955CE6110281309147042C140B2F5A7F525B32B9B00AFCD600';
wwv_flow_imp.g_varchar2_table(131) := '1BFDA636BC4186992B58DCE70C42C4A23B9A7376496103D2FC8A06220801D9BC508402E082634F01BF34C2826541779E611A0C8BFB1C61D6A6669DDD05774C6002E67536D58000B9822CBACED2EEDE33D61D0B0072217B320000A8011BBC42D56F936116';
wwv_flow_imp.g_varchar2_table(132) := '182CEE730511208C159F73753E6925E76BD3D40848F9A2708B85E3561FBDACA75F132DD8B54B3E0DCF73472E0AC92C541678A4B67030FA3056788E48E17CC7EC00008844225F90E038671F753C0068BDE0E3D3056E2B314C23E1C87D8E30823E56D82284';
wwv_flow_imp.g_varchar2_table(133) := '0508F3AEEF480080937902699DBEF6180098C7FA94F1C29B2B6FE0388365178F7F47CC4C61719F238C74E69CBD026C20049AE77B260420A2F19CEAEDEA3A7AD51A0058F09E0C34C196994DF901EF7D6C78DA0EC3D4058BFBDC4000E8AA5CCED92BD06E09';
wwv_flow_imp.g_varchar2_table(134) := '131781B4189D28AD5BBE6A71579F593D3BDF7D3A2008884041A34BFE02A8BA1A7475AEA4261BBC488D8040DB32638B4C239B65620D8BFB5C60EEA90B6AA4A82605B6C47B8E00046222577AC9867500A0494B5CD0550700C09BB56E78A3333EB94294DB46';
wwv_flow_imp.g_varchar2_table(135) := '6F7D70F7E752566F03E7CC1165D11DDDB0E8F5C72EFE6B739646B5CCC49896109A830002C09C33A0747EDEABCA04688DC5121EBFFA0888478AB8D987A9C1451C8908EABAD3D2E43A3A67E9364D6EA33A2150BA9453E434AA41E66080C57D4E200284BC3B';
wwv_flow_imp.g_varchar2_table(136) := 'A4C8B1B00DE63B0F92002442C92129EC0D2B5703806881C1262E20A24494D8C88C4C0920E67D129E5958B0B8CF059E2DE30C10B4407A3B00100889F992EA48F61CBA6819C42755869AE0B9D7DB200128FFAB81F056AE4C7DB0B8CF054638B3A57D7EC9B0';
wwv_flow_imp.g_varchar2_table(137) := 'F9FF940A81B982B3B8A37F696F2FC447DC5B8386FF7AA939CD32B186C57DEEC8BB03AD73672D100B257759EF325BCA38AC4D0500531552343E15B2DEEC26A2D9BC6A3A90D7C93275C3E23E7794F4B84089D8129506A51025471DDABF1C00B4D642C62001';
wwv_flow_imp.g_varchar2_table(138) := '23DEC6056F1BC2D4078BFB5C60B29E8B6A1C51408BECC989A449ACE85B02C1AA1BA6312CD01D6899B8C1E23E0710006A728AEE187A49EEF3FCE92700042C3A625DDF92F9ED49832102A0865698A9DB6031A9938DAE3746D4D8CB620E0258DCE708458ED2';
wwv_flow_imp.g_varchar2_table(139) := '056C8DD95404D0A41396B5A4ABCF7FE0802022454DA93B8688332F444C40D4E89D98BCAFFA302F696837D89661EA84C57D8ED0BAA4C145C05670410808114827BA339DD0880E21A2C5CB260D4DFAEDCEFB1F0DB3D060719F235C2A685D426C91C81D3569';
wwv_flow_imp.g_varchar2_table(140) := 'DB4A75A4DBBC07668BC9B4D936B2E77B7FFE9D6DD90DF40E0462D1291DB968F5E51BCE325B9D4C7FFCFCBFAD86E61828AD7275CCC281C5BDE998154C4A173598AA20AD1083A126DD9E4AB7A73270601D222240DCB46FFBFB7FF25948773472F1AD90901D';
wwv_flow_imp.g_varchar2_table(141) := 'BBF084975EBEE1AC19D635A3D91471DC4F93B3D16ADF766F683734EB3B53172CEE730001A0A282264760B215823004509AD289642699F47E3E3012966DB5F7A652EDBA71CEBB14222FACAEF4CCEB201250A3CD6E989DD9AD1B6B91A3577F7FFEFF729805';
wwv_flow_imp.g_varchar2_table(142) := '048BFB1C41CD996F9C2588443A65DB09DB027F23910381885CA594520D147720725DA5F4CC550D09345163CB0F209126A8EFA2C804DA8D7B2BA8F1351598F8C3E23E47282A11904051AF5234070440442144033DA206EF37EA35450833BDB56809F923D0';
wwv_flow_imp.g_varchar2_table(143) := '0DEF0801E906A77832F187F7509D235A2A724700A57577A6CD968D13F76694BA6C7018BEA0E1F781A90F8EDCE7103271684B4CA89286B676291A35B81300A1203481764310248010EBBB1568783EF82C5AC36674A345FE6E9805048BFBDC81882D525806';
wwv_flow_imp.g_varchar2_table(144) := '010145532A51355657EB7D8526100D0E7189A0CEF185B449B169683F1A9D7EC3C41F16F78392662CA62200DD5049235DBF7D4D8D9E7BC459D573D7FE5703BBC130F5C19EFB5CD2321F51AE0FBEF0E0F2034C7DB0B8CF1138E302297303827074AE917AD1';
wwv_flow_imp.g_varchar2_table(145) := '38B73DCCFC17F16D8D04730268A1E0805908B02D3347484C228A16CA664393C1BDFF65FD7534D950F9A9A329B30898C8DFCD7A5EAB423663B30EB33EAB75FE789885008BFB1C812010CC7E47F31F7F21100212B89A5C89095F1D0F003381D8D86944AFC1';
wwv_flow_imp.g_varchar2_table(146) := '191C89FE7FEBCCAD690E4DEA028B3B531F2CEE73000280142929EC06C86823204004A1A8A47441CAC4813788A6D5F987001B3AA18A0842D7ED0DA1066CE8846A6BD49B6316162CEE4DC768B9144981B66AA1C290D2D13947E712B2F3C0079CE65DCFCC3B';
wwv_flow_imp.g_varchar2_table(147) := 'E6C5F90DB765EA4F016A822DA335702624531F2CEE73842D5202932E945A648F6C44A9B5E3EA1C0034E67E42373A15D2ACE4A7D698D0AC03B665989680C57D8E1098906801696C8DCF28222A704B6AA2814D36AEA980998D3A145A16DA845ECCF0F7153A';
wwv_flow_imp.g_varchar2_table(148) := '79137EC3ADF047C32C2858DCE700040081B625DA00076752977C0E40145ABB79770800801AB3A7F36C36A49BB6B560AFE999F40E4D81ADC6D773AFDB3AA746D77347CE9661EA87C57D2E20208156D2EA1C2F69C05689DD0128E70C34AC3DA2262443D651';
wwv_flow_imp.g_varchar2_table(149) := '4C80000034826EA8E78EF5AE35258266AC50A5F94FF86716182CEE7303016042761268C04656D79A35E60622E7EC6D4C73044026C5BB31ED81696A41CE2136CF7367983A60719F1308002121BB8800A025B2650840A09575760134A0CA0C020001126123';
wwv_flow_imp.g_varchar2_table(150) := 'B71F227FF1CE8C216AC6B8398B0A668DEE0181E67AEE4C7DB0B8CF0D040069ABBFA50A430A91C83A7B88CCCEAE0784511D24C4C6892B92A8F316C75FA0DAF83D54EB4D856CB0E7AE5BE2668F5960B0B8CF1D6D763F51E3B7E9991D045AA09577870AEE70';
wwv_flow_imp.g_varchar2_table(151) := 'DA5ED4803A04FEBAFB0675D093EA3ADFAE5678731B3FF3C9C2CECC0216F7B901012065F50B6CA1375C8074D444D6D99BB61735A80241E3B365EAED447336EBA8B7C116E9067350D3425A13671000206DF54A6103B68C778A4291335E7AAEBFED98466543';
wwv_flow_imp.g_varchar2_table(152) := '36140AFE53C70BE6BB7058F9350DBC89F11A6D547BCC41018BFBDC800090B6FA6D91D1E4B44CAA3B228AD1C29606B4D544DD99F17B450D4BD86F3D28B657C6340D16F7B9C07C2C13B2D316ED79352828D122B7D802EDD1E2B300D48072F304D0D03D5481';
wwv_flow_imp.g_varchar2_table(153) := '04E896CA869CA173D58C0E23B22DC3D4098BFBDC8000648974DA5E9475F64A21A8912B5C660911484C8E177716DCE194D577C073AA848DDF5BAE91B9950B97466FC8CA1C14B0B8CF11463A33F6E20170BD386CFE210156498D8E15B7A5ACBE0399534553';
wwv_flow_imp.g_varchar2_table(154) := '7BA0A13B7BCDA229024DA01A3BA741A0EA1A8989CC4B14816A541F1090B82A2453272CEE7305112074240E254DAD51F41700001189D450FE892599930FDCB0F6963135887A9B6A8D77B499B0E9CED4038BFB5C810800DDE995D2920400A2358277048189';
wwv_flow_imp.g_varchar2_table(155) := 'C1FC130007B44ED58B2B1BBA4F06D4DB2012806EE69B3AC3F7A7195D20A0C6D6CC61E20F8BFB9CE2E457940AA9543B39EE81AFF96F00045ACAE448E1D9823B9CB27A67EFCC34CB1BAFA333E8AFA36ADA0AD5994EA836211572E155B567E69D067AA4CCB4';
wwv_flow_imp.g_varchar2_table(156) := '100280A4453FBBBD4D4AD53AF7D802ED823B3C987F1C006651DE36A0099B9078450D667A3499A383F53E8DFD9A794FB0391DA0864E5633F187C57D8E4044223A6451D773DB17FDF0F65C6FA7540AFD1AB9F3FC8520F6661F32DD9CE5D5813793D8E82FAA';
wwv_flow_imp.g_varchar2_table(157) := '6FCB6B6A7C276665863447DC5B251E6016066CCBCC1D5A6B29E529471DFEFFFDE8A153D6771DBA02B37912F33DBC12694B2407728F2A5D94220940B3756600A14E2D9E16AC5F5789745356A87A0DEEF79D2100A0A6D83240C0963B531FF32D2D0713E6B3';
wwv_flow_imp.g_varchar2_table(158) := '79E29A754AD10D3715F205B0642B046324456AA2B46328BF0960F612E207EF0DFC02603D2BC36F05531F2CEE7387400480E30E3BB2B33BBD75A77BE30F8B990C12E1BC0388846A57F62E0098FD721902244468E017CC6A9EB63996C8BC7780B59DA91316';
wwv_flow_imp.g_varchar2_table(159) := 'F7B903110160DDF2554B3AFBD329F777F73B3FFBADD3D521DC862D76992544DAC2F49EEC034A176659DB9DFCB49246E2DF0ACCBC134D9040B30F49F0ED8C7BD2586631C630073B2CEE7307226AA2AE4CFBBA15AB72C55257BBFCDACF0A8F3FAB3A33A8E6';
wwv_flow_imp.g_varchar2_table(160) := '390F82A4484C1477ECCB3D0200AD501A617634D81622B30352A0A933D3563F79B2D15FBC4295A90F16F739456B0D001BD7AE2F398E1402013FFFF5C2C818A46C41241005C27C7D4944D831FEBB595F1A52E3BF5AC693A9AB1FCD49859CD5DBC11CCCB0B8';
wwv_flow_imp.g_varchar2_table(161) := 'CF29C69939EDC8632D295DAD5349D837A2AEFB565E4A146816DCCFCF1791B630B337FB70C11DC259EFF2DA3CF19969CBF3AEEC415F1BD9014E956166018BFB9C62E6544F5C73D4929E3EC775B5C68E767CE849E7AB3F2D7464846EEAE2F9FDF64DD80535';
wwv_flow_imp.g_varchar2_table(162) := 'F4FCF86F0166B59A897C1D6ADC57595A67647753C33B50EE493D6F0335DA99015677A67E58DCE7144424A2A53D7D1B561E5E28158540A5A0BB53FCE4F6E2AD7F2CF5744AA561DE7266802C917A7EE2764D2ED41BBC132191C9736FDC9786BAEB9069C066';
wwv_flow_imp.g_varchar2_table(163) := '7CD56FCB34B603ACEC4CFDB0B8CF354A6B00386BFD71C552C92CD9D7041DEDF8E5EFE71ED9E476B60B77DEA633C9126D63C56D7BB30F20CE6A3340DD7847C49B469C4F71ABD7996986396EDE089678A60E58DCE71A532FEC9CA34F4A5896260200221002';
wwv_flow_imp.g_varchar2_table(164) := '84C0CF7E2DBB6B9F6A4B829E3F7D47C02DA33F353D9DF9CBCC4471A3A702421D98595F1A9B891949CAAC07DDF08EF8A6577DFD600E6E58DCE71A810200361EB17EF592E545A764A658B586640246B3FAD35FC9164B6859A809E6615A15C8161D03B9C786';
wwv_flow_imp.g_varchar2_table(165) := '0B9B10702639914675DB536DA4753396DB7A123F03596B11E56B66375A613D33B36060719F6B10516BDD91CE9CB6EE985CB120FCCD4B9586F636DCB2437DEEEB93091B11C43CE535A326F5CCF08F6678B41042933E7DEDD1579D7CFEF0E4B82564E37ADD';
wwv_flow_imp.g_varchar2_table(166) := '22725D1FCD14608205FAA630F3018BFB3C60DC98971C7FAAD22A5CD55D29E8EEC03FFDB9F4E5EFE5BA3ACCAE46739DF00E4009AB7D4FEEBED1E2168499EEF52A50FCE7D5EF5ADAD15D704A02B17159228433CF9669B417523645EA1966898874337AA159';
wwv_flow_imp.g_varchar2_table(167) := 'D799BA60719F07A41000F0A26337F677743BAE1B36975D053D5DE21777166EBA25D7DB2534CD43D63BA220729E1EFEEE0C2F47A070B55AD1B3E8BA6BDE9DCD6525A0206AC497D9391400E63DCF7D16A9EE0DFE626167EA85C57D1E307508562F5E76EABA';
wwv_flow_imp.g_varchar2_table(168) := 'A3270B7911DD934929E86AC7AFFF3C7FCB9D859E4EA1E6BCF20C91B645C7AEC93F0DE537CD3078B78474B57AD5692F79CB8B5F3134366CC90696929E45A6CABC8B7BF37AC2303385C57D7E30E9252F3DE90CD77550549A0E44D09EC6FFBA69F2AE878BDD';
wwv_flow_imp.g_varchar2_table(169) := '1D384F95C5E8E9E19B667EB444A1B5FEECD5EF3A7ED5BA89DCA4446956561E48B4EA15216018A67E58DCE7072110005E76D2195D6DED6E95781380109048E07F7C75E2B167DD9E76A114CEA5F34E0009D1B127F7E09EECBD330CDE4DDA4F47BAEDAB6FFB';
wwv_flow_imp.g_varchar2_table(170) := '70525AAEEB20E08199EE75BB114D5A9E5AAF271218F58DFB9A452F98831D16F7F941A020A2752B569FBAEED8C9425E566DC8A4092C0944F06F5F1E7B7687DBD92E958239F3DDCD348085892787BEA974090066E2090821945627AC5EF7C537BC772C3B51';
wwv_flow_imp.g_varchar2_table(171) := '6137CD82FAE5AC75CC9006770059DE993A61719F37CC52D5579EF162C775B0960E6A824402F225FABF5F1ADFB9CFCD6450E926945E9CE28B504B991E2D6EDE3AF60B0431C36A33524857A9ABCFBEE803AF78C3D0E8B02DAD03708A67F142DDB4AF79EF06';
wwv_flow_imp.g_varchar2_table(172) := 'EFA1CAD4078BFBBC218400808B4F3EABBFA3ABE4BA353FB95A433A214627D4476F181D1CD199F49C567E2752B6EC787AE47B59670FA298E1F27729A5D2EADF5EFDF6D79C75D1C0C8B02D93A6EA4CFD5F02F42C76628A217E00CFEF0553072CEEF38640D4';
wwv_flow_imp.g_varchar2_table(173) := '5AAF5AB4F445C76E9CCC65C5145B652B4D6D691C1C551FF9C2E8D018655242A9B9CB8B14683B3AFBC4D057007086012C02200A4DFAFFBDF583E7AE3F69706C34212D9AA51B5197A03523BB9C88EA73669AD2012200CD73CB4C5DB0B8CF276635D3ABCF7D';
wwv_flow_imp.g_varchar2_table(174) := '19114DB950074169C8A4C5EE41F743D70F0F8FEA4C9BD073553C12402765D7AE89BB774EDC8920896694B8231081A02D99FAE1BBFFFDF8430E1B9B1C4F4A894402EAFD020EDD3DF86D60EA84C57D3E915200C085279E76F89215F952619A194857532683';
wwv_flow_imp.g_varchar2_table(175) := 'BB07D5076F18191ED599D4DCE5BF136869A59F18FA4AC11D459C6929602184D2BABFA3FB67EFFBEC617D4B47B313B6B448D799A3524FB1DB5651BFA639E3AD7281CC0281C57D3E4140A555473AF38A335E3C99CF4FE5CC0000022805ED6DB87BC0FDE0F5';
wwv_flow_imp.g_varchar2_table(176) := 'C383632AD336673B6B93C444DE1D7C6CF0CB30B36A62062984D26A65DF929B3FF0F9437B978E6627AC3AFD19AA3715127493BEEAEA44333AA0679FB7C31CA4B0B8CF3326E9F075E75FD2916E53FB8BC69586F60CEE19743FFC85917D43AAA3CDF7DF6739';
wwv_flow_imp.g_varchar2_table(177) := '6339D32FD23A21BB764EDEB97DFCB6999B33002085545AAD5972C82D1FF8FCA17D4B47B3E309AB8EC5AB38D3309842DF34E1AB6E516D463778CB0EA63E58DCE7195355F198D56BCF3AEAB8F15CB63AE1BD02A5A0BD4DEC1E70FFF9F3833BF7B89DED426B';
wwv_flow_imp.g_varchar2_table(178) := '40D1F42F009D94ED8F0F7E65A2F43CA2AC277E97AED26B961EF2CB0F5DBF7EF9EAA1F131DBB20FF45DAB0DC5389F84D320997A61719F7FCCD6A96F7AE92B959E51446CFCF79171FDCFD70F3DF39CD3D52E5D179A1DBC030082A5C07968DFF58A8A504F40';
wwv_flow_imp.g_varchar2_table(179) := '6B49A1B43E6CF1F2DB3E74C3E96B8FDE37329490D60C9275EA3522D03839CDC856A9A71B4DE983AE3369876158DCE71F292501FDC529676F58B5265F9C6E5A35402948A7305BD01FFCC2E0839B8ABD9D720EFC77026D8BB691C2338F0FFE3F0401F56CA2';
wwv_flow_imp.g_varchar2_table(180) := '6DFCF725DDBDB77EF0BA2B4E7DF1DE91012924EC470781052D0A87EF4C1DB0B8CF3F08A0B54E2792AF3FEF92897C4E08399357290D491B95868F7E69F0F6FBF37D5D4235BFE237914ACAEE6D63B76E1BFF25A2247267FE5A29A4D6BA23DDF683F77CEA1F';
wwv_flow_imp.g_varchar2_table(181) := '2EBD6660640835592805C1945FF5C919356D796A5DEF2B35AE278488028540247035397EFB0CB37F58DC5B02818200AE39FF92958B96067BEFED17A5415A604BFCE45746BEFFEBC9DE4E31070548087442763E3EF83F83F9C7102D823A6E1984109A0888';
wwv_flow_imp.g_varchar2_table(182) := 'FEF30D7FFFE5B77FA0582AE50A392F85A616481A0FC6822A8828055A44AAE48EE74A03396748625BCAEA33CFCE73EF9805028B7B4B80885AA925DDBDAF3EFBC2B1C9F1FD4EAB9AD70022110A81ED69FCE20FC6BEF883F18E3694C233F19B06210801D603';
wwv_flow_imp.g_varchar2_table(183) := '7BFE63D2D98550C7E42A98F54D084AEBB75C70F96D1FFDAF957D4BF68D0E59726A8BA6AE9E358D3AFA7000DD001008526B275F1ACE16F7212696779E7DDAAA0FBE7CFDF7DFB0F1B19356FC1D00089CD18D1DC3B0B8B70C8804F0B6BFB8AAB7A3CB71F763';
wwv_flow_imp.g_varchar2_table(184) := '7784BD68A33C5DEDE2BBB74DFEDBFF8E20422AD9DC12F0045A60A24493F7EFF954494D98CDF966FE72049442B84A9D71E4B177FEDBFFBCE6AC970D8C0C29A56C21C1542D03AF7C191C1CF5DC1150A0050045772CE70C24ACCE2317BDFAE2A3BE7ECD49F7';
wwv_flow_imp.g_varchar2_table(185) := 'FEE571BF3EEBD07F5DD3F7F2EEF4E1E6188699212CEEAD8214426BBD66E921579E75C16876C204B3B54184A86F43045A435F97F8C343857FBE6168784C77B60B5735511709544264C64BDBEFDFFB69452500ACD70BB6A4545AF777767FFBDD1FFFD2DF7C';
wwv_flow_imp.g_varchar2_table(186) := 'C016D6F0C4B82D138812480008F0F674ADC3856860A81E0DA8EB5D4B35D39E80C9412227EBECD3E4ACEA7EC9CBD6FDEF3527DD7FC9FA6F6E58724D67723500697289547D0BA91886C5BDA5400002FABBCBFEAA3DD5E64EB1A0692AA5414457434F877C6A';
wwv_flow_imp.g_varchar2_table(187) := '7BE99F3E3FF8F8E6626FA754BA8916BC2695905D03B9471FDCFB395F7AEA3B9914828894D66F7DD915777EE27F2E38FEB47DA3C38EEB7A03DB6CE60F9AB388A99EEB229A51371041A0A5C9CD39FB12B27BE38ABF7FF5F17FB8F2D85B8E59FA86367B0991';
wwv_flow_imp.g_varchar2_table(188) := 'D2E41268001468214AE48F2A5327FC17D342082148D3FA95875D7EC6796393135655DA0C4563760ABE1568BE771575B4E158567DE08B433FFF63B6BB5D20826E5ACC47E42665CF0B937F7C64DF0DE03928F5E931A267D11CB962F52D1FBEEE8B7FF3BE8E';
wwv_flow_imp.g_varchar2_table(189) := '547A6074440048516FA67B4B244E22ECA717C68451E4E69D010B3367ACFEF03527DD73DE9ACF2D6E3F91803429023213AA2CE8CC81C07F3DAD85B9A37FCF15AF6F4BA6DCE89AA60AC520DF0809A5D61000B91A1209B42DFCDCB747AFFBDEA86D612A81AA';
wwv_flow_imp.g_varchar2_table(190) := '69160D819BB27AB68FFFFAE17D37E0ACF41D002C29B5D644F4B6975D71CF67BEFAE60B5E3E99CF8F65272D210E7C3BA7D6014108B4149572CEA08D6DA7AC7CDF351BEF3BEBD07FCD249699381D0105CA19175D6098E960716F2DA4109A68C3AAC3FFEA45';
wwv_flow_imp.g_varchar2_table(191) := '178D4E8E979DF72A9FDD4C3C06313B0078EBEF1134012275778A9FDE997DDF7F0D0D8CA9AE76E1AA663934442A69F53C37FEAB87F77D01BDC8B5EE530921105169B5A277D197FFCF876EFBD80D2F3EFAC4C2F868AE5098713F9A972D53D7BBE1EF7A1A7A';
wwv_flow_imp.g_varchar2_table(192) := 'B9D999B6A427B3A5C194BDE88CD51FB966E3FDE71EFEC98EE421448A80384E671A0ECFBFB71C884044FF74C5EBBF7FD76F1CA50460C5E224A3E6488018E49210845D1A0000D41A7A3BE4D3DB9DBFFFFCD0DFFE65E78B4F4C8F67B5D664F6E66E2C442A65';
wwv_flow_imp.g_varchar2_table(193) := 'F56C1FBF0D804E5CFCB7084840B38840A59044A488CEDE70C2CD1FBDFEDBBFBFF5E9179E27A21926FE97936C1AC52C1AF4465D0224048128B52E15DC310258D271D2314BDEB87EC9D529AB07008814A0404E6D649A038B7BCB215028A5D62C3BE4CD2F7D';
wwv_flow_imp.g_varchar2_table(194) := 'E5677FF48D453D7D5A4532233D4517E12CC14870E94B212A056D6D5074F4C7BF3AFAE436E70D977448846C812CD9147D4FCA9EE7C67FED527EE3E2770BB409F42CA25144B410B5D628C4D52FBE180080EA4B9969A8F34E50F7B42E02A0109248392AEB28';
wwv_flow_imp.g_varchar2_table(195) := '276D77AD5BF497472FBDF6D09E979A74464D0A59D69926C3E2DE8AA01044F4EE575EF3ED3FFC72B298B7A455690D447C76F348F04C78C695B4464B42471B7CEF77934F6E2FBDEBAAAE752BADD1090D880D8FE089544AF6BC307977494D9EB2E4BD09D941';
wwv_flow_imp.g_varchar2_table(196) := 'A010662361A6B4BDD24AA09861D85E4E406CA8B8CFC2CC529AB2A501046B51E6F823165D71E4E2AB7AD3EBCC539A5C81921722317300DB7CAD8840D4A49774F7BEFBF26BC6B2935E8DAD40E210426B7B0880A886FA212100222268224DD0DB299E79DEF9';
wwv_flow_imp.g_varchar2_table(197) := 'A71B867EF4875C7B9B48DA4D58E88440A052B26B30FFD85DBB3E3451DA8920753DF5672A9042CED49001688554190050BA9449F49FB0FC1D571DF7CB6B36DE73C6EA0FF4A6D71169220540022DAE1FC0CC0D389BC884693E26062D3ACE99EF7DE3B37B76';
wwv_flow_imp.g_varchar2_table(198) := 'B625538A349299592DFFCACC0C6AB086283064CC1E1B40DE239E912340299AC8D3D9C7A5DE7659E7218BACB1496D26FB1A0BA2745436213B362E79F7A2F471440AB1BEE5487541A410E5EEF17BBEF7E8F9522434356C5F0B445974C70EEBBDF8CA636F99';
wwv_flow_imp.g_varchar2_table(199) := '81CB44003859DA2DD14ADB8BCC439A5C44D1D4C952027383E165D807372EE8FD03E6EF8293700E3638726F51CC64693A99FCD86BFFC694120B29BB29784EE4CDDD819195B0B243E8C31CE89CD62004F676C83F3D5EFCBBEB076FBE27EB87F00D1EE08994';
wwv_flow_imp.g_varchar2_table(200) := '2D33AECEDFB3FBFF6E1BBBC598CBCD5E63A9C8C93979476701B49727EEA515CE99A82100B42796A5ED45442A08D59BA1EC9A4869ED6AA5499B3B348142A2904258429A2F298444618A4A9A296E572B572B459A43BA83018EDC5B1AA5B514E2F27F7FCF2F';
wwv_flow_imp.g_varchar2_table(201) := 'EEBFB3AFA3CB25154C2FFA31BB87AFEC22A4F800B5235892121D45D9029D794CFAAD9776AC5A628DE734699849BDB29983200874494D1CD675D131FD7F2D316142EC469EC38300305BDA73F7F68FEF1EBF7734FF6CD11D2302214062420A1BD1F2873AF2';
wwv_flow_imp.g_varchar2_table(202) := '32F14311EE149D37C3A55572C70FEDBDE88A637E3EC3F961D36C33C26402D29A08480A116E5F693D5498D83B31345C98D8979F98284C6AAD85109964A63FDDD1936CEB4D772DC974A7ED64B8354DA4490BC4264CBE302D018B7B4BA349238AA7773E77E6';
wwv_flow_imp.g_varchar2_table(203) := 'FBDF8C0285E7C86888263E56C4EC000044805314DD424034A9D7623CA7336971F505EDAF3CB34D4A98CC93A8CCA73F40105114DDD1DED491272EFEDB8EC42AB354A799168D1E2D6C19987C64EFE4437B271F19CD6DCE3AFB1C356E0A6522002208940852';
wwv_flow_imp.g_varchar2_table(204) := 'A00014D52A4C4040A4C184DE982BB96BFACEFEAB13EF24D288F370A74B009A3410846B856E1FDDFBE8DEAD0FEDD9FCE8BEE79E1DDEB1273736969B70B50BA021A8FB2C04082184684BB42D4A772CEB5CB4BE6FE5098B0F3F71F16147F5AFEA4B7706AD29';
wwv_flow_imp.g_varchar2_table(205) := 'AD4CEC3FF757C7340F16F756472925A5FCC40FBEF2C16FFED7D2DE7EC7752B66502B63F66964DD44FD4880402400410A70344DE6E898C3EC375DDCB1F18864AE4805475B0D0DE6044A4765A5481DDD77EDEACE9782EF9237F0140000409A5445E9444765';
wwv_flow_imp.g_varchar2_table(206) := '278BBBC60A5B460BDBC70BDB268A3BB2A53D0577A4A4C64A6ED6D52E815311C1235A96B06D994EC8AE94D59D492E5FDBF7CAA316BF6AEEC5DD04D741158A8952FE9E9D4FFE6AEB43776E7F6CD3E08E89C22490021460D920A4949610287CCBCEFC4B441A';
wwv_flow_imp.g_varchar2_table(207) := '486BADC905ADC0142CB2ECA56D3DC72D39ECBCD5C79FBFFAF81317AFB1A5050004A0B492334E4F625A1C16F756C79B59759D733EF0D79B766ECBA4D2CADFDF2EF421448DFE4A9FE9C41D5078415D7000020889D99202C00B4E4C5F7341FB8A7E319E25A5';
wwv_flow_imp.g_varchar2_table(208) := '41364ECA10059172F4E4F2F6738EED7B73CAEA25D2DE3C5F8321137A9B0A2D35DB2722474F3A2AEBEAA2BFBD511981B614898468B365FB7CA5A26B2202922800A0A8DC3F6C7FF4074FDCF1EBAD0F3D37BA07B402CBB6ACA4252520FA8B6181A6FD65A140';
wwv_flow_imp.g_varchar2_table(209) := '01C24CDC28D2AE724115402B48A48EE939E4A235275F79E439A72F3FCA1CACC8144260895FD8B0B82F008CF3FEFBC71F7CD9C7DED9D9DEAEB5292BE85931004848646658A796753F81329247E965D9200809443091D3BD1DE2F2B3332F3FA3AD338DE339';
wwv_flow_imp.g_varchar2_table(210) := 'D244B261513C228A921A4F5BFD1BFA5E7F48FBB9D0AC103E4C59EB833ECC7C4421D04426A7748E545E1369224B0800786E74EFB71EFDCD779FF8FD6303DB4139904827ED8440E1C5E3E13B8E694649F34BF7D70B9B0901018012115091769D22B84548A4';
wwv_flow_imp.g_varchar2_table(211) := '4E5FB2F6EA0DE75F75D4B9CB323DE0493CB057B37061715F18B84A5952FEFDFF7EF6BA5FDCB4A4BBCF516EC867A7C0269FE677696276AA98128C4ABD14E028982CD0E14BAD57BF38F3E2E3D2B60513390268D85C2BA254BAA8747179FB991BFA5E97B197';
wwv_flow_imp.g_varchar2_table(212) := '01C0ECD6B21E18FECC6A6D82A875EEA2574D44A4CD9A86A706777CF6AEEFFDE0A9BB46278721914ADA29B3F42148720C271E11C254460A7957524E87F52C1B0C5A02401442B8A475A9006E7151D7E257AF3BE76D275C72CCA24301409116E5442C6621C1';
wwv_flow_imp.g_varchar2_table(213) := 'E2BE30D044003491CF9DF1FE373E3FB4B72D99D25ACF2837C6C4E69E7286637604A25038EF7FDA11A5807C890A2E1D7B58E255E7644E3F2A8908D982B70BDC81838000A2A4C613B2736DCF2BD6745D26D026F28AB134E0040B0D451A888CAC6F1DDE7DFD';
wwv_flow_imp.g_varchar2_table(214) := 'BD3FFE7F0FFF6A323F6EA5DB6D696B529A228B1874F8F60CA1D60C3879A37E28A40FCA88863C39FF7100009042208A925B82622E91CA5C75C419FF74CA95272E3902005CADAA0B50332D0E8BFB82C19833B7FFF9BE8B3FFE77DDED1D5A533966DFAFCF8E';
wwv_flow_imp.g_varchar2_table(215) := '0024CAD19AF72187F070E05BF640082840204C1648119C7C44F28A33DB36AE4D48419305D0D4182F1E516A721D35D1935AB7AEE72F97654E073F17FE20917802D05A237AD6C75383CF7FE9815F7CFDD15F8F4C8CC87447C2B2942E2F400816A3455623D7';
wwv_flow_imp.g_varchar2_table(216) := '5676AFF172CC8E60F266C331BB7758D5CC3C02A214AE5654CCDA56E22DC75DF4D133AF59DCD6AD492387F00B0A16F7858409A0DEF3F5EBFFE3A7DF58D2D35FD24EC51AD428E4E59A4334BC0FBC7A28C7EC88684AD3865D7BE34E670BA48936AE4D5E7956';
wwv_flow_imp.g_varchar2_table(217) := 'DB496B1296846C8194A646945A4744E1EA9C267749DBC6753D57F5A6D6030091068CB3C457A4C1DCBFF3A92F3D78F3F71EFFC3647E42A43349692B8AAE2BF334F50062F6E059FFFBCA9215BE6C137A7F1642484D5A17C657772FFBD48BFEFAD547BE0800';
wwv_flow_imp.g_varchar2_table(218) := '1469C92EFC0281C57D2161D2224A8E73F687DFF2C40BDB3A521957B9D34CA2D6F6D9A1F2C63C48B3A1D0BC1C81E7C218B73D5B20D274ECA189CB4E4F9F7E64329DC45C911C170E3C2FDE88B8A3B3886259DBE96B7B5ED99D5CEB5D2EC4CAA8F132D6018C';
wwv_flow_imp.g_varchar2_table(219) := '3E96947BCBB3F7DEF8E0ADBFDEF2A0E3166532931096D2AA22EFA566CC4E62CA7552FE1AAA297D76EFB01AD9B49EB2FB8F1A8FCE724A7970F3D71E7BD1E7CEFB9B9E643B5B340B0516F70586262D503CFCDC332FFAF05B6DCB0631F56F5010002089C827';
wwv_flow_imp.g_varchar2_table(220) := '1602652FC7EC5E559290A11EA83CF96EAF91F85C815C0D6B975B176F4CBFE898647F8728385070880ED8AB411004E4EAAC407B69E694C3BB2E35513C7819354D2C4D330768D29A28D0C4EDA3FBBEF7C41FBEF9C86D7FDEB31510ED5446A2D0C68409BD8D';
wwv_flow_imp.g_varchar2_table(221) := '65CDF58271F3284CB3009690C26BC408821B35337F4C805853D60140470C9FF2294C5AA49B1F5BD7BBEA7F2F7AF7592B8E566669EB42FE8D1C0CB0B82F3C4CE6CC7FFFEA07FFE7C64F2DEAE97755ADB28BBEB203800A7F0AA3317BA4044D55CC5EBD4B86';
wwv_flow_imp.g_varchar2_table(222) := '4000845C894A2E2DEB91E71C9DBAE0F8D411CB2D00C815C95566FDE7EC2F0D51106947E70458FD6DC71ED679D192CC465334D8B7E39BB8BAB5E154D82F25E5FC6EEBA3DF78F4B65B363F30323902563299488100ADFCE49799C4ECD3E6C6CC3A669F4AD9';
wwv_flow_imp.g_varchar2_table(223) := '831759C2764AB984A0CFBEE86DEF3CE13233C7CBB9F0AD0C8BFBC28300B45252CAAB3FFFA19BEEFEF5E2EE5EC775434F229AB4771048A04D8AB399262DFBEC1064CA13118A48168DD1889AFB1FF9B9E220049414E48AD49614271E669F7F5C6AE39A446F';
wwv_flow_imp.g_varchar2_table(224) := '07961CC83BA415890358E7882000C8D13900EA4A1EB6A2FD452BDACF4E5B7D5E1F3C47BE45559E0088B4260A2FF57C70D7333F7CE2CE9F6CBA7BD3E0F340CA4AB425A4AD41AB70859B68CC4E5E1E5385CF1EF2CDCABF207FE1F13431BB79B04AD6CD6BB4';
wwv_flow_imp.g_varchar2_table(225) := '3F7543D39D02A4100A34E526DE7ED22B6E38FF9D02912DF85686C57D4162322347B393E77EF8AD5B0776655269A5959FB50C2408B500138E4D911B03E14F6D343004C469941DC0D3105399C525C896888856F6CAD38E4A9E7D54F2C815565B42141D2A38';
wwv_flow_imp.g_varchar2_table(226) := 'A469F6B1BC71DB5D2A285D4C59BD8BD327ACE838BB3F7DACC4A4DF9F168AE5894CAD450AFBD19B06B6DFFCD43D3F7EEAAEFB776F760A3948A452899400D45A2BAF56847F68AD981D2A03EA19E7C680379CD71FB3579F827C2748934004946839B9A1BF58';
wwv_flow_imp.g_varchar2_table(227) := '73E637FFE2FD3DC90CEB7BCBC2E2BE503199910F6CD974DEC7DE6E59B6F01419003D63D5B3DA838F6A243A0F255096DD180CAD648C10FE13413471BD9110400453D0A4E040DEA1A40D6B975A67AE4B9C7244F2D045B22D218A2E151C52DAD38D7AC37904';
wwv_flow_imp.g_varchar2_table(228) := '01089A5C57E71044BB7DC8E2B61396664EEB49AD9398F0BB47502E663077426F96FE6B22040C57F57A74F7965F3D73DF2D9B1FB8EF85A7F38509B0128944DA1292C80FD5835F4D79DCF5AF37B41E2DB23DCBFE7CF66038A6A0818A31BBEA14109D4145CF';
wwv_flow_imp.g_varchar2_table(229) := 'C6ABBA4AD353F3140900B0A4E564474E5EB1FEE7AFF897A56D3DACEFAD098BFB02C6E42D7CED0FBF78C37FFDDF455DBD4ABB338AD9A3D911DE3730DD0AA550B6751018862A5082771681A0090A252AB99449E1114BED8D6B121B0FB7572FB63A52A83514';
wwv_flow_imp.g_varchar2_table(230) := '1C72941953A65B305F0B441440A4A8E8EA8240BB23B1A22F7DCCA2F4713DA92353B227DCD9C86E158DD6FAB2A02386156DB490BD7FC7A6DF6C79F0F66D8FFE79EF56A798032B69275209691191221DD861915F0D34DA67F72C38AAB8EEFDE7C640F51F40';
wwv_flow_imp.g_varchar2_table(231) := 'B9CBDE5324BCCE1058D2720AA31BFA56FFF2F24FACECE8677D6F4158DC173646DFFFF11BD7FDE72FBEB1A4A7BFE42880483A44C51A542F6FD254A10994DD0F0C29B212D27F36D4149A981DFD9621DC8287102810948682432597520958B5C83E7E957DC2';
wwv_flow_imp.g_varchar2_table(232) := 'A1F611CBACBE76615BE02A28B9BED0D717D1A349EF5154525404C094ECED4A1EDE9B3AB23775546762554276458FF7B59E82220DE1534D73560AFEF56BD390D9F8223822EF149FDCB7FDEEE79FF8DD738FDDBFE3A99D637B801458C9849DB4842424AD29';
wwv_flow_imp.g_varchar2_table(233) := '30B8820127AAA7910BF3D5744A9FBDBA8B811B03C1B205243F67C63F2CFA72AF3FE198DD9F68A97E07FC4E62B41522244B5A6E61627DEFCADBAEF8F743DAFB4D1E57ED8E32F3018BFBC2C66CE00000977EFADDBF7EF4DEFE8E9EA27643313B4274FFA3B2';
wwv_flow_imp.g_varchar2_table(234) := 'D0843EAA5A00C28C7C76A88AD9AB45216804052092262C3A54744908EC6B17872FB18E59691D7388BDAA4F7667842D5113390A1C97945F87DCB357A6957B04041440A4C175759148099449D9D59158D99958DD953CBCDD5ED1662F4EC8AEFDDD2150E43B';
wwv_flow_imp.g_varchar2_table(235) := '3310F82FA9BE99192B4C3E3DB0E3FE179EB9FBF94DF7BFB069EBC81E552A8090682793898400342562281A207B898818AA0100CDC98DF16A39475AA87196A963767FB1F394313B0091F00EB084E5E6C78E5BBCF657977F7C71BA1BAB2203661E61715FF0';
wwv_flow_imp.g_varchar2_table(236) := '188B607862F445FFF2379B0776B7A7DB9452BE16EF37370628787C6A65475FCD75245234ED96BF8F9AB9047E511B14C65321C785920B8AC892D89711ABFAE5BAE5F28825D6A1FDD6A24ED19640294013284DAE065781F6E51EC2F16BA55A9B35F168845E';
wwv_flow_imp.g_varchar2_table(237) := '51C9EC6F2731618BF694D59FB6FADAED656DD6E2A4D59394DD09D92931253129318168976DEDCAAB77014A00C5A15C7ED7F8E8D383830FEDDEF2D00B4F6FDAB77DE7F89056451012AC44D24A48440050668559B45BC1DB883554BBF20D375741586E651A';
wwv_flow_imp.g_varchar2_table(238) := '6507001095CAAD91825F74D042759774F457566B77F570CC0EE16AC255860F25AC44697CDF2B8E3AEF27977E8483F79682C53D0E98C9D527766E3DF7636F2FB96EC2B635546E125D1DB37BDFEF2F37C6F7D9D14FC0081D3345CCEEAFB831A17E593E0207';
wwv_flow_imp.g_varchar2_table(239) := '4613B80A8A4A6B0D02A12D898B3AC58A1EB9AADF5ADD2797F788C51DA2332DD2B6B7784A136802AD411169ED89BE3947C5DFAF998005305AAB34399A1480324F4961592269A165CB6442A6133265094B0A890044E068C8966838EBEC9A283D3F92DF369C';
wwv_flow_imp.g_varchar2_table(240) := '7D6E24B773B438902B39250740839068251396B4A40C521EA1E28D0EBD1BE1A22E5591728DDF8E8EBEB775FAECD3E5C604A7A8EC49A5E7E3E7C6A0BF214C246607123AFC17201049AB34C22DAFF8BFE7AE38968838F3BD7560718F094A2B29E4ED8F3F70';
wwv_flow_imp.g_varchar2_table(241) := 'E9A7DF9D4AA5D033D03112B387C3B450CC0E53FBEC15B931338ED9C1BB7110539E02914C9A0D01B8048E4B8E1240008292166692D89711FD9D6249A758D421FADB454FBBE84A63475AA42D48D990B0844012E8A7C860A5CA832780088066E3396DB63D51';
wwv_flow_imp.g_varchar2_table(242) := '2AEF52B1A4264A7A2CAF46F26A30AB87B27AEF841E9ED403393D5E808243A00520829068495B084B1A3DD6CADB06A47C5D53F947E5B210513DAD88D9CB2989101A77A7AFE25B15B34F3F830AB5947D9A983D98369F3666070494086E61F287977DF48A35';
wwv_flow_imp.g_varchar2_table(243) := '6772D8DE6AB0B8C707B372F51B77DEF2FA2F7DACB7A39B349197DFE87DB00368BF812100343466AF24A414BE027A5B35FB1B9882A3C825F0EE40040989490B9316B425452601191B13499149605B0253162604480BA415124D00578372C9D5907328AF28';
wwv_flow_imp.g_varchar2_table(244) := '5B826289F20E4DBA902B41D1A5920257852E588225490A940860CAF290898E3178DBBC612E64B9D446E04C62F69AC9E675D46737313B10F82678D042E4CDDE9FCF6EBA10CC9C86B31E43317BE5B55A28DDDCC87517BCEB5DC75FC605675A1016F75861F4';
wwv_flow_imp.g_varchar2_table(245) := 'FD33BFF8E67BBF757D7F579F220553C7EC35A9F4D9FDF1A1EE98DD44D4E51C9510356AD00B02C0C85C00809F2E69061802D01A348022AD09B5E918053DD695F3A6DE4CA0DF737309C21B42A4F05657A11F797BF731A0C12CEB05F02D67138213846437B8';
wwv_flow_imp.g_varchar2_table(246) := '17A9FEF0F8A3A1F703553C576DB347EDF8D9C4ECB0FF71B7CEDC1888EEDA479569AF00B6904E76F89FCF78FD27CEBC9695BD35B1F67F08B370B0A474957ACFA5D78C4C8EFFFBCFBEBAA8BBCF552ABA52A9F632A5E059DFC9F1F3D9A3CA5E4B14FCA7A231';
wwv_flow_imp.g_varchar2_table(247) := '3B44A5B50C929F9AE9E7781012560E37DAC4A47E92897916050830AEAEF9B72C8E15434864D2B87C75DE83C62627F48D7BF202EDF25B04E085B1E15643EF4359EFC3CF9A503D88D9219A1B8318F5C4BDCE57C4ECB534B71CA7FB03271877A7FAB759D1A5';
wwv_flow_imp.g_varchar2_table(248) := 'C0978FFA42354F8191DC1853F8B71CB3475E6309E96487DF7EE2E546D9252B7B4BC2917BDC2000A5B525C43BBEF2E92FFEFA078BBAFB1CADBCE766E6B3832FA65E803D6DCCEEFDFDF83B3D0194AB4BD698A7ADF26D0150D78E80BD73907703E0ADBA0DCE';
wwv_flow_imp.g_varchar2_table(249) := '126A99CA15138DA8D65C8D357561647F1250433988F6C68E4018C3313B428D5B9F5005B6CAC418FFC26B04EDE1807A866E4CF9412CBBFF410BD39F620A9F1D42C359346637A93B9531BBE564875FB3E1C29B2E7E1F97876C657802246E208044545AFFF7';
wwv_flow_imp.g_varchar2_table(250) := '1BDFFBBA73FE62606CD0969691A820E31D83A0D7A7C60C6A30891A1C535B3383DA31D106AB941DA33EBB91CC69B7900AAFBF2F2B7B45E72B5C8A99287BE425A21CFD93A7DAC257F61AC72356DD65046359300F596D10D552763D63652FC7ECFE1D120155';
wwv_flow_imp.g_varchar2_table(251) := '4CCCCEC467AF7AA3432955519FDD3FBE7230B6A4E564872F3DE2EC6F5EF41E53778195BD65E1C83D9E986D3D88E8F55FFAD8B7EFFA557F77BF432E4C1BB3A3999E335267D638EED7C925F267083D3786A658E65A4EAD2B9F1469BA983DF0C2899A16B3FB';
wwv_flow_imp.g_varchar2_table(252) := 'C7CF2866F7FB52BBB519E6C604FD3F109F5D578D2F0712B3231085562A05DD36D712C612969B1BBE78CD993FBEF4C3096141D56F996929D8738F27882628C66FBCFD5F08F0A63FFDB2BFBBDF51EEB46B50FD5410F2730883636A6907004494DD3FACFA14';
wwv_flow_imp.g_varchar2_table(253) := '61652F0F2404589580113DA652D923812A54DE2AD4A7ECC1E0E1F7BCA6CF5E7DE1D53E3B0080400A7CF6F0011559DFBE7753573EBB67B10390D9D004CA931653751260BF317BE83DAEB106B5C6CC8A252D373B7CD19AB37E7CE98792D2E6C4C7D68723F7';
wwv_flow_imp.g_varchar2_table(254) := '38A3C99BD2BBE64BFF72D35DBFECEFEE777464678F0A3706661CB3435973C098F4344509F8EA987D7A9F9D7CD9C5900B5111B3FB0207FE538DF5D9FDC7A331FB34F9EC41CFA7CD8D6950CC0EA179DD8A82BDB54E5111B387AE83D093F468DD1834F74391';
wwv_flow_imp.g_varchar2_table(255) := '768DCF7EF1DAB37E74E98752D2D2C4DB742C0078EC8D33C2AF12F28DB77DF475E7FCC5E0D8A025CB890D912413F3FF99C5EC447EFEB71130AC3C2CF4021D49D4014F02A773634CA344532A7BA568CEDA67F71E2704DF678F5E6AF8E75A5A8660364409B5';
wwv_flow_imp.g_varchar2_table(256) := '537E3F235E74304FA0717A65A7E8FF02A5F67CF68A0143D7EA70C5746EC51B8D58F6D9C3CA1EF1D92B73632C273B7CD911E7FCF0920FA5A4AD7919EA028123F7F81398E06FFFEAA7BF74FB0FFBBAFA94D6DAFF8407313B10EA6995DDCBF6AB706F1B17B3';
wwv_flow_imp.g_varchar2_table(257) := '9B641EAF2F532A7BD8F9984DCC1EF1D931C8FEAC1DB34F93CF1EEDD574317BCDC3EA8AD9C93B3E7292DAE3EED4317BE40CE55F7AD867F79F0A5D8714D2CD0E5F7DF4CBBEF6B27FB250B0B22F2038728F3FE663AFB4FEE21BDEFBBE975F3B343E0C02BD8F';
wwv_flow_imp.g_varchar2_table(258) := '28FA1380337063422B5D69AAC342447C764F43A79C8F8C341556F6EAC49EF02B66ABECE15E55C6EC95E99ED53EBBDF9439B24AD96BE68FE0FE726342313B96DFE572ED5FD4358E0EF7B37C1752FB98D08C0085953DF4121D55761428DCECF0DB4FBCFC5B';
wwv_flow_imp.g_varchar2_table(259) := '17BD5702B2B22F2C38723F58305B4C48213E79F337FFF907FFDD99EE905268D230639FDDCF8D01CF9099596E4C9049A38D68D514072F6627A0B042456276685A6E8C7F924A9F1DA6C8D30C59FFFED01874B1AA307DD074B0DA6826F9ECA62C50F05E576C';
wwv_flow_imp.g_varchar2_table(260) := '6B3ED52C48E0D284FD22808AFB2AAAB506152A4AC798D2FD3A3FFE81D35FF76F675DABB41682B31E17182CEE071144A0B4B2A4FCCA9DBF78C7D73F236D3B69255CA521BABB5EB51B138DD97D699B62E7A60A37867C57BEBA3849E4748830DD4AA50A4326';
wwv_flow_imp.g_varchar2_table(261) := 'B20615D1FF339E51CCAE7D650F72633CD1376E7E649B8BC88579216F640DAA281F4765D3DB1CEEB5B4BFDC18EF2DA5D06BCCBD8B2084AAC4C7AADF8E6F64858719115C54F83A7086CA2E5068E5825BB8EEC5EF78D7099729AD041EC07EE7CC3CC1E27ED0';
wwv_flow_imp.g_varchar2_table(262) := '61EACFDCF6F8BD57FF7F1F1D2F163AD21947BB81A255DB2CC12DBF793E88D96B52C36727D4385D6E8C790EBD98BDA6B287637600986247C0FA6276113AC54C73632A160DED373726986B0DBF2AB80DAA5C6D80DA9BE28C4C1DCF28668F2A7B85AC57C4EC';
wwv_flow_imp.g_varchar2_table(263) := 'E5F1D37B345AC5D712D275F26DC2FAC6CBDE73C5DAB3945642088ED917222CEE07238E52B6947FDEB1F9355FFCF0A6BD3BFA3ABA1DE5C2B4DA319398BD1C180280293368F4292A1FE1646A3267995AD983849172BB33CB8D29FF3C83981D4444702B3F12';
wwv_flow_imp.g_varchar2_table(264) := '5E554CAF292C7B475EA1618C0AA6DFF9E86E79357A1E89D9BD7909F46AED005416629CF2B7139EAEA8BC33A81DB307EF4F45CC6E09CB2D8CAFEE587CD3251F3863E9515C116C41C3E27E90623EB70313A3577FF9A3BF79ECDE9EAE3E459A2A640DBD7FC2';
wwv_flow_imp.g_varchar2_table(265) := 'BAB5807263424A37A3DC18805A6B508D9687EC9A99E4C654DBF1E6B40095EF1E018017B3971FD608155BE1EE376647409A323DA246CC5E911B83805208373B72E621C77EE7920FAE6CEF774959C8CABE8061713F7831FB7BB8CAFDC7EF7EE1FADBBFDF91';
wwv_flow_imp.g_varchar2_table(266) := 'E990422AADA172063598138529F7E4ABAAE26BC6042DA8F61D3D42300F4B65118F9A12A6D93A63F608E1983DA2EC508ED97DCD0D773EDCCF5040EDC7EC91E7110404836210B31302457B4E50F50ECD2A66AF1818CA4F55CE7786637673E73165CC2E5010';
wwv_flow_imp.g_varchar2_table(267) := '11E547DF70DCA55F3CFF9D29692BD29217A02E7058DC0F6AB45756046FBCE3677FFF9DEB5CD29954C655AEA95EE0C7A491DC18135A475A895604330EBD4604D45329BBD70205C5B6AA957DCA35A818D6DF6994DD133B9341681C92A03E7BF0787900A8E1';
wwv_flow_imp.g_varchar2_table(268) := 'B3D71BB387FA3395CF1E16E7A962F6CA7C76A871670007901B53917E2385544E5190FBD973DEF2F7275E0EDE5F059BEC0B1E16F7831D02D25A4B21EFDAFCD89BBFF289A7F7EEE8EBEC7195AB01CA354CFC19D419C5EC9ECF3EB51B03A1A9CC881B03BE8C';
wwv_flow_imp.g_varchar2_table(269) := '052B607DEA8CD9FDF53B649AAA8AD90980AA13D2ABDD9840AFFD3B8CC885206275CCBE3F9F3D74AE50CC1E3CE8A5C80487CD2866AF186E679A1B830052586E7E7455E7D2FF77E13F5CB0EA442EE11B2758DC19809005FF7FBEF51FDFBFFFF68E8E6E2984';
wwv_flow_imp.g_varchar2_table(270) := 'D2CAF357A68AE36AD467074D026B3DEE21CA426636372D1783C740D92BACFFDA6A3375AF8CD879B1B9F6041DFD53D488D96BFBECD1283BAAB3355212BD57865A9A2EA51DB5B14A66E3B3879FDA5F6E4C452B84DA7455201201E5C72E3EFCF41B2FFC8715';
wwv_flow_imp.g_varchar2_table(271) := 'ED7D3C7D1A3358DC190FA5B51402003EF7EBEF7CE8A737963475A6338E72A7CC8DA9E5B313417591DBF231E1A94B4FC4236E0C544EA2CE3A6687506E4C95CF0EA68EE37E7263708A981DA3F725D3F8EC15575FF6D923BDF5F654AA5CA904107E7B0F2037';
wwv_flow_imp.g_varchar2_table(272) := 'A6ACF841CC6E09CB2DE504D0C74E7BED874EBB1AFCD11D9818C1E2CE943155E0058AFBB63DF9B66F7EE691E79FE9ECE801200D915C46809A313B6A409832033EB2A92979C64B104DFBE79F49CC3E9DCF6E226802A0B0B257F8EC24FCB54253C6EC5384C9';
wwv_flow_imp.g_varchar2_table(273) := '417B91EEF89E55E8C1FDE5B3476276332AEC7785B07FA4D78BFDFAECE12128C88D31AE8BCA8F1DD9B7FAFFBBE0EF5EB4E25822A2AAE2C44C0C607167221080D2CA1232572ABCFFC75FFAAFDFFFD8B2126DA9B4ABDCC85122F212931B53BDD966F99820C6';
wwv_flow_imp.g_varchar2_table(274) := '2400048DBA99313B85068F1A317BC5F5869A08C5EC2637A62A666F4A6E4CC53DD04CDC9819F9ECE5B1CB9CC212D2754BE014FEFA988B3F73EE5BBA93190ED8630C8B3B5383C0A2F9C59FEF7EF7F7AF7F76DF8ECE8E1E20D0A400AACBCD4D9BCF0ED1725D';
wwv_flow_imp.g_varchar2_table(275) := '219FBD916B50433E7BD48D09C97A45E24ACDDC985A6172E814919FBCFED4282F334DCCBEBFDC9829943D52DDB71E9FDD9430104200A02E8C1FD2B1F83F5FF4B6BF3CE21C00E07CC778C3E2CED48688346929E4D0E4D8877E76E38D7FFC054AAB239D76B5';
wwv_flow_imp.g_varchar2_table(276) := '5BBED90F261071CABD2CC88F3111A67163201243D739831A5A205A9D1BE3F77406B9317E533562769310198C40A10100A7F5D9C17B93FC6FBC5304E9E6CD8AD9436B740549215DA7006EE9751B2EFCD4D96F5A96E9E5426007032CEECC740421FCAD8FDF';
wwv_flow_imp.g_varchar2_table(277) := 'F3DE1F7FF1F1179E6DCF745942BA26849F81CF1E049684E4CBEE1CC4EC81875C991B53A3D6A367958472632A562A61A539E3D70B9B516E8C27E20415B9310712B313813FD879EF6E8D7C76242984064DF9F1B5BDAB3F7DF69B2E5F7B1670C07ED0C0E2CE';
wwv_flow_imp.g_varchar2_table(278) := 'EC872084CF96F2FF7EEB37AFFBFD0F269D7C675B271028AD612A9F1DCBF91E26E69DC28D81038ED9A17A06B562797FB8744C556E4CC804AF991B83003563F60A399E693EBB1FC8A31FD097AF31725D156741F0374E8260ABBC50CC8EE523FCEE200854C5';
wwv_flow_imp.g_varchar2_table(279) := '094B26DE75FCA51F39EDB55DC98C222DCA5615137358DC99191184F00FEF78F6C33FFFF2CD4FDC2BAD647B2AAD48D5FE1392480466976E6DD4C7D3C9C6C4EC9EE55DA5EC68461B84209687BA7CF62A65AF8CD97DE73DEC4DC17431BB064024110C5A35F2';
wwv_flow_imp.g_varchar2_table(280) := 'D921EAE6D78AD9B1323726788DF64644F2860B0128857054019CFC79AB4EFAC4D96F3C7DE951C001FBC1078B3B335382101E006E7AE0F68FDFFAB527776F4DA5DB5396ED6AE579DEBECEA02F8184FBF5D98D5F5C9F1B63D6511AB3A32A37C63B05C08C73';
wwv_flow_imp.g_varchar2_table(281) := '636AC5ECD56B50BDC3F6E3B307B9310488E5DB023F9F9DA6AECF3E8B35A8FEF0E395E497285DED4061F2B0BE951F3EED356FDCF0520070B5925CB6F7E083C59DA90F4D1A0005E26431FF85DFFFE0BADFFF60EFF8705B5B872DA4AB4D2E8DA9CF4E8018AD';
wwv_flow_imp.g_varchar2_table(282) := '2E1052AEE8A671B3F5D9C3317BD8F0F1522AEBCB8DA952F64A3144AC88D9C3A7A886BC02061889D9A7CD670FFAA32B7B52F314DA77A5100985904A6B2A4E74A73BFEF68497FFC3C6AB7A929960E142CD1E32F186C59D990D814BB36364DFA76FBFE96BF7';
wwv_flow_imp.g_varchar2_table(283) := 'DC3A51C865DA3AA4144A6BF2C47366B93153B9D59579849E471DF2D9671DB3877CF69AB931910C9CF00010DDE8A2C60C41286C2FE7C694A7942B3376A6F5D93D6ADF1990C95042408196024D8549CB4ABE61FDF9FF7CEAAB0EEF5A06A1DF117370C2E2CE';
wwv_flow_imp.g_varchar2_table(284) := 'CC92A0E218003CBE6BDB7FFCF6A6EF3CFCFBA253CCB47558281C726BE5C654C5EC75AF412DEF43374D6ECC746B50BD66A630400CA2C6C115CA3E5DCCEE25DF440A3156B8313085B2CF2C6627404004819626D0C50994E255479CFB9E93AFDAB8782D0070';
wwv_flow_imp.g_varchar2_table(285) := 'A623032CEECC0142448AB459E5F8C0F34F7DE6B7DFFDE99FEF2CBAA5545BC696B6520A6AC4EC5833B82EB7B9FFDC98FDC4ECE439DE15F708D1A68219C94AFBA5C6F466780020009C722F2AB3CED6DC11948FAFACF508959E4FF559CC85D43A8346815248';
wwv_flow_imp.g_varchar2_table(286) := '576B2AE440CACBD69CFEBE8D579CB9FC680050A411906B0930C0E2CE34044D4444C604B86FFBA61BFEF8931F3F7AC764219B4CB7276D5B6BAD890ED467F75EE2F9E9BAACEC185E800A81D857E7B343E859FF788DD18CC49A317B28ED7D9ADC189855CC1E';
wwv_flow_imp.g_varchar2_table(287) := '9C652631BB4012423AE442216B59A92B8F38F35D27BCE2CCE51B0040698DC8B2CE946171671A86264D0446E21FDFBDED8B77FDF4FB8FFE61606C50A6DAD2892480565A4F971B3375CC0E807ED1C46A65AF317D1A58315815B97BE13F014E1BB3CF2A9FDD';
wwv_flow_imp.g_varchar2_table(288) := '84EB9EE7EE8D1A33DC0735B297610D65178888E8AA2294721D6DBDAF5A7BF6FF39E1921317AF85E8C8CA30012CEE4C83094BFCF691BD5FBFFF57DF7CF0D7CFECDB0E42B6A5DA240A0554B9592B004CA3EC81609AF6BDA34458D9610A718F34138DD92B0F';
wwv_flow_imp.g_varchar2_table(289) := '109181C05BBB1495E3BA7263661EB34FA3EC082084D4A4752907DA59DDB3E29AA3CE7BE3D12F5BD3BD0CBCCC25E06418A6262CEE4C53084BFC4431FF93C7EEFCCA7DB7DCB5FDC952296FA5DA5276128834E9B2DD31A5B2FB9921A6595FD97DDBDC6F20B4';
wwv_flow_imp.g_varchar2_table(290) := '06156AF9EC6662977C019F7E06D5AB24E31FE605E121D9258878E646D7CD96855EA547402D2A4F5231835A3BB95E0473C402105C5582621EACE459CBD6BDF198975E79C4D9DDC976F0BC759675663A58DC9926129E6E05807BB66FFAC683BFFAD99377EF';
wwv_flow_imp.g_varchar2_table(291) := '1CD90B029389B684B408A65AE46A7263A83A66AF50F6503DE1DA3EBB69CABC7AFFB931E00D03B3CE6707003DABDC1844441402D1D10A4A3920B5B863D1CB0F3FF5F51B2E3877C531E628A59539A66667182680C59D693A266952A0315260243F79EBA67B';
wwv_flow_imp.g_varchar2_table(292) := '6E7AF8F63BB6FD793C3F015622954849212B62F95ACA5EE9B307D1F434313BF84381397CBADC98600088CEA0EE3F3726A4EBB3F0D911400881025DADC929807292C9CCB9CBD75FBDFEFC4B0E3F7551BACBBC87266F9D131C9919C2E2CECC1D61AF06009E';
wwv_flow_imp.g_varchar2_table(293) := '19D8F1B34DF7FCE8F13B1FDAF94CB198032B914CA46C21094813513436A75A33A850231132C2FE7CF6E8C15067CC0EE47729748D338BD94D2564010888AE56A08AE096D04E9DB478CD15479CF5CA35A76DE85B6D8E54A40180CBC230F5C2E2CECC3544A4';
wwv_flow_imp.g_varchar2_table(294) := '8804962DE3C7766FBDF5E9FB6E79FABE07763E9DCD4F80B42C3B99B06D01A8492BF0FE4611457806B5BAD663EDDC1800E3A0CF2637C654B0A9DE7603C02FFE158EFC414F9BCF6EC6014481021591520EB845D02A91CA6C5CB2F692434FB9E4F0534E58BC';
wwv_flow_imp.g_varchar2_table(295) := '267897341027AD33B386C59D993734910E39F200F0CCC08EDF6D79F8579B1FFAD38E4D7B46F70129B06C692713D23615C9B449FC9B49CC1E4E5CA991CF5E1E086A3BE033F0D9A17254A81DB31B8116421080A35C5225502540EC6F5F74DAB275171D7AE2';
wwv_flow_imp.g_varchar2_table(296) := '4B569DB8BE6F55F02A572BC1AE3A73C0B0B833F38F26AD89A46FCA03C06076ECFE9D4FFD7EEBA3773EFFC4A67DCF8F6647813458B6B412B6B4A414E655046653EF1A785B6AD4CC8DC1CA80DAE4A5477263C25B0346237702F323064933153EBB99193535';
wwv_flow_imp.g_varchar2_table(297) := '111491D20E2807940B80ED99AEA3FA569EB36CFD79AB8E3B75D9514BDABA833695D6029113609846C1E2CEB4102696AFD0B89D6303F7EF7CEAAEED4F3CB0EBD9A7875ED83339044E090482B4A5655BD2327EB42FF441CD2E8099AC418559E4C694D7A006';
wwv_flow_imp.g_varchar2_table(298) := '2F177E351B45DAD50A9403CA01D260257ADB7BD7F72C3F65C91167AED870EAB22357772EAEBA5E8ED399C6C3E2CEB42244A48908A8223F642037F6E4DEED8FEED9F2C8AE679F1C787EEBF8BEC1DC38958A401A840469A1B4A490520A61B26D3CD5367FE6';
wwv_flow_imp.g_varchar2_table(299) := '44651305A05C73BE86CF0E21431E8207D0E4CE086DDA0472B52652A05DD02E680528C04EF6B4751CDEB16843DFAA1316AF3971C99AA3FB572FF62374733AA51522F2A6484C536171675A1DB3BC9E20E2DB18F665479F1BD9F3D4D00B4FED7B6EF3C8AEED';
wwv_flow_imp.g_varchar2_table(300) := 'C37B76E546470B93934E115C0748031108012840089002840C545500A2A8DAC9144D7D1B0ACEAB818008B40652401A3400284004214058693BD1996E3FA4AD7B65D7E2237B0E39B27FD5FADE430EEB5AB224D3136ED524839A29550ED299B981C59D5948';
wwv_flow_imp.g_varchar2_table(301) := '18B5252204AC594D65AC3039981BDB3539B2637C70D7F8E09EC9919D13434313C3134E6ED8C94F167325A75822ED6855D49A80402B000DE1581D118405080921134226844858C94CB2AD37D9D661A7FB33DDCB3BFA96B5F7AEE8E85FD1D17748A6B7AFAD';
wwv_flow_imp.g_varchar2_table(302) := 'AB27D55EDD1365F239394267E6091677660113683D0020E2F4C9E005D7C93B85825B2A2AA7E096264A0545BAE0145DED96C59D484A2B6D27258A763B95B2124969A5AC64DA4EA6ADC4348D9B3961333B2BA6A91BC93073058B3B132B8CD253F08F975DDE';
wwv_flow_imp.g_varchar2_table(303) := '083384480350309698A6C1A4AEB392332D078B3B73B0E0AB7D901833DD9F7E797993FF33AFFB6716162CEE0CC3303184574C300CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D611826';
wwv_flow_imp.g_varchar2_table(304) := '86B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC33031';
wwv_flow_imp.g_varchar2_table(305) := '84C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C61716718868921';
wwv_flow_imp.g_varchar2_table(306) := '2CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C61';
wwv_flow_imp.g_varchar2_table(307) := '7167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B';
wwv_flow_imp.g_varchar2_table(308) := '3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC';
wwv_flow_imp.g_varchar2_table(309) := '19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE';
wwv_flow_imp.g_varchar2_table(310) := '300C134358DC19866162088B3BC3304C0C617167188689212CEE0CC3303184C59D61182686B0B8330CC3C410167786619818C2E2CE300C134358DC19866162088B3BC3304C0CF9FF01FE50A6F34D52BE720000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11289045397554863)
,p_file_name=>'app-114-logo.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000243494441545847ED964D6B13511486DF99CC24D34CA2D5348ED631636BA245A956AC20A5826EBA1077DDB8B22EFD1BFE0D9782';
wwv_flow_imp.g_varchar2_table(2) := '2BE952171541B0D42E14A341AC3A1A126331A6A1F62369261F33F65C514298E6B653A9087397E7BEF79C27EF3DF764843B8FA71CFCC325F800BE03BE03FFAD03D5550B9AAA232887F0BD5240A0C7DB30F134076CDB81260DE2626A9C557D69CEA2D8CA7A';
wwv_flow_imp.g_varchar2_table(3) := '22F004D0B09AB870F42AF4D87156F473F13DDE96E61190C51D436C0BA05511714E1F63C95F17E610506DA88D3E8CA62EA3DEB4F0FCDD13206AC14DC723E20290DD578C498C252758AE3973064F73D3104501B5F53A685F8904D9DE56BA6E105C8056C3C6';
wwv_flow_imp.g_varchar2_table(4) := 'B5A19B389FF875DFAFF2B378B4708FD94DC569114C37DDAE00E87078D3EE89E149966726338DAABC84F5B205239E841490F075390B29E2AEDBF515FC4E408D474B0E49ECD71E0A194868032C962F66516AE69913ED3A5E71DAE75EC15600FDE124FAFBF4';
wwv_flow_imp.g_varchar2_table(5) := 'BD01102A0A868D51562C937B0147ADA1BE62E3C80183C57225139158088D15010387532C96FDF611F27EFEB70ED701B2FB4CFC1206B5532C71FB9BA726745A0E6B48D2B5BBB2B854C062D5E4CE062E001549464730A49F65000B853730D7D27F9E21C5E8';
wwv_flow_imp.g_varchar2_table(6) := '19922E2E255CFBA25B2F7001E8707DCDC6B1DE132CCF971F9F108C8A50360EE2C6F86D2872180FE6EFA28C3C6AAB4DC47A34A62B6F14A1EC93B87DB82D80CE2CD4E9D74FDF729D0DDC8A1D024F009DD3F161FA3E32CBCF765A9BE93D01D041FA3B3E191F';
wwv_flow_imp.g_varchar2_table(7) := '81B379F71F4A69A8BDCADE0278AAE672C8B3033E80EF80EFC0DF72E0273DF745701B54E5270000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41410907575442663)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000012DD49444154785EED5D0B7454C519FEE7EEE6BD211B424C502011AC80200F115041259004AA16DA7AA0D842B2B416E9694FDBA3';
wwv_flow_imp.g_varchar2_table(2) := '3DB5B5352F5A8B6DF5D49E9ED607D50DD86AF154AB45C524BC2C587928082250E51503248690D7E6BD7B6F676E726509FBB83B7377F7CAFEC3C93904EE3FFF3FDF7C77E69F7F66FE4B000B22208000119045514400904048022104904042F0A130120839';
wwv_flow_imp.g_varchar2_table(3) := '2084001248083E14460221078410400209C187C24820E4801002482021F8501809841C1042000924041F0A238190034208208184E043615312E8D11DDF4E75BB7A6DB264B52944B68147B2C95648A1DD9518235DD62DB9A1032CB28B28924B92DD2EAB2D';
wwv_flow_imp.g_varchar2_table(4) := 'DEF5E0EC67DBCDD6FEA812485180945739C6128B3C13143293823383FE4CA23F716603CA24F6F4513B0E50D8761122EF563CD2AED242E751424089967D1125D0236FACC8ECB1CA371389CC941465066DF574DAF0B46835FE32D1DB4A3B710FC57217C864';
wwv_flow_imp.g_varchar2_table(5) := '97A25876962DF8EBF948B52D620462A34D454DD142FAAEFC1408B925520D8C313D3B65A2AC299BB7EEF5488D4A6127D0537B57C6D537F73A00949FD0CEBC36C63A344ACD558ED297F477D9F68475F7DDF8349BF6C256C24AA05F6D2EBACA239357A9F5D3';
wwv_flow_imp.g_varchar2_table(6) := 'C2D602AC3810027BE3FAA43B1EBAE3B9C670C114360295D6ACB84E52E42A6AF855E1321EEBD585C03162814525732B0FE97A3AC487C242A0B2EAA2D904C846749043EC8DF03DDE4A14795149E1FAED46AB309C400323CF1E6A68B2D1C6627D420874D291';
wwv_flow_imp.g_varchar2_table(7) := '6886D12391A1042A7B6D653249EA61E4B94EA8A9281C1E041438A47427CC285BF874A7510A0C25100D0A3A8128C5461987F58401018554D2E0A3C3A89A0D23504595C3A110E539A30CC37AC2870051C88A9242A7D3080D8610E8F1771627B577249FA606';
wwv_flow_imp.g_varchar2_table(8) := 'A51B6114D6117604CE2B5D09238D98CA0C21101D7D56D1D1E72F616F362A300C013A0A7D8F8E424F8A56284CA0812D8AC30064ACA831281F51040E97E4574E10DDF2102650598D630151943723DA74546608020A215F2ECB776E12A94C9840E5D50E6A80';
wwv_flow_imp.g_varchar2_table(9) := '325FC408948D1602E4ADD202E70211ED42042ADDEA4894DC4A07354012310265A386809C9AD269BBFF9697BA782D102350B5638E04CA565EE528177D04642079E505CE6DBC960811A8A2DAF1330594DFF02A47B9E82340F72C7F5E52E05CC36B891081A8';
wwv_flow_imp.g_varchar2_table(10) := 'FFF32FEAFF2CE2558E72664080BC4AFDA0AFF25AC24DA0FEE57B313B6792C1AB1CE54C81404369416536AF25DC04FAF5A665C3DD16CB195EC528671E04146B6F6659DE0BE7782CE22610F57FAEA7FECF011EA528632E04A81F3489FA410779ACE227D05B';
wwv_flow_imp.g_varchar2_table(11) := 'CB672A92F42E8F529431170244966F2A99BF7E178F55DC042AAF29CAA377B9B6F028451993214094B9A5F9EBB8C231FC04AA2EBE93C2C08EAD62F98223401744F3CB0A2BD9F9F5900B3F81AA1C8BE9E1B10D216B4401332270175D89BDCE63183F816A8A';
wwv_flow_imp.g_varchar2_table(12) := '8AE914E6E4518A32264340214BE829C59778ACE226504555D1BD7437F7191EA566969165057A3BFBA0AFC703BD5DFD77F2E293E2202EC102F1C9712049DC9099B7D94471501FA892C7406E34CAE8115672991D61658469AE7781C72DFBC4D26295203DDB';
wwv_flow_imp.g_varchar2_table(13) := 'A612EAB22A4820F1EE6C6BEC00574BB75AD1E46BA7414ED618B0A70C537F6FE93807A71A8EC107FF7B4FFDDD664F8421992CDBCC65529040621DD9EDEA85F367DB2133FD0AB86D4A21A40F106770ADCD94486FEFAF82C6E6CF60E8F05448B4C58B29368B';
wwv_flow_imp.g_varchar2_table(14) := '341288BF273C7D3234D6B640BC3501BE76FBB72025213560651D3DEDF0CAF6BF41AFBB07AEB83AFDF2F0899040FC046AA55357079DBA664F990BE346B0DC56C1CB91BA03B063FF1648A15359DAE5309521818277BABF279AEADAA0873ACFF7DEF5E3902A';
wwv_flow_imp.g_varchar2_table(15) := '59BBF10F90409DE98C1143429233E5C34820FE6E39F37193EAFB2C9AF5CD902AD9B0F5397075B541F698A121C999F26124107FB730028DC81A050BA67F3DA44A36ED7919EA1A6AE1CA2F5D06C7A1904021F5FD450F379C688638291E9615AE0AA992E7AB';
wwv_flow_imp.g_varchar2_table(16) := '9E843EB917B2A823FD852F48A00B5DD8D7E306B6B2621165163D8E4BB006ECDFF367DAA1BBA317EE29B897AEC06CBAB8D0D1E38217AAD742624A3C0CBD32F0AA8DD9C3A2DA2C826D899382DAA3CB00A31F42020178070207E39B3C24410DFCF9DA86E86C';
wwv_flow_imp.g_varchar2_table(17) := 'EB819606178C1E712DCC9D7287AEAED9B2FF0D385EF73FB067D980D53DB830F2327B58DDBE8AE90291B14C20F686B73474D0B7DC0D99F62C183BEA7AC848CD84A48414A83B77128ED61E84C6960608B40DA1ADC4E64EFF328CCE0A7C435B5BC2FB5B81B1';
wwv_flow_imp.g_varchar2_table(18) := 'ED1036AA311269F68C18960B5D3D1DD0D4DEF8B93D6C64B467A59863448A5502694140D65905D31741C1C4AF4362DCA589D1361F7A195EDDF9823A18648E4ABBA4D3BCEB9932F64698347A06C45B2E8E32F77A7AE1C0F1DDB0FFE85E7524CB1C6557A724';
wwv_flow_imp.g_varchar2_table(19) := 'EFC248DC58DBAAFED3A259F7C0BC09973AE6DD7D9D50FDE1CB50BDE755BFF5E81A068D7C285609A48D1C4BE77E176EB9A63020A4279B8EC0E3FF7C58250F23D1E0A28E647423B5AFD7034352D260587A160C4BCB541F3BD7DA08E79A1BA0ADA315E2E22D';
wwv_flow_imp.g_varchar2_table(20) := '60A71BAA837D2B4662660FABE7FEBB57436EC6B880F6BCF34915BCB8E51973C4926291409AEF725DEE245855F8B0AEF771E3BEE7A18ABEF9A943932035C3770A471699EEA2BE0B23847761A30E8B3CFB936B6FEA84F6F35D504847C2BBA62ED365CF9355';
wwv_flow_imp.g_varchar2_table(21) := 'ABE1A39307FCFA52BA2A31E2A1582410737C19891E5AFA18640F19A50B46367DFCF4B9625D6F3D9BD63C6E8F5AAFC56AB964BA1AAC501B0D7FBBA2D2E734EACBC0FAB65A78E4C50754479C39E4512BB14820E66BB0E9E28F2B433B48F7D86B0FC2A9FAE3';
wwv_flow_imp.g_varchar2_table(22) := '860700594032277B343CB0F0D19078F0C3A717FB9D5643AA48E4E1582410EBB050A62F0D5F6DDAC8CA4D0F3AAAE8ED13CD79E6B1275C84D66BBBFA5C2C1288459013ADC9F09BA2D0F27A6A04327A0B8297D03F5FB702BADD9DD18D68C72281B408F2EAE5';
wwv_flow_imp.g_varchar2_table(23) := '4F425A92FEFD2875CAA02BA9CC1C7B482F69B0871B4FB5A82BB850A6D4D6AE267878FD2A5D11ED60FA85FE3F1609C4CEF0B01513DB459F37E16BBAF0D396CE819C56160864CE39DB7E6053132B6CC9CEB645989CBFF3D09A53AF27A4A019BBF9D02B343E';
wwv_flow_imp.g_varchar2_table(24) := 'F577F54C115BE145ADC42281D8329BBDF5EC00FC434B1FA72BB19101F1676FFB9A977E025DBD1D3E8380AC3E175D8A6BE7A259659943AF50EB6C3CFFD9E775B36D081B0D010CDE16D1829149F129F0B3C5BF0F3A2A9E6C3A4AE352BF5423E46C348CEA6D';
wwv_flow_imp.g_varchar2_table(25) := '8F582410EB51365A9CA3C1BB94441B1417FC10C60D9FEA9344F56D9FC2339B1E55B7347CBDEDDE41C0E4A414983A7E1AD86D174F8B2DAE26D877F83DE8ECEA50472476906C70A76BA362CEF031F0ADDBBFEF97D447CEEE83CAEA3F4247B70B86D17AA27E';
wwv_flow_imp.g_varchar2_table(26) := 'CB235609C4D8A2751AFBFBAD93F3E19AE11360B83D0792E896C6D9965AF8A4FE901A3C64C5DF1154ED586BCE55B9302E7722582DBEAFEDB83D7D70E4E48770EAF4C9A075317D2CA8784D36B3671474D118D4D9965370E0C46E78EFE87F557BA23E7569AF';
wwv_flow_imp.g_varchar2_table(27) := '5B2C138861E0BD0DE16B080AB491AA8D626CE4B9F5863CBFE4D1EA6524FACFFB5BD591C8DFE811EC7E99BFED10F481A28640BF62D6719AF32B7BFACF0325D0DBA4563AE5F8F33134E777D60DB75D326DF96B0E9BCE76BEFF76C008329B16DDD409EF19B8';
wwv_flow_imp.g_varchar2_table(28) := 'E52A59C8E7CE78D4A7ACC10D8BF5114884B75A44FBCEDBF4ADE4345DAFBFFD4AF423C8220DF7964502F123A91EAAA7ABAD1913678554C9EE0F77AAAB33A30392211961D4C348207E249140143B24103F81B40832D714168688367F4B04249140179CE89E';
wwv_flow_imp.g_varchar2_table(29) := '4E7AA89E1EC3E877A2ADD489B646D9896687EADDC09C68762C84D9834E34ED2F33A577F13E172DB68C9F4B97F1816F71B83D6EBA8CDF22B68C37D3796806582C8F40DE81C4F1A327AA6959521253D56409CDAE7370B6A92E685A968B0389D7FB251123CF';
wwv_flow_imp.g_varchar2_table(30) := '919307030612BD6F878CC9F91264A40D83D4E43460F1A3AE9E4E68683AABCAB38281C4282798D2828089F1893067DA7C189171B54F47C03B2D8BDFAD8C4FE90135BA9BAE6B2B83FA3E1923D3FC6E65D853ED3079DC34B025F9BE37DFD8520FFB3FDA4B33';
wwv_flow_imp.g_varchar2_table(31) := '7CF4E1568680EB2624EABD997A77DE32BF397D3425DE69597CDDA860F5B173CD6C44D38AAFCD54ED5CB4BFCD54AB64855B6F9C0789F14901DBA705237133558806FCC2DAD43563C22C9874F5745D156977BA741DE7E8A6CE2F1D9158615B0F7189565DC7';
wwv_flow_imp.g_varchar2_table(32) := '39A65E371DAE1C3642973DC7EA8EC291E31F457F2A8B451FE8C295E4EF044D0AE5DD9B2C2D8BBFAB3DBA7ADDCF433C11EDEEDE2ED8FCEE263C5026023CAF2C6F52847065D5E00D4856BFB3113CF44F549334C4E208249A96C5C843F5EC3059C3C966AE2D';
wwv_flow_imp.g_varchar2_table(33) := '919DFBB7414B5B7374B7446291405A0439D4CC622C3114BB616AF41E1623B47D483ACC9A3227A44155DD948D76443B1609A41DC3B83B6F395D81E93B54CFEEB7AF7BF3CFBA2F167A9F891E7C0F7E304BB48B85F3677D25683052936519CEB6EFD98C170B';
wwv_flow_imp.g_varchar2_table(34) := '437AE50C7A58BBDA1C4A76B13D1FEF800F6872047F579BB573D1AC6E5F579BB53431BE9AA05D6D66C1C371391375B552DBD1F79726465725463C148B2310C34D7BEBF56458FDACF50CBCF69F0D7EA78BC1696246668D8691342D0B2B9FD234319F361C57';
wwv_flow_imp.g_varchar2_table(35) := 'CF54FB4BCBA29EAB1E0846EA399C56DB70020E1EDDAF6B3434822301EB885502E949CBC2803B70620FEC3EB453C530587A177F6962F4A465F14EEF326EF404184393560D2E6C3BE458DD11F8E4D4C798DEC50CDFCAF09796253E2E019ADA1AE1344D84C9';
wwv_flow_imp.g_varchar2_table(36) := '9C663D09A61C0B7E04378C9A1DF0657DBF760738373DE177E4F03E0FCDB645328766C2109B1DFAFAFAA0CDD5022DED2DFD373BFCA48909FB68E34B41AC8E40DE58681BA2BEF0D193E26EDAD89BA1F8F6FB75F55FE5F6C7D59B15BC29EE02A597D16580D1';
wwv_flow_imp.g_varchar2_table(37) := '0F21812E20CA9B64B362F95FC09ED4FF719560A5A5EB1C94ACFF9EAE08B277924DE63F055BCD05D31D96FF4702F1C3CA9BA4C1144911F89B7DB12412881F49DEAC1AE1CAF2C1DF12014924103F786A62287A15F981AFAC09A992D51B7E409DF4CFF05307';
wwv_flow_imp.g_varchar2_table(38) := '21A1E6F5B0998EB4F2B681C969B1A450D2B230399626063FB6424FC3F2827FB910485BBD859296454B13839F7B4202A99F45601F9CD39B96C53B4D0C7E700E09A40EC0DA272F83A565F14E13839FBCEC9FBB627E0AD3A670EF40244BCB3271D474C84EEB';
wwv_flow_imp.g_varchar2_table(39) := '4F1F5CDF5A0B1FD6EE099A2686D71D88BA1CAEC28CE982606959F0B3DF97E28C23D0204CD8AE7AAF9A92C54DD3C5F4E7488C4F623912E98D529A2A26AAA9E88C794F7CB0407194E6AFABE4A99E9B40E5558EC5F446E3061EA52863320414B2A4B4D0195A';
wwv_flow_imp.g_varchar2_table(40) := 'C6F68126F013A8BAF84E5AC746934181E6F02170576941E5EB3CA2FC04AA29CA03856CE1518A322643802873E914B695C72A6E0255BCB57CA62249EFF228451973214064F9A692F9EB77F158C54FA06AC7F50A28077894A28CB9102040269514380FF258';
wwv_flow_imp.g_varchar2_table(41) := 'C54DA0D59B8BC7C8327CC2A31465CC858024C1350FCFAB3CC6631537817EBD69D970B7C572864729CA980B01ABC773E52F163C7F96C72A6E023DB577655C7D734F1B551AC58F3CF03419650621D09D9D9E30E4BE1B9FEEE341869B404C5979B5631B8072';
wwv_flow_imp.g_varchar2_table(42) := '3B8F6294310B02647B6981730EAF35A2042AA3042AE5558E72664080945302D17EE42B42042AAD76CC9140E18A1FF0998B5246232003C92B2F70D29984AF881168AB2351722BCDE807F1816F02A96ED94AD2CBF39C17D2B2856894108106FCA017E934F6';
wwv_flow_imp.g_varchar2_table(43) := '8D10F5E2E3A64080FC834E5F4B454C1126109DC66EA2D358FFF78BB07CA110A0D3D7CD74FA12DA4D1026D0C028448D50667EA1D08B7963C92E3AFADC240A832104AAA8712C5514E5055163503E72081042EE29C97752F743AC1842A0D2AD73AC525FCE09';
wwv_flow_imp.g_varchar2_table(44) := '7A40565F7A52319B515A1C81D3B2F5546E79DEB6FE137302C51002F54F63458BE811EB7F09D882A2914240260B4BE73BFF6D843AC308A492A8C6F10750941F196118D61126040879A234DFF963A36A37944003FB632C9393BECCDF46B502EBD18500EDEC';
wwv_flow_imp.g_varchar2_table(45) := '6D59E90985BCFB5EBE94184A20A6A0F44D47AE6455F6D1BFDA75B50A1F8A14020D561237F917F96B1B8C54683881987115D5455315425E0605728D3416EBE2454039453CD645250B9EFD80B7067F7261211053F6484D51865B212F2A00F9461B8DF5E947';
wwv_flow_imp.g_varchar2_table(46) := '80A621DC42BF80B6E4A1FC754DFAA5F43F1936023113366C586CF9283DF94F54C92AFD26E193862140E0B1F1E73B1F5CB2E4A5FEAFC684A18495409ABD15558E550A519EA0BFC787A10D58E5A50874D13B7B2BE84D8B7F841B9C88108835E2579B8BAE92';
wwv_flow_imp.g_varchar2_table(47) := '3DE43B0A817BE9AF23C3DDB098AC5F813A4A9CB51609D6FE72DEBAD391C0206204D21AC3A6B5C3F6A48540A4FBE8FE5921FDF788DB10096023A8C343117C832E589E1ADFDCB9299CD395AF3645B5F3D654AF4CEB927B264B44990A204DA56FCF0DD4C8F1';
wwv_flow_imp.g_varchar2_table(48) := 'F427F0976F23D83B2653C5B61E0ED385C93E09C83E503CFB1292E3DE7F70F6B3EDD1B233AA04F2D7E847777C3BD5EDEAB5C992D5A610D9061EC9265B21853E1F2B07F8BB25377480457611457249B2DB65B5C5BBA249147F7D654A0245EB6D42BDA12380';
wwv_flow_imp.g_varchar2_table(49) := '040A1D3394F042000984741042000924041F0A238190034208208184E043612410724008012490107C288C04420E0821800412820F859140C8012104904042F0A1301208392084001248083E14FE3F2C4637183D9355F60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41411291012442660)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000018AA49444154785EED5D09781555963E64DF93973D21248140133004C2E64213568D087637282820E036D32DE3D83DAD236DB75F';
wwv_flow_imp.g_varchar2_table(2) := '8FCC8C4D3BD2DAD33DF6322E2838B6A0028AD828611159947D09D010924008D9F77D7909734F15AFA85487BCAAF7EE2BCAAA73F9F229A1EADC7BFF73FEBADB39E70E58B97DD955A042085814810144008B6A9EBA2D2040042043B0340244004BAB9F3A4F';
wwv_flow_imp.g_varchar2_table(3) := '04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004B';
wwv_flow_imp.g_varchar2_table(4) := 'AB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB034';
wwv_flow_imp.g_varchar2_table(5) := '0244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04201BB0340244004BAB9F3A4F04D0D106BA3AECD0D6D8015D1DDD';
wwv_flow_imp.g_varchar2_table(6) := 'D0D37395FDD72ED4EEEBEF035E5E03C02FD01702427C85BF53D1070122800E3877B675415D793374DB7B54D5E6EDE305B6F8108110543C8B0011C083F8E257BEAEB4093A18015C29FE8C00B6C4506174A0E2190488009EC15598DED457B448D31CACC6DF';
wwv_flow_imp.g_varchar2_table(7) := 'CF1F52E2D3202A3C86FD44832D2456A8BDB6B9126A1BAAA09AFD5C2A2B80CEAE4EA955381D8A880BA6699187F44404F000B0F8E5AF2CAA13E6F98E921C9F0A9333EF8240BFA07E6B6CED6886BDA772A1B8FCA2F41C8E00B1836D34127840574400CEA0A2';
wwv_flow_imp.g_varchar2_table(8) := 'D1D794344A5F7E3F5F3F9894391DD212D235D5945F7A060E9CDA2D8D063812442585110934A1E8FC612280738C343DD154D30A4DB56DD23B3FC87E10A2C3E235C9703C5C595F069FEC5D2FBD1B1A1908A151FD8F202E5564E19788001C95DFDDD50355C5';
wwv_flow_imp.g_varchar2_table(9) := 'F5D2D467CCF009307ED824B76A3894BF174E9C3B2CC8C0A9504C720478FB7AB925935EBE8E001180A3353454B5404B7DBB20D1161A093F98BC18BCBDBCDDAAC1DED30D9BF6AC8386E67A414E70440084C704BB25935E260278C4062AD8C2D7B1D73F75FC';
wwv_flow_imp.g_varchar2_table(10) := '5D30347E24977AF2CBF2E0CB23B9822C3C2388630B622A7C10A011800F8EC2A2B7AAB84192367FE652080F88E422BDBEAD063EDCB14E9215976AA3691017640188009C80C4D3DE6AB6FB83C5DFDF1F1E9AF923183080CF01D6D5AB5761DDF63F4267A778';
wwv_flow_imp.g_varchar2_table(11) := '3E10CD7683E894988FE288007C7004F9EE4F4AE210B873ECF7384916C57C71643314975D14FE1FD700B816A0E23E024400F7311424C80990953E01C60D756FF747D9ACC317F6C2F1BF89BB41B41DCA49694C0C1180139672020C491A06D3C7CCE6245914';
wwv_flow_imp.g_varchar2_table(12) := 'B3F3F856282CC9A711802BAA44006E70CAD700A1C161F0C0B447B9C94641EB77BE094DAD4D824C5A03F0839646004E58E22158C5C53A49DAD2BB97839F8F1F17E99DDD9DB0F6AF7F9064D12E10175805219625006E5BB63777C1D59E1E2140050B9EB07A';
wwv_flow_imp.g_varchar2_table(13) := 'FB7833CF4B6F1698A2DD78E5E7007326DD0FF1B6242E9A2AABBD0C5BF77F24B6D1C57380F6E64EA19FDD76F6C3C88A05FB39C0CBCBD241389622003AAAB5D4B5B3D3DAB65E9E9A37B2D2A0307FB6E00C52BDE72E3F094E8C4E8659B7CE635BA1EE71A087';
wwv_flow_imp.g_varchar2_table(14) := '6D816E3DF00154D4960A82B49C04A3A137D5B6422B8B427356D0CD22382210826D019672B8B30C01D0081A99AB82DC45D9995138FE3D846D3986A9703F50FA02DD96910D19A963D556D3E773270A0EC2A1B3FB857FD3E20B847D6DBEE696A1A5015807F6';
wwv_flow_imp.g_varchar2_table(15) := '15C96F85620902D45734FFDD573038200406270C838131A930302A15027C03A1A4BA104AAA2E4271552154D757F6D2BFDAE82CF96ED080015E3077CA22880C8976C996D01B74CBDE0D7095FDC1A266FBF34651683111713028663024B1FE26450F81F6AE';
wwv_flow_imp.g_varchar2_table(16) := '36B8527391F5B7088ACAF2A1B5BDA5571B91001171212EB5FBDBF492E909A034FE40FF205830E53118979ADDAF9E8A6BF3E19DDCFF86AAFA0AE939353EF9423CC0E506E8EA14D7152EC7035C390BFB4FEE84AE6E319CD2D7CF1BA20685F73B3D51C622E0';
wwv_flow_imp.g_varchar2_table(17) := '7B719189B064FA93901C39ACDFFE1E2CDA051FED791BDA3A5AA5E7AC4002531340E99B9F31380B164E5E0EA10111AA3E525D6CF765DBC90D907BF8134077042C381260604A7FA5AF88B09484213079D49D10E017D8EFBBED9D6DB0E7E4E72E458461208E';
wwv_flow_imp.g_varchar2_table(18) := '23FE18DD30EE1CFF7DC8C99C0FBEDEEA16F44DEDF5F097AFFE007945C7A436AA1975548169D0874C4B00F9BE3C628FC670EFD8875C52C3D9B2A3F0C72DAB3419851013CC32413846027CD9C7DB1B62A31320CE9608B1B67816281327C8AC6EAC80CABA32';
wwv_flow_imp.g_varchar2_table(19) := 'A8A82B85CAEA72B0778BA387E3CB1FC13244384B95A224FB13F73E0723125C5B7F6C39BA0EB633D23B8A99CF1D4C4B00F4CC74E4DD49884A82157357B3E983EBBEF91F7CFD3A7C75F20BC126D4C6E8EA95154239E26467E6C0FDB73DEE12D9F1A5EE1E3B';
wwv_flow_imp.g_varchar2_table(20) := 'BCBCE95928ADB92C92908563C62487BB2CCFC82F9A9200B8E383737FD158BDE1B9052F435CD820B7F4D0D9DD012FAE7F0AEA9A6B05395AE6C79ECE0B245FE74485C6B0FEBE0A7EDEEEEDE294375E865F6FF857B66B268E46B82036E3CE90290950CB72F1';
wwv_flow_imp.g_varchar2_table(21) := 'B4B788AEC3F3262F81A923F8786616569D85DF6EFAA520D7950329F1F0AD133ADBECD0D3CD0EE0AE2D947181EBE5EDC55C9C7D84033867D31D2593CB0B6A85EDDD01ECCFD3F7FF8A2D7887BA4576C7CBB9791BE193FD7F11FE1A10EC07912C4791D98A29';
wwv_flow_imp.g_varchar2_table(22) := '09E0300854D6CB8FAE037F1F7EAEC3FFB9FEC750D9201E4AE1B440ABB1F2362079204EBC6D10FC7CFE2BDCAA68EE68849FBFF3D8B5917400C4A7F109F0E1D6400E824C4700F9E237D83F14562D7B8B034CD745BC91FB129C2C14DD928DE097DFCB0D3BED';
wwv_flow_imp.g_varchar2_table(23) := '567864C6335CFBFBD33717B145B9B8156BC6C5B0A9093038E13BF02FF7BEC8D520E43B2446D82294132067C25C989DB5886B7F576F5E01C595854400AEA87A50987C0498903E1996643FC5B5B67DF99FC3FA5D6F08328D468045D37F08B70D9DC9B5BF6B';
wwv_flow_imp.g_varchar2_table(24) := 'BFFC2D1C3EB78F08C015550F0A9313203D65142CCF1117ADBCCAE7A73608CE694624C09CDB17C05DA3E6F3EAAA20E7B56D2FC0B9E2D34400AEA87A50989C007E3EFEB0FAD177B9D6F67AEE2A385578D49004C84C1B0F8FCF58C1B5BF4FBFB518BAECE60D';
wwv_flow_imp.g_varchar2_table(25) := 'C637DD1A401998F2C2E2D7203258CCC2CCA3FC6CEDC392E3586442A84B71033CDAE190213FF3080FB6C17F2CFE5F6EE2AB9BCBE1DFDFFB67499E1903714C4700D456D5A57A698FFD87739E855B122770318AC6F63A787EED3F4AB2705B506BEE7EDCAFB7';
wwv_flow_imp.g_varchar2_table(26) := 'B3F3809E6EBC21463C64C2C0142F6FF18618AD05E5E1B6AFA3AC5AF62604FBF7EFABA4B68E5325DFC0EB9FAD16DBC8CE2A6252D4F950A9956F84E74C49007960CAB0A491F0E4AC17B8E4E8D972E45DD87EE463416F6A9CE2E40AC62F351E82390EE86EA4';
wwv_flow_imp.g_varchar2_table(27) := '7C3C70C2C3302DA7AE7227B89CF1F360F6D8856EDB163AFFBDF2C97370A9A24090A52510C7EDCA7514604A0228A74173BFBB04A68D74EF34F862F5397865E3F3926AD44E7F704DD254D3A6F9961824586854A0AA510189555B2606CCF33A0DDE717A137C';
wwv_flow_imp.g_varchar2_table(28) := 'BCEF3D41A696401C1D6D974B55A624002223DF1F77D71FA8C3DE062F6EF809D45FF30352FBF597CFCF95DA8A898C85B050D1C1ACB1A901AA6A7B07E0389E57EB83231F05DCF5072A6BB8042F7DB042F20332C2762F176BEF43886909A00C4C890A8B85C7';
wwv_flow_imp.g_varchar2_table(29) := '729E8624DB104D58A28FFCDADDBF635B81A7A4AF21C603387381E82B0A2D2D651824C526434860DF73F4E6B64628A92C86824B62FE1F4751E378872E11480247C8E78894D1B074EA539AD703257505F0C6B6D550DB542D54AF26104713A0067BD8B40440';
wwv_flow_imp.g_varchar2_table(30) := '9C9546814122F7DC7A1FCCCCB88FA52D777E15E9B14B7BE1FDDDAFF78A9252F345567EF9830283216BC43888088952A5FEFAE61A3876F608B4B65D0F5374A55E0CFB7C60EAE33026D979963A3B7381DE7EEA43D87670A314FC83531F356457D529833E64';
wwv_flow_imp.g_varchar2_table(31) := '6A02F44502FCDD4096B161E9F41F437C78B2A01679E6060CFC6AEE6880F5FBFE04270B449F1F2DD31165204ECAC054484FCD60C130DA7678D0FFE654FE3128ADBC22D5AFC617A7AF69179E0F3C38E909613450F61585973714C3DB3B5E85B29A12A92E2B';
wwv_flow_imp.g_varchar2_table(32) := '18BFA0FB95DB975DBFC9CDA02C75B7597D4567A1CC0076611D3ACC6126371F1F1F6868AA677BFCCDD0D2212E281D058D015D81D56C53CAE7E2F8E59F3C769A66E377D48B24F8EAE82E692450BBF64012A24BB8320306F635888D0AE1A11160B7DBA1A9A5';
wwv_flow_imp.g_varchar2_table(33) := '015ADA99EB380B9097179CF6442686A94E07E3AE7E6EE6FB962000022CE6046A136E70D1921A454B6E20E5D777D2D86CD5D39E1B19014E87F61DDDA36914C287B5E40492131DB73B836D819ACF376EA611BB53B76508E000098DBF8DEDC977B476DD704F';
wwv_flow_imp.g_varchar2_table(34) := '1EBF80E25E7C80A6AFA03C100717BCE92919EEE8467AF76F97F2A485B1D6C01424426B63BB7006218F4F96370C65FA07F942204B85A2F5608F4B076FA210CB114089B5E364167F8F69115DBD804E79223B65C28C1BEEF668D537EE0E7D796887F45AE230';
wwv_flow_imp.g_varchar2_table(35) := '758BE9BEEA4142607A442C3E2CD6D76A06AFC4C4F204D06A8C377A5EB9F89D9D3D97976841CED63D9B24796A16C35C2B37B130220027E5CAE7FF78C83531C3F9D6A396AA0FE6ED930ECBD49E426B916FD56789009C342F3F79E639FF77344FBE0E30F3C9';
wwv_flow_imp.g_varchar2_table(36) := '2C2775A8164304500D55FF0F12013801A9B318220027C0690AC409489DC5100138014E8B604E40EA2CC6F204E0B50D8A7A2BCDAF91D447DBA03A5BB28BD5598E00AA0EC2D8FE381E0EE129B0967301E31E84B1601C9629CF912B55692B7410E6227BBE4D';
wwv_flow_imp.g_varchar2_table(37) := 'AF69BD1EC9D137EBB94258EB9A244B8C0082335C45CB0DBF80E12111E0EFEBCF52945FBF0C434E6EF79CE1A6336738E7AED77D7D4CECDD76D8F5CD36E8B48B99D9DC758673D411C19CE150A6DCDD5A5E3FC63AE0598396D1EFDBF43194B7D5F40450C604';
wwv_flow_imp.g_varchar2_table(38) := '60E7C3436C306A681660904C447014BB40E2BAAB725D7335CB005D03F92567E172F9C55E7A55E393DFB73BF428CD2440E33F7AF69B5E91626A4E80FB7287C683B9A4F864E6091AD4CB390FBD4DD1CDA2B1A5110A8AD93549B2F8037287FEB6525AD6EEBF';
wwv_flow_imp.g_varchar2_table(39) := '0B886111B3A3878F87312C87A68F8A8098FCD23370E0D46EE8EC12F3E2605143021E0131874E1E90BEFCAED6EBE7E30BC3D36E81E4B8C14EB58964B85072AE57349A154860DA1140795F56486028CC9C3047BA95C5A9455C7BA0B5A305761FFB2B94568B';
wwv_flow_imp.g_varchar2_table(40) := 'C1226A8DA2AF90C8A1CC4374A09390C82B2C24F2028790489CE68CBBE536A75732297140F76B39F9D4DC8BA6164B233E675A02286F6B9C376531D85486242A158577857DB86B2D0B1E112FDD503B177716141F7E2D28BE8173503C7EF9A7DD9AE372208E';
wwv_flow_imp.g_varchar2_table(41) := '3206C1CCAE17A62480322DCAF89177C0982113DDFA0095D75D814FF7893941B1A87548D33B2D0AB66D62E6ED101311EF567FE5BE479416C52D28F57F599E182B262206EEBD63219BBA78B9DD90FDA777C199A2139A460147A59E4C8C25BF0F2D31762064';
wwv_flow_imp.g_varchar2_table(42) := 'A5BB47766CB3321CD3ACA380294700B941CC98380B06C70E77DBF851401306CB6F5F23C972253522BE8CA382981AD12EC8C27936AFD4883993E6B83CF5518254555F0E07D962DCD146335E94673A0228A73F0B662C83B0401B1702A09077B6BDC6B2258B';
wwv_flow_imp.g_varchar2_table(43) := 'FBF26AA741DC2AEF43907C9D8173FF3BEF98C3AD3ABCB378C7D7DB2479941C971BB49E1324DF87C7DC3F0FCFFA272E79411D2DDE7668239454140B7F35C2B440BED8F744208ED923D14C3702C80930307610CC9A781F57B61D2DD8CF0EA80E1A9200E943';
wwv_flow_imp.g_varchar2_table(44) := '46425A129FE99E033479249A9A8338AE60EB20CCD404183270184CCF9ACD15C633C5C760FFC92F89005C51BD79C24C4D007479983F75195774F79DC985B3857986240066A1CB48CBE2DADF5D87BE905C246804E00AAD6784297D711EB9E749557940D5B6';
wwv_flow_imp.g_varchar2_table(45) := '66334B195E5D27667236DA35A9116136983466AADAAE387D0EFD913EDFB7457A8E08E01432633C20BF28FBFBD90F404C58029786F55CED81355B7F0F57D91F2C46BB281BDBC4331D8BFC44180FC3E8A26C2E66E47921F2C094914333E08E743E57879E2F';
wwv_flow_imp.g_varchar2_table(46) := 'CD833D4773850E78FB7841DC606DDBABB8EF8F59E9F06A24F455EA750EC00C0C738F0684F83A4DBDAE44B0A2A88E25BBEA117ECDE314D821DF9D8C749ED7329F1A4CB7064058943E38DF9BBC0062C313DD420C13C86ED8B946F20C5593B3DF51214ECBEA';
wwv_flow_imp.g_varchar2_table(47) := 'CA9B252375D61024972D3E4455325E942577BC13FD80EED6EC7EAD6C93AB39499DF5CD68FF6E4A0220C8F28BF2C242C2615EF612552ED03752D0CEE39F4161C979E19F713A10CBBEFECED20AE257BE8E6569EE600470A5A0D39D8D65A556534F251B051C';
wwv_flow_imp.g_varchar2_table(48) := '497FDD7587C0B9FF5747776ACE4AED4A1F6FF63BA6258072319C39742C4C4CCF7609EF4B951760FBC14FA577D51C80F515851614100CA3D326B2FB0952203192FD84A70A324BEB8BA0B4B6184AAA8BE044C1A15E1772A09B44445CB0D36991FC400C6566';
wwv_flow_imp.g_varchar2_table(49) := '8D9C0089D1492EF537AFE0185CBA72517AD78C8B5F47E74C4B00ECA0D22892E353213B3347B58FBCBDA71B8E5F380027CE1F9116BE6A5CA1F14B2CFF22635B320667C1C2C9CB2134A0FFAB461BDA6A61FDDE3F415ED131C900D58E38F2BB09F0658C3F48';
wwv_flow_imp.g_varchar2_table(50) := '4B4A573D1D42D7872367BE81FAC63A4D647789650679C9D404408C958129017E013029733A0C8EFF4EBF2AA86DAA821D473E8386E6EBC6A0E6BE2C65204EA07F90704DD1D894C99A547EB868377CB0678D341AA8094C51DE8B8615AABD9EA9B8A208CE15';
wwv_flow_imp.g_varchar2_table(51) := '9CEE1585A6659DA3A973067AD8F404E88B04F83B24426C643C4447C4822D34067CD9E2B1B6B10AAA58607C4D7D1534B636F45293DAF978AF401C1682F9CCFDBF824191435D5279714D3EFCE6A35F48A38F9AA9D78DD61D488460F613C5DCC3C342C29843';
wwv_flow_imp.g_varchar2_table(52) := '1FDE1053CF6EC5E9FB864AB3DE0BAC54842508809DC69DA1C6AA164DB7C338C0526B0CE8895A555C2FD59133712ECC1EB3C825E377BCF4E9B177E18B43E2E5DC5A0253E431115A1A807584C5046BBAA85B8B7CA33D6B190220F05AAF49D2921308E5CB8D';
wwv_flow_imp.g_varchar2_table(53) := '2E212A099E9DFBB2DBA7D01898F2EB8D4FB3942D6582EDA825233EABE59A24347CAB5D8F8418598A00F2AF0FEED2E0B541626A44F1C614CC83837BF038DFC62B92B416F981D492BB96C384D4695A45F4F9FCD785B9F05EEE9FC536BA700087EF095724B1';
wwv_flow_imp.g_varchar2_table(54) := '3EE3811912038B8FBFB730AA605F9DDD7BCCA5230614625902F0D6051A1746A239CA2F16BE0A71A1AE6D432ADB56D6780956BDFF8CF46B3306A6F0D6875A794400B54839794E7EEE800BCE550FADE1168873955D5EBC62ED5268EF68175A61E67D794EEA';
wwv_flow_imp.g_varchar2_table(55) := '502D8608A01AAAFE1F94EFFE64A68D83C767FC8C936451CC9F735F84D385C785FF3782172AD7CEDD446144004EE0CB0970F7AD73E19ED1EEEDFE289BF5E971B61B7450DC0D52B31DCAA95BA6174304E0A4623901C60EBF1D1E9EF2534E9245316FEFFE0D';
wwv_flow_imp.g_varchar2_table(56) := '1C3DFF358D005C51B5F02E10671C855427D5258D82D8E8F058F8E503AF71AD62E5FA27A0A6A15A949F14A6DA53946B234C288C46004E4A55A663F9AF47DE8100DF202ED2DBED6DF0EC5B4B2559B40BC40556410811801F96203F07F8C9DC953024662417';
wwv_flow_imp.g_varchar2_table(57) := 'E9172AF3E0779B570AB25C3D07E0D210130A21027054AAFC247844F268F851CEF36C2BD4BD0A700BF4F75BFF0D2E949E150469390976AF666BBC4D04E0A867A52FD07DD90FC39474F7D2B2ECC8DB0C1FEFFF3FA1955A7C813876CBD4A288009CD52BDF0D';
wwv_flow_imp.g_varchar2_table(58) := 'F2F2F28615F35F8284F014976A11BC4137326F50360A60A1ED4F9760ECF7252200674C953EF9180FF0E0D47F80AC94EF6AAAE948D11E787FF71BD0C16291B1A88945D054013D2C204004F08021F415119699365E88080BF60BEDB7C6E68E46786FCFFFB8';
wwv_flow_imp.g_varchar2_table(59) := '1411E681AE985E2411C0432A166282592688AE4ED1D354F88AB3A09BD4C4A13024219DA56C1F0649363150E672ED05B858791E0ACBCFC1C5D27C2158457AC7CF1B22588608AB7A6B7A483D925822800711D62B2B8407BB607AD144001D54ECE9BC403A74';
wwv_flow_imp.g_varchar2_table(60) := 'C1B45510017454AD2308A7B3CDCE6E88E991A647B8C0F5F2F662EE0D62200E4D77F4530A11403FACA9260322400430A052A849FA214004D00F6BAAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA41F024400FDB0A69A0C880011C0';
wwv_flow_imp.g_varchar2_table(61) := '804AA126E9870011403FACA9260322400430A052A849FA214004D00F6BAAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA41F024400FDB0A69A0C880011C0804AA126E9870011403FACA9260322400430A052A849FA214004D00F6B';
wwv_flow_imp.g_varchar2_table(62) := 'AAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA41F024400FDB0A69A0C880011C0804AA126E9870011403FACA9260322400430A052A849FA214004D00F6BAAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA4';
wwv_flow_imp.g_varchar2_table(63) := '1F024400FDB0A69A0C880011C0804AA126E9870011403FACA9260322400430A052A849FA214004D00F6BAAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA41F024400FDB0A69A0C880011C0804AA126E9870011403FACA926032240';
wwv_flow_imp.g_varchar2_table(64) := '0430A052A849FA214004D00F6BAAC9800810010CA8146A927E081001F4C39A6A3220024400032A859AA41F024400FDB0A69A0C880011C0804AA126E987C0FF03B7AC14F5C2102ACE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41411512669442656)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED5D097854D5D9FEEE2C59C90A59084B580B088A889655650B5014B5D60DAB2160DDDABAF5EF5F15954C8056';
wwv_flow_imp.g_varchar2_table(2) := '6DFB575B6DEBD24A58448BB6B8000A210D0A2802151059CA227B2004B2913D3373FF7366989B9B4960EE9DB9F7DCED3B3E3C1172EEB7BCE79CF7ECDFE10013228008581601CEB29EA3E3880022004800580910010B23800460E1C247D711012400AC0388';
wwv_flow_imp.g_varchar2_table(3) := '8085114002B070E1A3EB88001200D60144C0C208200158B8F0D17544000900EB002260610490002C5CF8E83A22800480750011B030024800162E7C741D114002C03A800858180124000B173EBA8E082001601D40042C8C001280850B1F5D47049000B00E';
wwv_flow_imp.g_varchar2_table(4) := '200216460009C0C2858FAE23024800580710010B23800460E1C247D711012400AC03888085114002B070E1A3EB88001200D60144C0C208200158B8F0D17544000900EB00226061049000820AFF91D58F44777336C5347A1BA2798F37CA191D63E7C1ED00';
wwv_flow_imp.g_varchar2_table(5) := 'CEEEE0C1E380668FC36B73206E3A6C3436AF9B8728BB9B03BB1B780FF9E970B734357A38BBAD39C616DB74B225BAF19569AF34E9D074CD4CB264459E5F3CB3AFDBCB0DE5387E28C7734301F86C5202E9E44F966625818A5922504A949D01E08EF21CBF93';
wwv_flow_imp.g_varchar2_table(6) := 'E7B99DE4FF7714E42CFC8EA5117AD065090270ADCDBB92B3C174D2D027010FC309F0F17A001F6DD01D02758408B671C0AF038FFDE3B953DF22C460EE644A02702DBF3D8A4F8E9F64E3F81B49F1D13F3DCC5D8CE89D4A081C068EFB08BCFCC77C55FD06D7';
wwv_flow_imp.g_varchar2_table(7) := '1DEF35ABA44733B1A62200D7A7F7F4E36CF6D9E4C1B35C826837CD5045C56644E024CF718BC0ED5EE89ABAF4A0591C343C01B84A6EEF6473C7DFC1033F8B14CA58B3140CFAA16B043690B5A3B7BCCEBAF75DE3DFABD5B5A5218C33340114ACCDFD2199B3';
wwv_flow_imp.g_varchar2_table(8) := 'CD273DFE60231702DA6E5804FE03E07D263F67C91AA37A604802C82FCA1B6703FE7902FA48A3028F769B0A81CD5EE09E2EC8295C6F34AF0C450074B80F2D716F721CDC6534A0D15EF323C073B014ECF50F1B695A601802C82F9E35DAE6F52E21D5A88FF9';
wwv_flow_imp.g_varchar2_table(9) := 'AB127A6860040E715EB873EE9445647AA0FF6408029857343397077893C019A57F48D14244009A49C3BA7F6ECEA2C57AC742D704C0F3C01514E72DE0787E8EDE8144FB1081600448A7B5C095B3E8393D23A35B02A087796C29B1EF100EB855CF00A26D88';
wwv_flow_imp.g_varchar2_table(10) := 'C0A5102024B0182AEBEFD7EB21225D12407EC93887DD9DBD8280474FF16142040C8D0069641F791C477F54307EBD5B6F8EE892000A8A662E2340CDD01B58680F22102E027487C03569D1BDE17EAFD677BA238082A2BC17C8A59D27D57218E52202DA21C0';
wwv_flow_imp.g_varchar2_table(11) := 'BD989F53F89476FADB6BD61501CC2BCA7B9C1CE97D494F00A12D8880920870C03D3137A7F065256546224B3704306FEDCC316498F43971C6168943F82D22A073043CA4931BE7CA59BC510F76EA8200E88A3F9712B78700D2570FA0A00D8880CA081CE42B';
wwv_flow_imp.g_varchar2_table(12) := 'EB07EB616740170480F37E95AB1B8AD72102FA580FD09C005C6BEE1DC2D96C3B4809D975584A681222A016021EB21E308CAC07EC524B8114B99A1300E9FD3F20ABFE374B3116F32002E64280FB90EC0ADCA2A54F9A12C0850B3E9BB404007523025A2240';
wwv_flow_imp.g_varchar2_table(13) := '1604AFD5724150530220013D3691986BA3B52C00D48D08688B00F71919058CD3CA06CD08C0B52EEF1672C96785568EA35E44402F089058833F704D2AFC540B7B34230032F75F4FE6FED76BE134EA4404F4858076A3004D086041F17DD91EAFFB3029044D';
wwv_flow_imp.g_varchar2_table(14) := 'F4EBABF0D11A44007812ECA6EF735396D036C13469D20049EFEF22BD7F3E534F511922A06B04B802B21640DA05DBC49C0068908F79EB7209D371F4392E4C880022E047E0F0DC498BFA927897E4163CBBC49C004844DF9124A2EF97EC5C444D8880311020';
wwv_flow_imp.g_varchar2_table(15) := '91854791C8C29B595ACB9C00F0D82FCBE2455DC64280FD34803D01ACCBDD01BE177931210288405B04B8AFC83A00D3B72E9812806BEDEC2C8EF39C204E33D58BD50C113008027C3444A73C95F346352B7B9936C4796BF3F2C87BEC0B5939877A1001A321';
wwv_flow_imp.g_varchar2_table(16) := 'C071DC8CB9930ADF656537530228589BF71A70FC83AC9C433D8880E110E0B9D7F327173EC4CA6EB6045094475638F911AC9C433D8880F11060BB0EC08C00F2F3F36DB6B147E853CAB1C62B14B41811608640BD7763AF848282022F0B8DCC08C0B536EF4A';
wwv_flow_imp.g_varchar2_table(17) := '8EE3B7B3700A752002464680F772835C530AF7B1F08119019005C087C802E05F5938853A10012323C07221901901E002A091AB24DACE160176F102D91140511EB9EFCC4F610B246A43048C8800BB5061EC08004F001AB126A2CD5A20C0F13BF3272DBE92';
wwv_flow_imp.g_varchar2_table(18) := '856A76045034F3347128838553A8031130380265F9398B3259F8C08400789E275780F39A89430E164EA10E44C0E008B490ADC018165B814C08C055727B27CE1D77DEE08582E62302CC104888AF8FFBC5E8F71AD456C884005E287A20A9099AAAD47606E5';
wwv_flow_imp.g_varchar2_table(19) := '23026641805C0A4A667129880901FC66F5ACB416A7F78C590A07FD4004D446C0D9624B9F336D61B9DA7A981080AB242F9373F3A7D47606E5230266418077705D5DE30BE9C2B9AA8909012C28CEEDE6F172340E0026440011908080DDC6777F76E2E29312';
wwv_flow_imp.g_varchar2_table(20) := 'B24694850901B88A727B9287108F4664297E8C08580801F26458367932EC98DA2E332180F96BEEEDEDB5D9BE53DB19948F08980501F24E401F16EF04B021807FCF1EE0F57898DC6E324B0560E1474B93DBA7C6198DC73358E02D4707EFF1F4774D5D7A50';
wwv_flow_imp.g_varchar2_table(21) := 'CE37E1E46543009FDC33C0EBB023018453420A7DE369F142635D3334D6364353434B8752A3639D10D3290A62E2A3C0EEB429A419C584838097E307144C5ABC3F9C6FE57C830420072D03E6A50DFF7C453DD4D734C9B23E2E311A1252E3900864A1A65C66';
wwv_flow_imp.g_varchar2_table(22) := '2400E5B0B4AC24DAE8ABCA6810A6F092CDC641625A3C5032C0C416012400B6789B4E5B4D791DD45635B6F12BB9530AF4EAD60F3253B320312E05E2A2E37DBFAF6BAC859AFA2A28AB2C85C3270F42756D659BEF3A25C7F88800133B049000D8616D3A4DB4';
wwv_flow_imp.g_varchar2_table(23) := 'D7170FF9E362E261C465D7429FAE0381BC3D77C944DE6E8443A57B61CB9E0D50DF542FE4A5A380E48C4EA6C34AAF0E2101E8B564746E57F0B0BF735217987CCD2D101F23AFF1D251C19AAD2BA0A2FA9CE03125009C0EB0A90048006C70369516BAAD577E';
wwv_flow_imp.g_varchar2_table(24) := 'ACF551992EC96970C3A8DBC1698F0ACBCF664F33ACFA62399CAB3E2B7C9FD12B051706C34253DE474800F2F0C2DC048173276A842DBE98A818B8F5FA7BC83C5F5ECF1F0CE4F9866AF860C332686AF6EF22D0ADC2CEDD13116F95114002501960B3896F26';
wwv_flow_imp.g_varchar2_table(25) := '7BFB67090104D2A4EFDF08BDD2FB29E2E6E1B2FD50BC75B520AB0B218028420498D4430009403D6C4D2959BCF0974156F9A78FBE43513F3FDCF80E945795F964C6935D8124DC155014DF60614800AAC26B3EE165872BC1E3F63F2673FD5593A17FD6658A';
wwv_flow_imp.g_varchar2_table(26) := '3AB9FFE4B7F0F9F6753E9976870D327AA7282A1F85B5450009006B8464048217FFEECEB95FD8E3972C2444C6FAA65A5856F43721575ACF24BC43A014B81DC8410250115CB38916CFFFA31CD1903BF561555C2CFCE4CFE0F6F8EF11E03A802A100B429100';
wwv_flow_imp.g_varchar2_table(27) := 'D4C5D754D2E9059F8A53FE98ABA989A970EB75B9AAF8B7BC6421D4D4F9B719910054811809405D58CD295D7CF827BD733ADC34EA6E551CFDF08BB7A1BCC21FA60E0F05A902311280BAB09A53BA780A10E38C857BA63CA88AA34BD6BC064D2DFEFB053802';
wwv_flow_imp.g_varchar2_table(28) := '5005622400756135A7F4E03300740D80AE0528991ADD8DB0F4D3D7049148004AA2DB5E16AE01A88BAFE9A4971E683DB33F79C474E899D657511F8F9C3900EBB6AC126466F5EFACA87C14D61601240013D608AF9787E6FA166869F2903F6EE0C9DF03899E';
wwv_flow_imp.g_varchar2_table(29) := 'ACA35178E851DB70A2F154949EF745FCA16970DFA1306AD0784511FC624F31ECF96E974F268D18949A95205B3E0D4E42A311D19F74D412481C893B40C39239A3ED1015E7041A87C0EA0909C044358056F86A723F3FD04043B9461B43525A9CACE3B675E4';
wwv_flow_imp.g_varchar2_table(30) := 'EE3FD54193D3EE843B27DD0731CE9850AA24FDBEBEA90EDEFB7721B45CD80294BB00481B7B7579BD8FF4A4244A30F4A46138442845BE11F2200118A19442D8487B7C1A98436E38AE80583A1A48244420256827D5557EB44A380DD827AB3F4CB8EA064550';
wwv_flow_imp.g_varchar2_table(31) := '2CFE7A251C2EF5C7A7A4A700D3B29325F5D2B4C1D790867FB11884A18CA3578F6920122B8E08900042D50E9DFF9EF6FA746FBEA35E2F3BAB0F6476EE0649B1A9E0B039A1BAE11C9CAD29830347F7026DC8E2442B3F1D6E4BB97C131C0B6048BFA1307260';
wwv_flow_imp.g_varchar2_table(32) := '6453818DBBD7C1BEC3DF0A2649EDFD69AF4FA7251DF9D33F7B107449CC20FE7706B7978C0E1A2AE0D4B91370ACF470BB52A5E497DA35C172A30124009D37F04B99471B3DBD9A2BAEFC499D92E1C69133E08A1E2320D6D971782DDA180E947D03ABB6BE0B';
wwv_flow_imp.g_varchar2_table(33) := 'C74E1F69A3426AC3135F09A60206F51942D60326808D9317E5D7CB7BE18BBDA4F17FB747B043EA55E08E62116677ED03375C7D17F4CB18E223BD8E52434B1DEC3CFE25ACDCFC2ED4D4B6C635A02448AF204B190919B8DAB4311D09C0A025193C14A76E5C';
wwv_flow_imp.g_varchar2_table(34) := '3B34077E78F52C7090B9B9D4B4F950312C2B6EDD76A3DF49397F4FF59F3B5E0D2DCD1E41558FAED93076C824888F96B67057DB58031BBF5D07274EB73E4CE38CB243E71E492187E3C1F712A8113F9EF4108CE83351AAEB64ADA119FEB5E5EFB069D7BF85';
wwv_flow_imp.g_varchar2_table(35) := '6FE44C3D242BD2714624001D17CEA54CA31179C4C3FE5BAEFB314C18784B58DE1C28FF06DE58F95B72F8C61F8C83F684693D93430E87A97E3AFC0EDC0E0C7C3BA4DF30E891DE0BBA2464B68B12441B5DF9F95370FCCC11D8B57F7B1B7B69E3A3D390503D';
wwv_flow_imp.g_varchar2_table(36) := '309DF6941FAB12463ED1CE687878FA1CE8D325BC9B8945BBDF878F37FD43B085EAA7246885840460C0520E1EFA5E3F6C2AFCE89AFB22F2E49B139BE16FABFF4F90213538674723818010DAA03B27A5F9E6E13C89024AD71F2A6ACEB6218C405EA93D3FCD';
wwv_flow_imp.g_varchar2_table(37) := '1F1C8CF4A737CD818199C322F2FFFD2D6FC2E73BD60A32A44E852252AA838F9100745008724D10DFC9EFDF63103CF28379724574987FE58EA5B076CB87C2EFE4C4E53B7FAE1EE81661F0625C28C3E8688306FE48E81C172AABEFF7C143FFA9236E856943';
wwv_flow_imp.g_varchar2_table(38) := '6748FA3654A69757CD81EF4E1EF065B34A2C02248050B54267BF17F7FEE425649873D71F2023B1BB2256D2E1F982E58F40E5F90A9F3CA9A3808072DAF8EB2A1B7CDB91E2694147C6D10646E5C7A7C4869CEF8BBF17F7FE2909A9F0EC1DAF841D8C34D8AE';
wwv_flow_imp.g_varchar2_table(39) := 'D335C7E0F9777F09E4C55CDFAFAC300A400250A4E9B013226E00C3078C8699D73FA1A8F24D07D6C03F4AFC013922E9055B4FE3B52E12FA643AED619F42A4DF8B473F33263E00A3FAE628EAFF5B25BF831D07B68445808A1AC24818120023A0955273FA50';
wwv_flow_imp.g_varchar2_table(40) := '8530CC9E39E511189E7D9D52A27D72CED59541C1DB3F17644AD91150D4804B080B1EFE2FC87D031263940D19B6E570092C2DFA8BCF0A3A3DC9EC9BCACA3D4DF4200168027BF84AC597719E99F11264242833FC175BF4AB45F7426393FEAEE38A03922425';
wwv_flow_imp.g_varchar2_table(41) := '24C1FC19ADA1C3C247B4ED97A7AA8FC2F3FFF8A5F08F66BF8C8404A054CD612027F83AEE1F7EF20E39ECE2505CF34B2B9F168EE426A4C64A5EA053DC90208174A1F17C4583EF5FFB761F008F4D5BA0B8CAC6967AF8D5C299825CB35F47460250BC0AA927';
wwv_flow_imp.g_varchar2_table(42) := '504C00D1E402CEEF662D5145D9DF8B7F0B3B0F6DF5C9D62B010CEB3F02668D6FEDA99504E2D1376E4702501250228BC9BDCBF99FDC33C0EBB0EF53D876DD880B1E01FCF1FEE5E4114EE5A17DF5937CD87FDC7F3457AF0430A0E710F8D9D47CC5CBC6CB7B';
wwv_flow_imp.g_varchar2_table(43) := 'E0F137EF4202501859E56B6907069A9D00E8361B5D040CA45FE7BE090931C90A1715C0AFFFF928949D3BE5934B2FC8C4740AEFCD3FA50D13AF0174EDD21D9EBEF525A5554015B9303577C943825CBA0868E65B82380550BC0AA92B50BC08F8F0F4A76150';
wwv_flow_imp.g_varchar2_table(44) := 'D7AB1455482FCA3CB57096B017AEA739B07804442F1DFD66E6DF212E2AB2370983C1DB5DBA155E27C7A20309170195A95E3802500647DFD9FB40C08F31974F843B47B5F6564AA8D84AB6C19628B40D1688C6E3F5F80FD6D8ECFE6A20E5CAF1C57C116F83';
wwv_flow_imp.g_varchar2_table(45) := 'E64D7914AECABE5609B70519CB36BD0A9B777FE6FB7BB8118914354865613802501960A5C58B4F024639A360EE8C5715DB0BA7E7F55F58F1049C3A7BD267B6DC9380F41B6A1F6DF874B87EB163C174484DA7159408A80E39497C10AA47466FF8E54D2F2A';
wwv_flow_imp.g_varchar2_table(46) := 'B60E72BEB10A5CCB1E8616B73FA2109E0494533297CE8B230085B0A48DEA0C799F2FD0B8C65C3E818C029479A1477C08869A2B67F82F371C57000EB961C9821742679251C070854601E2DE9F92543A7997D0CCF37F5A06380250A861B21423DE0FA77A67';
wwv_flow_imp.g_varchar2_table(47) := '4D7D0C86F51C1B9109E5E74BE1B7EFFF4AB8122C352807551A7C3B2FD890E404FF4265D5F9AA8BDA2867B4210E46121B1D0BFF73EBF3909ED02D22FFB71DF90C16AF7D5590A1A7DD8F881C0BF13112809AE8AA24BBA360208FDF5A10F67D781A2AEBE58F';
wwv_flow_imp.g_varchar2_table(48) := '9E8573D5FED7786892720498DA5149D6248263F1A5A5A643F7CC9E909E92D92E38097DF3EF4CE5695F1090F28A336D10A2A49342E20184EA75838F046774EE0A8FDE302FEC1D9143E5BBE18F2B5C822D560A0A8204A05223555B6C703830BBCD0E79531E';
wwv_flow_imp.g_varchar2_table(49) := '83A13D46C9525D5A7D04FEFCF17C385F5F237C2775EE1B1C168CF6F483FB5F01C99DA4C5F2AFAA3D07BB0F7CD366642075E4111C1321293E057E36FD59C84CEC29CBFFEDC736C1A2357F021A9A8C26AB8505430290555DF49559BC2F1EB08C9E909B36FC';
wwv_flow_imp.g_varchar2_table(50) := 'AE905784EB9A6AA0F8DB0FA064FB6AF0785B6FECD1BBF9345476A8143CECCF4AEF0697F71F262B1C19D54147045FEFDDD2663420753A40C393D31804816427C7A26984E209436E86F8A84B87253B5D731C566D7B17761EF4DFFC0B243D9D7B0855064AFC';
wwv_flow_imp.g_varchar2_table(51) := '1E09400914359471B1A8B83D327AC1F7BA0F86CC94EE9014970AB471D434564279D5693878728F70D24F6C3A6DF8940042A5E08538DAF8870DFC7EA8CF2EF9FB2DDF6E6A4302521720C5EF1488150CE83918FA660D82F4E4AE646A90E28B0A5C534FA202';
wwv_flow_imp.g_varchar2_table(52) := '571C87FD2776C3893347DBD823272A72448EEAEC6324009D154838E6D0E940D5E9DA36013AE5C8A1959F0EFBA59EF813C723A4C3FE11578C95DDF307DB4747025F7DB351980EC889CB474742744422371A51C00639EF22C8C1D5087991008C504A126DA4';
wwv_flow_imp.g_varchar2_table(53) := 'F362BA43102A1A4F405C201C979CA83CC173EF31575D2779CE1FCA0DBA26B0E9EBCF856C52D722E80781684472C292D1C53E1A8A4CEE5984507E18E9F74800462A2D89B6D21101ED159B1BDCE0F578859101ADF00E1291C741DEC6A3BD9ED41E5FAC563C';
wwv_flow_imp.g_varchar2_table(54) := 'F7A7ABFDDF1F3246A255D2B289A70252D702822553DFE9CE849BBC8DE86EF1088448038FDAEC367200C9E1F33D54F46169161B3B171280B1CB8FB9F5E2A3B8C32EBB06B2C8A51C2553E9D913B07D8FFF2AB21522F228895D38B29000C241CDA2DF042FFE';
wwv_flow_imp.g_varchar2_table(55) := '4D197363C473FF8ED602D66C5A29FCB3D4C5408B1649C46E2301440CA175040413C00DD7FD5015E7577DBE0209401564DB0B45026004B419D488CF1DA831FF0F60B4697B89B01B60B57D79D6F504098035E206D6C78C0076AC87AA9A4A1F524800EA5618';
wwv_flow_imp.g_varchar2_table(56) := '240075F13595749C0298AA387DCE200198AF4C55F3A8FD22E074B208A86C54E2C6E60628DEFC29AE01A8568A6D0523013002DA2C6A701BD02C25E9F70309C05CE5E9F3861E046A20A7025BC841187A422EF08C78E02090DD69F385BB32F341201A368D3E';
wwv_flow_imp.g_varchar2_table(57) := '4FD6E6201079F69B9E2DA09188623A39F120101280B95A7F78478163C9039D3121EFE00790D2F751E046723BB041F29D003C0A8C2300533080EF3250599DD0D3CB754AF665A0A355C2F1E2E4C414187139BD0C14D95A80DBE386AF7691CB401756FFE9B1';
wwv_flow_imp.g_varchar2_table(58) := 'DDB46C6921CFF13290DC126FCD8F5380F0B1D3C59717BB0EDC25B90B744DEB01A9899D212EBA13E9E1ED40437E57D554C0E973A5507AE6443BFBC3BD0EACC49900A5AF03539B3A130CE89F406A71B790A84767E15C4579BBF064781D58DDEA8C414155C0';
wwv_flow_imp.g_varchar2_table(59) := 'B7A38020BDB3FAC1F081A32199C400B8546A7437C23787B6C0B7077708D17068FEC802825C257B24407BFEAFF77EA54840106A7F76B75E30B0D790904794E9CDC3FD47F6B50B4B66B57307380250A161B210191C128C3E9431E19A69D02BBD9F2CF515B5';
wwv_flow_imp.g_varchar2_table(60) := 'E5F0C9972BA0A1A95EF84EEA35DC7621C1C8746070BFCB255F0FF685043BB84B18F65303C20D0916E570C2A861D741A7D84459FE979E3D4E2E1F6D13BEC19060B2E0939C19470092A10A9D31382828ADB4378CB90D3292C28B8C5BDF540BAB36BF07D5E7';
wwv_flow_imp.g_varchar2_table(61) := 'AB05E5910705CDBE1014B4EDDA00DDE7AFA8394782821E552C2868A4414982E3106050D0D075506E0E2400B9885D227F7058F089A4E7EF9DF1BD883454D555C0871BDE218F62B4F8E448ED8969DE9061C1C9C8C097EFC2025F4786CAB9FB2F1E7984DBF3';
wwv_flow_imp.g_varchar2_table(62) := '07DB103C12C0B0E01155A7761F2301288467F0C320837A0F813183272922FDE0A9BDB0FE3F6B045972AEE2FA1E06394376229A5B038C4A318AAEF627A5C74B7E2E2CF834A2923109BE3DB41D8E9E3CE2331B1F0691527AD2F3200148C7EA9239839F06BB';
wwv_flow_imp.g_varchar2_table(63) := '63C26C8871860EE42955FD879B964179A53F5EBF9C5E39205FEDA7C1C46F232AB1FB20C6854E4F366C2B86E60BA320A96B2152B1D5633E5C04D463A95CC226710318DC77288C1A345E510F0E97ED87E2ADAB855E903E8F1D6E52FB7150257BFF808FE251';
wwv_flow_imp.g_varchar2_table(64) := '003E0E1A6EC9B7FF0E47000A61297E1E7CCAC89BA14797DE0A49F68BA1DB834B3F7D4D9029671AA0A8211D0863119188864DDFF2CD9782767C1E5C995245025000473AFFA7977102E9EEC93F81B8A84E0A486E2B62F9FAB7A0A6D6FF52909EF6C5C5E71E';
wwv_flow_imp.g_varchar2_table(65) := 'E8CAFF9861CA8E7EA8BF343CB93824191D01857AAA4CF102602810A7000CC18E5455700F38FB86C7C0C629CFADABBE5A0EA7CA4B7DE6EA69355CBCFBA1F4FC5F5C36560A4986041069AB64F8BD98009C7627CCFCC1CF54D1BEEE3F1FC19153DF21011004';
wwv_flow_imp.g_varchar2_table(66) := 'F4340552A3B09100D440552599C12380FB6E7C1C94EFFF01567FF53E9496FBEF0AE0082051F216A54AC5AEAA58240055E1555EB87811F0EE9CFBC9459FD00F79CAB56279C942A8A9F39F0AD4530F2826407A0B71CC95E3E4BA16327F7044225C040C0999';
wwv_flow_imp.g_varchar2_table(67) := 'A40C6A7454ED14CFFFE49E015E877D9F248B0C9A491C9167CA08B20B90A6EC2E40534B132C59F357011D294782594149EF3FD077090369E2C8A9101315ABA87AAB3D4C82230045AB8FFAC2C4C76E07640F866B2FCF5154E981D2DDF0D9D7453E99F44C7C';
wwv_flow_imp.g_varchar2_table(68) := '466FFF315EB98946E3A1CF73D19FE244A311D163C6F46738A9EC70A5F0D4D7E503AE849E19CA12E0F67D5BC855E9933ED3C23908158E4F5A7E8304A025FA61E8169F04B4933BFE774C9805F131CA6C057A791EFEF9D962A8AEF587E496DB00FC0F743642';
wwv_flow_imp.g_varchar2_table(69) := '7D4D63C8074A29B9C425C6C88A46446D1213605C6C3C8CBF6672182876FC496D430D7CB6B558F8A59EB640157332481012805AC8AA2857DC0BF6EF3108AE1F3A45116DFF3DB10B36EC686D0019BD5224F7D4E7CF35C80AC71530D8FF42712C79A557DA50';
wwv_flow_imp.g_varchar2_table(70) := '9E8E28CA8EF8098AA6817D2E83BEDD0728E2BF38284924A31F458C612404098011D04AAA098ECBF7FDC163E18ADE5747A4E254E509F8E48B7F09C141A4F6FEB4D7A7B7F3028147C546F44CEF0319A9DD2039DE7F9C985EBB3D5D79128E9F39DCCE56FA52';
wwv_flow_imp.g_varchar2_table(71) := '6FE7EE89920EDD04DF3E54E289F27D47BF8543470F087659E11E0075160920A266A3DDC7E5A2B87CD48A91242EDF90ECF048E054D57158BBF923E12A30ED95D37A2687ECFD69A3A777133CEED6797E97A40C983E72065CD66D38443B3ABEA4D4448E1BEF';
wwv_flow_imp.g_varchar2_table(72) := '3EB10D3EFE72199C3B5F2E80487BDDD4AC8490D17AE928A0FC589510FC33D22BC1C7CA0EC3AEFFEE10EC90138F50BB1AA08C6624006570642E253828083560509FCB61C4C071E0206B0352D37F4F9261FFF6D6613FFD4ECACA7F473DFFC461D3E1A6AB73';
wwv_flow_imp.g_varchar2_table(73) := '41EAE144B2E4001F6C2D84921DAB5A1B9FC49140F08E0015207751908623DB776497700598CAB05230101C01486D253ACD171C168C9A191FD709AE1E340AB2D3FA419423BA43CB3DBC074E551C876DFBBE80B317AEFE06324A1DFA0687039B30FC06B865';
wwv_flow_imp.g_varchar2_table(74) := '785E5848FD6BEBDF61FDF6D6D780A40623099E0AF9C88B0403EDDDBD2FA425675ED416DAF0CF549E86DDFB7708577F6966AB8503430208ABBAEAEB233A1CAE282573F00E0271A477C98014121538362A9EDC19B0F9A2029F27077C4ACB4EB48B9D2F272A';
wwv_flow_imp.g_varchar2_table(75) := '6E70C3BBFAB2D1903BF689888059B2F165D8BA679320432A115D2C2A329D1674CDE806B14107A56A6AAB846D3EB1C174D89F9A951872DA1391933AFC18A7003A2C14B926D1E1784D791DD97E6B92FBA92F3FED7113D3E242CEBD7D3D06D145D71F02F3FE';
wwv_flow_imp.g_varchar2_table(76) := 'ECAEBDE1D1690BC0698F0A4B77E0A3164F33BCBCEA19387EFA88EF9FE4ACC2D391504D79BDEFDC4138892E7826A61192246B1F564B4800262A713A1A385F512F990868C3A7DB6FF4A92CA9A9AEAA11AA09D9D0C491FFE6CCF80364247497FAF925F39DAC';
wwv_flow_imp.g_varchar2_table(77) := '3A0C2F2EFF95EC5140E003B961C968C34F488DB35CAF2F2E04240045AAAEFE84D0BBF3B467A4EF03F2A4D70EA4A85807A9F076DFBB80E1F478E28844A3868C8319A395BD91B874E39F60CB9E0D3E73C38DC8434729D47F4F8B079A1BDC82EF1CE9E19DD1';
wwv_flow_imp.g_varchar2_table(78) := '76DF48279C7711F557CA915B84041039869691101C90E4C11B9F84C159E16D3D5E0CB45D27BE823757FF5EF8B5D92FE3685D799000B42E0103E917DFC6A3C3FF17672F821887B4137C52DD6C6CA9872717E6014FFEA3494FB711A5FA60A47C4800462A2D';
wwv_flow_imp.g_varchar2_table(79) := '8D6D1513406AA73470DDFD17552C7AEEED07A19ABC538004A00ABC6D842201A88FB1693488B7FFE81B844FDCF8BC2ABEFDFEA3FF8563177603A46E07AA62880584220158A0909572511C9433B37316CCF9D11F9512DD46CEFCE53F87F2AA321C01A8826E';
wwv_flow_imp.g_varchar2_table(80) := '5BA148000C40368B0AF114C06E73C04B3F794715D71EFFDB5DE4BC81FF85215C0350056241281280BAF89A4A7AF0F9FBFC1FBF0A9DE33314F5B1BCB614E62F7B4C9029E55E82A206584C181280C50A3C5277C5B108EE1C7F1F8CE93F3552916DBEFFFCBF';
wwv_flow_imp.g_varchar2_table(81) := '2BE1FDCF16F9FE4DCE6940458DB0903024000B15B612AE8AEFE2A7A764C233B7FD89DCFE53E608AD97F7C2AFDF7B8CCCFF4FFB4C8D4F8E8124724417937A082001A887AD29250787269F35F57118D6738C22BE6E3D5C024B8A5AB71671FEAF08AC971482';
wwv_flow_imp.g_varchar2_table(82) := '04A03EC6A6D320BE0ADC2936019EBCEDF790141BFE23A214A0CAFA7278F1FDFF85FA46FF3D03A957824D072E6387900018036E0675C18B813D33FBC023D35C24025078A7029BDC0DF0F2CAE7E0E499A3023C72E2119A0153AD7C4002D00A7983EB0D8E09';
wwv_flow_imp.g_varchar2_table(83) := 'D023A3173C38790E24C6CA0B235ED358097F59BD004ACF1E1310C1C33FEC2A0712003BAC4DA729383867527C0ADC845A027700000831494441543CFA1E18DEEBBA9061C16838303AE7FFE88BB7A1A6BEF5B10FA9C1484D07A6460E21016804BC59D4D2D8';
wwv_flow_imp.g_varchar2_table(84) := '003446803865A666C195FD4640EF8C81D025A12B24C6F84705350D1570B6F6141C3AB517761CDA42C2729D6AF31DAEFAB3AF154800EC31379DC68E62F3C97192C625A0117968EF8F892D0248006CF136AD36B9D188024060541E6DAB041280B6F89B4E3B';
wwv_flow_imp.g_varchar2_table(85) := '2582C6BA665F449E8BC5E8A35B7C34220F8DF813EE1B81A6034E238790003402DE4A6A03AF06D1505C98F48580A908C0F5E93DFD38BBBDF57D277D618DD62002BA43C0E6F5F6796ECA92F66FB5296CA93287C54318357FCDBDBDBD36DB770ADB8EE21001';
wwv_flow_imp.g_varchar2_table(86) := 'D3224042AF65BB7216B71EC250C9532604E02ACAED4962D5B51E2753C919148B08980501BB8DEFFEECC4C527D5F68709012C28CEEDE6F17227D47606E5230266418077705D5DE30BFDD72F554C4C08C0559297C9B9F9B6A74B54740A4523024647C0D962';
wwv_flow_imp.g_varchar2_table(87) := '4B9F336D61EB13CD2A39C484005E287A20A9099AAA54F201C52202A643201AA2939FCA79A3F52CB64A1E322100D7F2DBA3B894B8F01EC853C971148B08E81901BEB23EDA75C77BCD6ADBC88400A813054533E9C1743C53AA7689A27C3320D0949FB32886';
wwv_flow_imp.g_varchar2_table(88) := '85230C0920F70879B6329B8553A80311303602FCD1FC9CC5BD58F8C09000F23603F0235838853A10016323C07D969F53388E850F2C09E003420037B3700A752002C64680FB072180BB58F8C092005E2004F0240BA7500722606C04B81709013CC5C20766';
wwv_flow_imp.g_varchar2_table(89) := '04306F5DDE5D3CCFABF3640D0BA4500722C0080112CE7DC6DC4985EFB250C78C005C6BF20672367E2F0BA7500722606404782F37C835A5701F0B1F9811407E7EBECD36F6480B71CAC6C231D481081814817AEFC65E090505055E16F6332300EA4C41512E';
wwv_flow_imp.g_varchar2_table(90) := '61356E000BC7500722604C04B8AFC8FC7F242BDB1913401E99D7F077B2720EF52002864380E75ECF9F5CF8102BBB9912C0BCB5790FF11CFF5756CEA11E44C06808703CF7F0DCC985AFB1B29B2901E497FCB8BBCDEDA0410E98EA650526EA41042244806C';
wwv_flow_imp.g_varchar2_table(91) := '94D9BBBB26BF551AA11CC99F336F8805EB727700CF0D956C21664404AC8200C7EFCC9FB4F84A96EEB22780A23C3C10C4B2845197811060770028000A7302C82FCA1B6703BEC440A582A622024C10F00237AA20A790DC9961979813C0EBDB1E709EAE6C24';
wwv_flow_imp.g_varchar2_table(92) := '1182F16620BB62464D0640E098D771B46FC1F8F56E96B6322700EA5C41519E8B6C07E6B37414752102FA46802B20FBFFA45DB04D9A10C082E2FBB23D5E378D79AE897EB610A336442024026E1206BC2F8B30E0C19668D600C928E053320A9812121ACC80';
wwv_flow_imp.g_varchar2_table(93) := '08981E01EE43D2FBDFA2859B9A11002E066A51DCA8538F0890C5BFF164F16FBD16B669460017D6027014A045A9A34E1D21C0AD21BDFF54AD0CD29400E67D3A7B286FF7ECD0CA79D48B08688D007931EB8AB93985BBB4B2435302B8300AC050615A953EEA';
wwv_flow_imp.g_varchar2_table(94) := 'D51801EDE6FE01C73527800B2F076F270675D2B834503D22C012813A9B0D863E3771D121964A75B30B2036645E51DEE3641BE4252D8140DD88004B0458DFFABB986F9A8F00A861CB97DF6EDF9B12475741C7B22C04D485086884C026F2F0872EEABA2E08';
wwv_flow_imp.g_varchar2_table(95) := '8016024E0534AA8AA8963502BA18FAEB660D408C3E793EEC47744040FE60DC40D6D512F5B140C00B3C7F5BFEE4C52B582893A24337238080B1643DE029B21EF0BC14E3310F22602404C896DF1364CBEF653DD9AC3B02A0E09091C05BE4C72C3D0185B620';
wwv_flow_imp.g_varchar2_table(96) := '021121C0717FCC9F54F878443254F8589704E0BB325CD1B48A5C15CA51C167148908B045808315DE0DBD6E6315EA5B8E73BA2400EA80EBA307E26CB18D4B78E06E95E310E64504F48500F721DF1075B7EBA637EAF56597DF1ADD1200358E27ADBF60DDCC';
wwv_flow_imp.g_varchar2_table(97) := '79C4C867F5081EDA84085C12011E9E9F9BB3E8198E035EAF48E99A0002A0CD2B9A994B10A4EB0276BD028976210222049A49D73A3B7FD2A2B7F58E8A21088082386FCDBD23781BB7085F16D27B95B2BC7DBB78DE3BDB3579C9362320611802A060E697E4';
wwv_flow_imp.g_varchar2_table(98) := 'C5D8DC409E4DE6E790BF3A8D0030DA6819045AC89CF585CCD498F90F5EFD067D03D310C950041040347F5DEEF76CC0FD9ECCACA61B026534D2CC0890C7AEE09F5EAFE769D7D4A5078DE6A8210940581B583B730CCFC18BE4EF638C063CDA6B7C0448E359';
wwv_flow_imp.g_varchar2_table(99) := '4F46A3BF989BB398DE663564323401082382A2BC9136F0FE94AC0FDC41FE2DDA902581461B05812662E8FBA4D7FFEBDCC98B3619C5E88BD9690A020838E72A99D1C5E68ECA233B06F475D5BE462F1CB45F57087C47B6F35EF7DA9BDF728D7FE7ACAE2C8B';
wwv_flow_imp.g_varchar2_table(100) := 'C018531180188782A27BA7F060BF896CC1D275821E1160849F5A1781E3C4F595C0712BC831DE2233C2605A021017168D3D0876CF74B25E9043160E8793DFC59BB130D1A78811A823FBF7FF2153C975BC173E764D2E347DBC4A4B104070B5C82F9AD5872C';
wwv_flow_imp.g_varchar2_table(101) := 'DE5CC971FC50129985BC54CC67933CE9E44F56C4550805180101FAFCF619D2D08F9225FC9D3CCFED74D8F89D5A87E7D202384B12C0A5807E64F523D1DD9C4D318DDE8668DEE38D7246C7D879703B80B33B78F038A0D9E3F0DA1C889B16B535844E9B973C';
wwv_flow_imp.g_varchar2_table(102) := 'B013657773607703EF213F1DEE96A6460F67B735C7D8629B4EB64437BE32ED15BA8887E902025891B12A200216460009C0C2858FAE23024800580710010B23800460E1C247D711012400AC03888085114002B070E1A3EB88001200D60144C0C208200158';
wwv_flow_imp.g_varchar2_table(103) := 'B8F0D17544000900EB002260610490002C5CF8E83A22800480750011B030024800162E7C741D114002C03A800858180124000B173EBA8E082001601D40042C8C001280850B1F5D47049000B00E200216460009C0C2858FAE23024800580710010B238004';
wwv_flow_imp.g_varchar2_table(104) := '60E1C247D711012400AC03888085114002B070E1A3EB88001200D60144C0C208200158B8F0D17544000900EB0022606104FE1F490F2C00EFF036A20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41411831051442655)
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EECBD07601CD775EE7F082C76B100168B0EB0F7DEC42E8A124989922D4A962CD9B22DCB352F7E715CE2E792F8';
wwv_flow_imp.g_varchar2_table(2) := 'C5499C384E53AA4B12C7CFEFEF12B9C6B2ADDE495194444A24C5DE3B4112BD2CB6008BDDC582FF7306841ECD60CA023BB3B333DFB561D2E4ECCC3DBF7BB9F79B7B4F19F7972F7DEC0AA1810008800008800008B88AC0380800578D378C05011000011000';
wwv_flow_imp.g_varchar2_table(3) := '0185000400260208800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B890';
wwv_flow_imp.g_varchar2_table(4) := '0004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D26830008800008800004';
wwv_flow_imp.g_varchar2_table(5) := '00E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B';
wwv_flow_imp.g_varchar2_table(6) := '071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008';
wwv_flow_imp.g_varchar2_table(7) := '800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683';
wwv_flow_imp.g_varchar2_table(8) := '000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E6000880000880';
wwv_flow_imp.g_varchar2_table(9) := '0008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D268300088000';
wwv_flow_imp.g_varchar2_table(10) := '0880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B890';
wwv_flow_imp.g_varchar2_table(11) := '0004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D26830008800008800004';
wwv_flow_imp.g_varchar2_table(12) := '00E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B';
wwv_flow_imp.g_varchar2_table(13) := '071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008';
wwv_flow_imp.g_varchar2_table(14) := '800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683';
wwv_flow_imp.g_varchar2_table(15) := '000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E6000880000880';
wwv_flow_imp.g_varchar2_table(16) := '0008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D268300088000';
wwv_flow_imp.g_varchar2_table(17) := '0880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B890';
wwv_flow_imp.g_varchar2_table(18) := '0004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D26830008800008800004';
wwv_flow_imp.g_varchar2_table(19) := '00E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B';
wwv_flow_imp.g_varchar2_table(20) := '071D2683000880000880000400E60008800008800008B8900004800B071D2683000880000880000400E60008800008800008B8900004800B071D26838042E0CA550EE3C0030440C08D042000DC38EAB0D935040692694AF4A528194FD11559F0F97F0607';
wwv_flow_imp.g_varchar2_table(21) := '89D2A934FFCABFE156505040854585FCEB381A57384EF9B5C857485E7F1179BC85AE61054341C06D042000DC36E2B0D7B90478814FA707293D3048495EF465E11F90853E7D85D7FDE1D77D63E68F1B378E0A590C8830F0951491977F3C450554505860EC';
wwv_flow_imp.g_varchar2_table(22) := '06B80A0440C0F60420006C3F44E82008E81388479394E8E51F7ED3170160462BF4145071A997FC01AFB23B8006022090DF042000F27BFCD07B1713B8327885E2B124F585FB29D93F6029096FB1874A2B8AA9B8CC47BC59800602209087042000F270D0D0';
wwv_flow_imp.g_varchar2_table(23) := '651090053FD2D16BF9C27F2D7959F77DBC235056E527110468200002F945000220BFC60BBD753981142FFCD1EE38F5F376BF9D9A1C0D045808144108D86958D01710D024000180090202F940807DF8C2FCC6DFCBDBFD766E65157E2AAF2DB17317D13710';
wwv_flow_imp.g_varchar2_table(24) := '0081AB042000301540C0E604C481BFA735AA9CF78FB50D1FD78F93D0BF02DEB6E79BA707D3FCCB90E36066B10223F7A634584CC1DA5222F8068C75B8F079103095000480A978717310181B8154224DE1F6D8A8CEFA0BC6B1D7BED74F95C12AFEA9A660A0';
wwv_flow_imp.g_varchar2_table(25) := '924ABC255454E8251FFF79218B006903E9014AA412FC6B8AFA53710A4743D4D5D349A17017F5257A476580F804544D28E7B041A8805101C48740C0020210001640C62340603404E48D3FDAD9A7C4F21B6D9CCA874AFCA5541DACA3493553A8B6AA9E6A02';
wwv_flow_imp.g_varchar2_table(26) := '0DFCA7BC101B5D8B259F00EF0A74F7B6535B570BB57637517BA895FAFA331303453E0F558E2FE3FC0148266474FC701D0858490002C04ADA7816081824204E7EA1E668465BF265FE002D9C7903CD9DB888BC453E834F327699EC049C6D3941074EEEE2DD';
wwv_flow_imp.g_varchar2_table(27) := '02E34711A2392A270494FC0168200002F622000160AFF1406F4040F1F0EF698D71AA5E6327F23E8F9716CE5A4E8BA62D272FFFDECC961C48D291F3FBE8F099BD94E22303234D520B57349441041881856B40C04202100016C2C6A340408F8024F7696FEC';
wwv_flow_imp.g_varchar2_table(28) := '319CCD6FDAC419B466DE060AF8837AB7CEDADF8B53626F7F84761CDB42975A2E1ABAAF6411AC9B5A41E3580CA0810008D8830004803DC601BD0001255F7FE7A508A512C6B2FA2D9DBB9296CE5845DEC2EC6EF71B1D8A643A417B4FEFA063670EF35185FE';
wwv_flow_imp.g_varchar2_table(29) := '6E85F804D44C2EE7CC8110014619E33A1030930004809974716F10C88040A8C558A89FB7C84BEB96DE4AD3EBE79278FAE7B20D72F8E089A683B4EFD82EEA4FEAE728F0077C54C9C70168200002B927000190FB31400F404049EB1BEBD15F407D45C5B469';
wwv_flow_imp.g_varchar2_table(30) := 'D5669A5035D556D42E769DA51DFB5EA65E03618365959C2CA806C9826C3580E88C2B094000B872D861B49D08485EFFCE4B61DD2E15793C74DF860F51D05FA97B6D2E2EE888B6D2CBBB9FA5683CA2FBF89AC941D40FD0A5840B40C05C021000E6F2C5DD41';
wwv_flow_imp.g_varchar2_table(31) := '409380D12C7F85058574F7BAF7525D7082AD89B6F534D10B6F3E49C98184663F4BF828A0A29E8F02E00E60EBF144E79C4D0002C0D9E30BEB6C4E4042FEBA39DE5FAFDDB6EA4E9A513F4FEFB29CFFBDB8029E6B3B4EDBF6BCA0DB97EA89E5E42B29D2BD0E';
wwv_flow_imp.g_varchar2_table(32) := '1780000898430002C01CAEB82B08E81210AFFF8EC6B06EA6BF950BD7D2D2E9AB87B2F9E54113C7C07DE7DEA003C7F768F6D6E32DA4DA29414405E4C198A28BCE240001E0CC7185557940A08F2BFBF5B46BA7D79D3E7126DDB2F81D9CE02737A17EA3C528';
wwv_flow_imp.g_varchar2_table(33) := '49825ED8F36B6AED6CD5BC45455D299570F12034100001EB09400058CF1C4F0401858024FC19486AE7F97FF7FA07A9B6BC212F89893FC0B33B1FE3BA02EA790D6417401204A1810008584F0002C07AE678220850A22F455D4DDADEF28B662DA5357337E6';
wwv_flow_imp.g_varchar2_table(34) := 'ED16B9F8036C3BF80C9DBB745A73C4E10B807F1020901B021000B9E18EA7BA9C805EDC7F515111BDEFD68F71F9DEFC4E9AD3C515059FDDF96B4A24D4A302CA2A8AA9BCB6D4E53302E68380F5042000AC678E27BA9CC0607A90422D314AC4D58BE9AC98BF';
wwv_flow_imp.g_varchar2_table(35) := '8696CD5CEB08526F9D7E8DAB08EE55B5C5E72F52CA061714E636ABA12360C30810C88000044006B07029086483403C3654ED4FA200466A5E7EFB7F60C3C7A9A4D8196FC59D9C20E8A5DD4F536F3C36A2BD521BA0A2BE94244D301A08808075042000AC63';
wwv_flow_imp.g_varchar2_table(36) := '8D278180424016FFBEA8FA96F8C48689B479E5FB1C45EBE5034FD1B9CB67556D428D00470D378CC913021000793250E8A67308B49D0B519A8F01466A12EBBF7AC93A5A3C65A5730C664B8E5DDA4F3B0F6E57B549CA05D74FB7678A63470D048C01816B08';
wwv_flow_imp.g_varchar2_table(37) := '4000603A8080850406526925F98FEAF6BFC74BF7DEF201AA28ADB6B057E63FAA2BD6468FBDF273D50715F031401D0B8082C2FC4876643E313C0104CC270001603E633C0104DE2610E7AD7FE5FC5F854945A0921E58FF31C7E5C88FA7FA68CBEEA7A82DD4';
wwv_flow_imp.g_varchar2_table(38) := 'A2B2F3415485D4C0F897020296128000B014371EE66602E2F3170BC529D6D5A72A00E64E5B40B72C7A87E3300D0CA668DFE937E8D0E97DAAB649896029158C060220600D0108006B38E32920A06CFB47BB5800B008506BCBE6AFA21533D73992969E1F80';
wwv_flow_imp.g_varchar2_table(39) := '2CFE816A7FDE263E72E4A0C1284713800070F4F0C2383B11B8327885229D7DD4CB3500466A0505E3E8C6C5EB69C1E46576EA76D6FA72BEED146DDBFB1C0D3287915A29D704905D8071CC010D0440C07C021000E633C6134040213098BEC2A57F2394EC1F';
wwv_flow_imp.g_varchar2_table(40) := '3937BE08805B576EA6E975731C49AC35C4B501DEF895AA00F0167BA86A42391C011D39FA30CA8E042000EC382AE8932309A40706A9F35298E4D7915A796990D62FBF831A82931C697FB82F44BF79F5C7AAF64B2860CDE420C9AF68200002E6138000309F';
wwv_flow_imp.g_varchar2_table(41) := '319E00020A01A9FC2702406D0BBCB6B28E6E610150E5AF7524B1DE648C7EBDFD47944CA8EF808800900A8168200002E6138000309F319E00028604404D452DAD5FC602A0B4CE91C4A2FD61DE017884522A2590E5080402C091430FA36C4A0002C0A60383';
wwv_flow_imp.g_varchar2_table(42) := '6E398F403A75F50840250B60B0AC421100F5C189CE339E2DEAE12380C77004E0C8B18551F9490002203FC70DBDCE4302E204D8D514A194EA1678016D5A79174DAD9B9587D6E977B9BDA7859EDEF94BD52390E212A90A184014803E4A5C01025921000190';
wwv_flow_imp.g_varchar2_table(43) := '158CB80908E8139030C09EB618493540B5B67EF9269A3361B1FECDF2F08A4B1DE7E9855D4FA8F6BCA4DC47C1DA5208803C1C5B74393F094000E4E7B8A1D77948404904C47900623D23E7011093D62CBE99164F755621A0E1A13AD37C9C5ED9F782EAC895';
wwv_flow_imp.g_varchar2_table(44) := '55145340F200705D0034100001F309400098CF184F00018580914C804B66ADA0D5F36E711CB1C12B8374F8DC5EDA737C87BA00402640C78D3B0CB2370108007B8F0F7AE73002F1081703E26300B56240E3AB26D1DD6B1F705C31A0543A49AFEC7D811ADB';
wwv_flow_imp.g_varchar2_table(45) := 'CF8E38A2F2CE5F515F467E3E0640030110B086000480359CF1141050084824407B638F6A39E0626F09BD67E34354E22D7314B1687F0F3DBAF511929D80919A6CFBD74DADA0C222240172D4C0C3185B138000B0F5F0A0734E24D07131AC1A09200BE12DCB';
wwv_flow_imp.g_varchar2_table(46) := '6E739C23E0999663BC03F0A2EA7016F93C543B25E8C4E1864D20605B021000B61D1A746C24025252975F9F87B6D087F7D179FF58711B935FF3C0812CDCD14BBD1A8E8053274CA7DB97BD9B6D71C61C90317BE5D03374F6D26955834AD901502200ECDEC4';
wwv_flow_imp.g_varchar2_table(47) := '8F43E6DDB5F3EFED71E2DF3865CCEC3E0EE85F76084000648723EE621201C99B9FE2E23903A9B4524C4762E807AFE6D257BE8BF97FA47ADC9000184745BE42DE462E24C92AE7F57BF8FF7B4CEAD9E86F2B61803DADEC07A0A899FFDE8ABDC5F4C0868F53';
wwv_flow_imp.g_varchar2_table(48) := 'B1AF78F40FB1D127BB631DF4D2EEA728DA1719B15722DA2A1AF8FCBFCC6BA35E0FCD2D49DF9C8CF39CE310CE34CFC15422FDB60095B04EE9FBF0A25FC0350C64BE15148E230FCFC1222E6E84BA06B61A5274E63A0210009812B62230C859F206F89C5CBE';
wwv_flow_imp.g_varchar2_table(49) := '7813BD49E5CB57BE8887177B239D1D1603220C0AE5CB98BF947D9C6446AACDC91973AE770944CC845A62AAC70062E3AA79EB68E9AC5546CCB5FD357B4FEDA4FDA776ABF65316CDCAF165CAA299CB26F34C7C3412BD29EAE7B927E253167E59E8DFDE7532';
wwv_flow_imp.g_varchar2_table(50) := 'D0C1615120BF8A08F5957A95FA061E9E7B0585F0713080109758440002C022D0788C360179B3EFE7376359F0A55CAEDADBF15838CADB98CF5F44C5FCA6E9654120BB04B96AE1763E0608ABE703F07ABCF4BEDB3E4E7E760ACCE726F9FF9F7AEDBFA82FD1';
wwv_flow_imp.g_varchar2_table(51) := 'A76A466990B7FFEB72B7FD2F8B7CB28F177D9E7F89784AB55AE158C64111032C404510C8FCB3E3CED458ECC367F3930004407E8E9B637A9DE42FDC68775CF902560B8D33C3D8427E132B09FAA89463CF732104126CAFA405D66A2BE6AFA51B66AE193ADE';
wwv_flow_imp.g_varchar2_table(52) := 'C8D3B6E3D8563A7EEEB066EFAB27962B3B34563759F87B4371EA0B2728AD529FC18C3EC9788A000D54F95910586FB71936E19EF9490002203FC72DEF7B2DDBABF2C5DBDB1357CD0D6F8591B2352B2968FD019FA5E7B5B2C3D129D1002A95F1C4F6C28242';
wwv_flow_imp.g_varchar2_table(53) := 'BA7FC387A9A2B4D20A14597F869CFD3FF5DAA3243900D45A11F3AF61EF7F2B8F6564EEC5A309EAE39C0C72D494AB26C2B3B4C2AF0851F80AE46A14DCFD5C0800778FBFE5D6CBC217E3377EF182973730BB345988CAD90BDDCA3751490A14E2A4405A6DFE';
wwv_flow_imp.g_varchar2_table(54) := 'D4C574E3C28D8A18C8A7363838485BF63E4917DB2E6876BBD2E2E43FB2F04B3AE681AB8EA476603A24048AA98C7704AC144276B01D7DC82D010880DCF277D5D365DB5BCEBEC509CEAE4D7602CA391FBD156F64E2D828C700720CA2D5D62DBE8DE64F5D62';
wwv_flow_imp.g_varchar2_table(55) := '5764FFAD5F22EB8E9EDF476F1E7D55B3CFB2FD2DDBFF5684CEC99BBE1C358900B06B132748F185B05284DA9505FA650D0108006B38BBFB29BC22C8766BA4B377CC6FFDD77AF80FC7FE0B5C25528093CC65C379509CB58275654A48A1D94DB8486A60AD56';
wwv_flow_imp.g_varchar2_table(56) := '38AE80DE79D37D34A1728AD9DDC9CAFD2F775FA017DF7882B3FEA9EFF028A97F25F48F0597D94DBCFAC33CF7B2B1DDAF78F8B323FFD09B3AFF5CCD499169A4809ACDB21B505E53AA1C4BE5B5F387D9838AFB67850004405630E2266A04649B3FC2896F64';
wwv_flow_imp.g_varchar2_table(57) := 'A11B6D932FDBA9E367D0D4FA995453DE4095653554EEAFA2325F903C0545D49FEAA568224CE1781775473BA83BD241527AF6326F3F6BAC41BADDA96C08F002656E6CBA2C1C5DCD51DD5D006F918FDEB3E1212A2BB677B6BC8E482BBDF0E613D49F8C6BF2';
wwv_flow_imp.g_varchar2_table(58) := '95987F1100666F79C7A3490AB54675C75A6B419E54379526D44CA5AA402D5595D75290E75EC05741A5BE724AA4E214BB3AF742BD9DCAFC3BDF7A9A2EB7368E498C2A8991580840048C7AE8F041030420000C40C225A3232031D5DD2D51CD78F791EE5C52';
wwv_flow_imp.g_varchar2_table(59) := '5C4A93EBA693F2C55B3D95A654CDE2DCF801F2161693CFA39F1C2731106751C06577F98BB93DD24CA79A8E5063DB596AE9BC44E941E3C70FF23656C65102122960E636B538A575707D003D9F8840A08CEE59FBA06DEB0484625DF4CAFEE7A92BDCA13961';
wwv_flow_imp.g_varchar2_table(60) := '846BDDB40A5363E245F8C9CECA68B6FC65EE4D6B984DF3262FA6AAB27A2AF3962BF3AFA8505B0C5EE12DA8243B3C26D3FDD4978C52241EA2B3ADC7E96CF3093ADF7C9A9203998960D989AA1C1FB0E4386A74FFC2F1A97C27000190EF2368D3FECBE2DFD3';
wwv_flow_imp.g_varchar2_table(61) := '1E2339F737DABC1E1F2D98B694362CBE8B2604A7710C7CF662C37B1311DADFB8935E3FB4859ABB1B8D7649B9AE9813B9C817B1992220DA15E7336AF558F9E10E579457D0ADCB365375A03E231BCCBEB8357C99761EDCC6BB2F5DBA8F2AAF2E511CDECC6A';
wwv_flow_imp.g_varchar2_table(62) := '720C24899624994F266D7CE564DAC86CE74F5C4EC1E2AAACED4EF42563D4143A47DB381DF2898B8769206DFCDF84F80354F071148A24653292B8D628010800A3A4709D610292CDAFEB724433C4EDFA9B4D9F308BEE59FD219A59BBC8D485766030453BCF';
wwv_flow_imp.g_varchar2_table(63) := 'BC48CFEFF935C57A8D6F0D9B9DAC468E0242BC5BD26F403095F84A68E38A3B697CD5949CEF10CB29FFF9D613F4E691D7A8AFBF57778E0C6DFD9B2BA624CD725F06CE7E81D272DABCFA7DB47AFAAD2422D4CC76BAED303DB9FB27D4D872CEF0632442A57A';
wwv_flow_imp.g_varchar2_table(64) := '52B9A93B26863B830B1D450002C051C3997B63642153B65E39AB9A913689CF56EF59FB419ADBB08C0AC4BBCAA226C703AF9F789E5EDCF3180D18381610972F71CE2AADD43F8218AD09121DD1C36FAE49CE8AA8D70A0B0A68F5C29B69CEA4C5BC359D9B64';
wwv_flow_imp.g_varchar2_table(65) := '32A981241D6B3C40FB4EEE3274B4E25552FEF296B689257F25C434D2A5BF93227C8B0A3D74C7CAFBE8E679772AFE24563511A1C79ADFA267DEFC25B5745F36F458453871C8A4A4B74603816C118000C81649DC472190C917F0EA79B7D0BB567D882AFCD5';
wwv_flow_imp.g_varchar2_table(66) := '39A1275BC5673B8ED18FB7FC1B85629DBA7D1087B5AA090153C3B4C453BD9DFD018CB689F5936825D70DA80D8C37FA91315F27DC5A239769F7B1D7A8A3ABDDF0FDEAA6562839F1CD6A72DCD4CD0E95462241C4A1EFA3B7FF014DAB996BA9F0BCD6F6487F';
wwv_flow_imp.g_varchar2_table(67) := '887EF3E60F69DFA9370C2131FBE8C450277091A3084000386A38736B8C78FA87F9DC5FCFF35E6AF7BD73CDFDB469E1FD869CFACCB6AA23D6423FDDFE6F74AEE994EEA324565B4480990B99E4A40F69540BBCBE93F24E3865D2745A3E6B2D5597D5E9DA30';
wwv_flow_imp.g_varchar2_table(68) := '960BBAA26DB4FFEC9B74B1E9826698DFB5CF10E154C91EFF9203DFAC26C249167F233926664C9A4B1F5AFF69AA2D9B6056770CDF37994ED0F3077F495BDE7A52F733E28322E1A94A88201A0864810004401620E216A41450E9E0D4B672FEAFD5249CED63';
wwv_flow_imp.g_varchar2_table(69) := 'B77F8E164F5A6DAB10274957FBC45B8FD0AB075FD01D4E2BB663C57B5D444026CDE329A49993E7D2BC298B5908D467EDCD56045D7BB4894E341EA2C6E6F3944C193BDE19EEBB2CFE66C6FB6772EC74FB8A7BE9EE651FE4CC8A362A13CD7CF735BE4E3FDB';
wwv_flow_imp.g_varchar2_table(70) := 'F65D66AB1D2920D5046B3975B21589AA32997BB8363F094000E4E7B8D9AAD712BED62D19EDB88A9FE6E2CF15EE7EFF5D5FA159758B6CD5FFE1CEA40707E8F9038FD20B6FFD46B77F52C825C0DEEC66364960D3D5AC5D3068A4E7FBD891ADB2A28A6A6BEA';
wwv_flow_imp.g_varchar2_table(71) := '6972EDB4A19C091CCA66B4A5AFA4DF0E636B0B355373DB650AF5745322C33036795EF5042EF4536AAE8F4294CFFC25CB9F5EBB6BF5FBE91D4BDEC3C59FCC3B86D0EB83D6DF9F6D3F4ADF7DFAEF74394B7860156750CC4511ABB1D887CFDA8F000480FDC6';
wwv_flow_imp.g_varchar2_table(72) := '24EF7A24457D24E44FAF3DB4E99374E3CCDBF52ECBE9DF2706FAE9173BBF437B4F689FCBCAB67BDDB44A531DDA0484882A499F2CE59247D33CEC205811A8A0AA8A6A4E22544EC51C41505CE4A7626F317B9517F261CC380E4B1BA00427EEE94FF5533F97';
wwv_flow_imp.g_varchar2_table(73) := 'ED8DC623D4D5D34EA148C8D079FA48FD9272B792D656162B339B6CFD4B0E05BDAA12ABE6DF420FADFBB4BDDEFC4700F3FAA9E7E957AFFE88734268E7AB90D04029228406026321000130167AF8AC92BC4609F9D359A0EE5DFB106D5A745FD662ABCD44DF';
wwv_flow_imp.g_varchar2_table(74) := 'CB495CFEED99AF5153C745CDC728D9DAB88090D94D8E5724B44D6AD567A3C959B26C25CB8F3439B6911F3DDF0DA3CFF6718E7FC9F267F636B5F437CC11277A217F9250EAF3F7FC2D279232CF07C1281BDDEBD8A6C7DFFA11BDBCFF19CD4B455829751410';
wwv_flow_imp.g_varchar2_table(75) := '15A08B1417A8138000C0EC181301793BED0DF76BDE63E9CCD5F43F6EFB2353E3FBC764C4081F6E8F36D3B79FF8738AF485556F2D5BB03593391DB1899EEDC30F97C52EC6B5EB25CAC288977BB67918B99F38FB49821FC99E6866D2A4E1BE88E814F1A995';
wwv_flow_imp.g_varchar2_table(76) := '41B12A50439FBAFB4FA9BE7C9211136C718D1C45FD68DB37E8E0D9DD9AFD4154802D862BAF3B010190D7C397DBCE8BC775FB05ED90B5125F197DF5C16F73DEF4406E3B3B8AA7EFBBF03AFDE8C56F697E529CDBC4C9CDAA9666E6E18E3E4A70963BBD6D6F';
wwv_flow_imp.g_varchar2_table(77) := 'ABFA24C7213ECE9618ACE52A8A1C25615593C4497AF9263EB1F90F69C9E4355675296BCFE94D44E92F7FFE59AEA9A09ED360E818AAC252E659331037B2050108005B0C437E76C288F3D55D6B1EA03B977E202F0D8C7391A11FBDFC2F749CBDDFD59ABCF5';
wwv_flow_imp.g_varchar2_table(78) := 'D67096B62293CFBAAF7FBE845CF6F28E408ACFC073D9244B9DD44AB03A342DC5BE119DFCF6AFB51B326FEA22DE79FAB2E2F3908FEDB9833FA7E776693BA45AE18C9A8FECD067630420008C71C255D71190B7FF10C75D6B2D4013AA27D3E7EFFD6BFE0236';
wwv_flow_imp.g_varchar2_table(79) := 'D75BDECCC139DEBA97FEE3C987351F51C2BB0072E69D8B968C0F9008B16CF90718B541CEF9250AC2EB37D7C94FAD3F46D2FD7EF6FE3FA339B54B8D9A64BBEBA4A0D5C3BFFEA2667D051160959297C2C29D17DB814287464D000260D4E8DCFD412375ECDF';
wwv_flow_imp.g_varchar2_table(80) := 'BFF17FD0CD7336E735A841AEF0F61F2F7E9D4E361ED5DC05A89F5EC94E75B949D32A71F092054F8ADF882010A7C16CFB09C84E8738F5C9822FC591A4484DAE1CD006D357A8EDBC7684C24C4EF6F3B9CD7F95174EA75AFF40B69F7C9A7EB3FD113EEE513F';
wwv_flow_imp.g_varchar2_table(81) := 'F09114C156EFC0E4F53F6A74FE6D021000980CA32220496AB44AADCA17F0FFB8ED0F29505C31AAFBDBE943673B8FD2B77FF335CD3377C90E280B63AE9B2206385A40B2098A2810313096268BBE2CF692C54FDEFA73B5E85F6B83081DC9FAA7D63C1CE7FF';
wwv_flow_imp.g_varchar2_table(82) := '99FBBE4A336B168EC5745B7C56D205FFDF971ED62C1E64B51F8A2DC0A0135921000190158CEEBB89BC81692D2E0F6DFA3D8EF9BFC311606417E09F9EFC23BADCA61E1618A82AE12D717B9D35CB2E80C4C90F7069E6C1AB4240C64CCECFE5D761EF798966';
wwv_flow_imp.g_varchar2_table(83) := '90855EFC188643F70AF8FF7BB8688F4438C8DBBF9D9A5EE9E4B95316D167EEFC0B3B75794C7DD971FA05FAAF6DFF3DB7782F00002000494441549FEA3D64CC64070A0D04322500019029315C4F03094EBE72513DF98A2497F9EA43DFA29A32EB0AD4983D';
wwv_flow_imp.g_varchar2_table(84) := '2C2F1F7F9C9E78FD67AA5BEBF2765C39BECCF6255B4514881890B0C2E1B87F59DF95DC00BC90D86DB1BF7E5C255F41882B266AF93CBC77C3C768C3DC77993D252CBB7F0787A4FEF52F3EAF3AF7449ED54EE1424B3EEB22302C331E0F3295000480A9789D';
wwv_flow_imp.g_varchar2_table(85) := '79F3DE9E7E0E4553AFFD3EB96E3AFDAF7BFE8A13AF3827535973B891FEFDE9BFA268EFC87901E42DBA92EBDC9B9DF6D69933CAB855921E39D41A558DFD0F9406E913EFFC124DAF996FFCA636BF529C017FB8E59FE9F825F5681449482589A9D040201302';
wwv_flow_imp.g_varchar2_table(86) := '100099D0C2B52467CC5D3A79FFDF7DF34374DBFCFB2D490663D590C8DBF2B79FFF333A7BE9A4EA23CB2AFC54CEB1F068E61188700E84588F7ADEFF05D397D2C7377E31AF234FAEA727BB36DB4FB033E06B8FA882456640F3E69C93EF0C01E0E4D135C1B6';
wwv_flow_imp.g_varchar2_table(87) := '349F274BBD7A352FF3424E2FFBC7EFFBE7BCCABC6614D333077F4A2FEC7A5CF572719693F4AC68E61110F129CE8D6AEDDE750FD2ED0BDF6B5E077274E7D6C8457AF8977FA8BAF321473775532529D0507A67341030420002C008255CF336017120EBB8A4';
wwv_flow_imp.g_varchar2_table(88) := '9E1E375016A0AF3FF83DDB175D19CD901EBCBC93BEFFEC37543F2A0570A4542B9A7904A4E4B456DD894FDDF3C7347FFC0AF33A90A33B2706E2F497BFF814C5FAD48FDE6A392DB5D509A97284038FCD120108802C8174CB6DE4ED4BDEC2D4DA8CC9B3E9F3';
wwv_flow_imp.g_varchar2_table(89) := '9BFFD69138CE7138E037391C50AD49321649CD8A661E01493D2D49A8D4DAFF7EFFDFD3C48A19E6752047771EE0FA00DF7CE64FE862CB79D51EC8EE93EC42A18180510210004649E13A8580C49777730E76B5B664EE0AFAC4863F7624ADA6F039FAFE73FF';
wwv_flow_imp.g_varchar2_table(90) := '429D91B611ED93702C110076F7A4CFD7C191632711006AE1A752FAF8CBEF7B981ACAA7E4AB89AAFD1E184CD10F5EF9473A7266BFEA3555E3391705E76B400301A30420008C92C2754302402709CBDA451BE883377DD691B43A62CDF4D397BF43E75A4776';
wwv_flow_imp.g_varchar2_table(91) := '0494F2BA72046076195C47C23560942CFC720420A18023B5BA8AF1F4FB777F856A4A9D137E3A6CA754087C74D7F768E7E16DEA02C026C9A80C0C252EB1090108009B0C44BE74432F04F01DABDE4DEF5AF6E17C3127A37E260712F49FDBBE4987CFBF35E2';
wwv_flow_imp.g_varchar2_table(92) := 'E71401C0E7B070C4CA08ABE18BC50155FC4FD404C082A9CBE8C1F59FA40A7FB5E17BE6CB85E9C134BD70F897F4D29E2749C4C0480DA180F9329AF6E92704807DC6222F7AD2D31623A903A0D6DEBB9E93B0CC734E1296DFB29343017FF6FA77E8CDE323BF';
wwv_flow_imp.g_varchar2_table(93) := '854904440D048069F3580440270B80B4CA0EC0EAB9EBE9BE1B3F4A653EE739624A36CA1DA79EA72776FC8C44888ED4A41E80D405400301A30420008C92C2750A81707B2FF586FB5569BC7BDD43B469E1FDCEA4C502E0BF767E8F761C7D6944FB2000CC1D';
wwv_flow_imp.g_varchar2_table(94) := '76B70B805D67B6D2AF5FFB4F5501501A2CA6605DA9B98380BB3B8A000480A386D37C6362DD718A70F959B576C7CA7BE89EE51F35BF233978422A9DA21F6FFB161D38B76BC4A7E308C0DC41D13B0258346D197DE0964F52D0814700B203B0EDE8E3F4CCAE';
wwv_flow_imp.g_varchar2_table(95) := '4769203DF211403997672EABB2573D0A736704EE3E560210006325E8B2CFEB4501AC5DCC4E806B9DEC04F81FEC0478626401C0E98025273B7C00CCF947A10800AE41315CC4E8FAA734544DA4DFDBFCC7EC04D8604E0772785711008FEDF93E6D3FF0A26A';
wwv_flow_imp.g_varchar2_table(96) := '2F100590C301CAD3474300E4E9C0E5AADB7A0260F1ECE5F43F6FFD4AAEBA67EA73250CF007CF7D933A222D231F01286180958E4A816C2AD00C6F2EE998DB2FA857A1F47218E01F220C3043AAB8DCCD042000DC3CFAA3B05D3711D0244E0474975313011D';
wwv_flow_imp.g_varchar2_table(97) := 'A36F7122A02BFC9F911A12018D624265F811ED4440E3682811D0F40CEF6AFFCB2511D0B79EFD136A6C462220FB8F56FEF41002207FC6CA163D95FAF2520B40AD9507CAE96BEFFF2E495216A7B5FD975EA31F3EF76D55B38ABC8554CBF9D8D1CC23D0C173';
wwv_flow_imp.g_varchar2_table(98) := '2FC57350AD7DFADEAFD0BC86E5E675204777968A805FFFE56728D61B53ED81D402F0F01C440301A30420008C92C2750A01BD7358F184FFF203FF48E383CECBC6F6E4FEFFA42D7B9E569D09280664FE3F12BD6240EFBE85A350B812A5D39A94A3FE8747FF';
wwv_flow_imp.g_varchar2_table(99) := '48D5FF41CA518BF844122AA78DBCB9F6400098CBD771771F4C5FA1EEE60825B928905ABBEFE60FD3ADF3DFEDA8B3704943FB8D67BF42179ACEAADA2DF5D825190B9A7904C21D1C86DAA31E86BA68C632FAE8862F703960E778C3A31CB079F3C9ED778600';
wwv_flow_imp.g_varchar2_table(100) := '70FB0C1885FD914EAEC91E52AFC93EAD61167DEE5D5F274F81738E012E87CED2779EF95BAEC6367221A471CCB112A95847319B32FB88A4A20E354755BC3088CA4B2BE81377FE214DAB9E9BD98D6D7C753CD54BDF7FE99FE8D4E523AABD0CD694526965B1';
wwv_flow_imp.g_varchar2_table(101) := '8DAD40D7EC480002C08EA362F33EC9DB7F1767641BD9158E9462387FF1D0BF525569BDCD2D31DEBD2D471EA3A7DEF839C9DBD848CDE72FA2CAF16524B900ECDCAE0C0EB9302ABF5EB545C66B1C6F218B88915FEDDCA41E40888B5169ED40BDF716CE4639';
wwv_flow_imp.g_varchar2_table(102) := 'DF39D928A506C55FFFFCF3AA734F464CB6FF71FE6FE7996BCFBE4100D8735CECDD2B5E415ACF875473B24BE73F74FBEFD39A199BEC6D87C1DEC942F90F8FFD11357536AA7E22C00958029C88C56E2DCDA573938934A5AE1ED9C8C22FE574C5976338A7BE';
wwv_flow_imp.g_varchar2_table(103) := '8816C95D20510CC30240EACA7B7D85FCE7F6732AD3CB463967E222FAECDD7F61B7A118757F769DDB423FDDF27F543F2FE3D730BD92D5DBA81F810FBA940004804B077EAC66CB5B589C4B03ABB5E91366D3276EFF32058AF3DF2BFE62F769FAA75FFD8926';
wwv_flow_imp.g_varchar2_table(104) := '32490054C40B66AE9B2CEE03BCE0CBD848C8A62CF8FCEAF876B7D4766D862FF8AD35E4EACE803837FA035EB6CF630B27B314DB270981D45A618187FEE0BEAFD28C9A05B91E8E313F3FDA1FA2EFBDF43035B69C53BD979F4B00577229603410C894000440';
wwv_flow_imp.g_varchar2_table(105) := 'A6C470BD42400A0285B93090D682F29EF51FA58DF3EEC96B629281EDDF5FF81A9DBE785CFD0D8CB7CDEB674802A0DCBC82C90E457F9417FC788A647194504DB5A38AD10E86D8A6EC0A5CFDF19516E5CC5E9974ADE7BA553DE2C5C6395316D067DEF9B5DC';
wwv_flow_imp.g_varchar2_table(106) := 'F571B4A0AFFBDC2BC79FA4C75EFF89E6F67F900B004921203410C894000440A6C470BD4240398B6567AC64423D1AA0AE6202FDC13D7F9ED7B9D98FB5ECA5EF3EF5B0E6A8E7EA0D4C5EECE3D10445B936838C87954DC2CDE4C8C31FF0E524DA436F074A58';
wwv_flow_imp.g_varchar2_table(107) := '7CEEBEBFA059758BACC492D56749ECFFDF3DFA450AC5BA54EFEBE55D19713E45F85F56D1BBE6661000AE19EAEC1B2AE1581296A5D5EE5C733FDDB5F4A1EC3FDC823BF62563F4C36DFF44271B8FAA3E4DDE8C6B26952B6FC7563579BB8F479214EDB67EE1';
wwv_flow_imp.g_varchar2_table(108) := 'BFDE46C9FB505EC342C0E23750F169E8BC1CD1DCE958307D097D7CE3973824D07EBE1946E6CAF3877E41CFBEF96BCD4B25EC54C24FD140603404200046430D9F797B174032B3A91567918BFCBE12FAEA83FFCA35DACBF38EDA9E73AFD08FB7FCBB66BFAD';
wwv_flow_imp.g_varchar2_table(109) := '4EFE235BFC315EF8B5FC2F72015AB6A0CB2AFD967AA2EB2505120EBFBBF98BB474F2DA5C2019D333A389307DFD677F4089947AB82D92FF8C09313ECC042000300DC64420C23B00318DC42C72F3A5B356D2C7F84DCCC3CE59F9D22E87CED1BF3DF957D497';
wwv_flow_imp.g_varchar2_table(110) := '504FBD2A27FED59382E4F55B635754F22FF4C4AFF5E9B3154E718128ABE06808DE11B0A225E31C8E7A593D1C55FA50595A4D9FBAE74FA9A17CB2155DCACA33A4ECF4F7B7FE3D1DBB7050F37E65FCE65F8EC4535961EED69B4000B875E4B364B79C3D77F1';
wwv_flow_imp.g_varchar2_table(111) := '56AC789F6BB5DB96BD8BEE59F1612A2CC8BDA7BC9EE93D7D9DF4CF8F7F85C231754F73B987BCF556D495991E7E6524F65DCFA66BFF5E8E2D0A0AE56728678184034A86C76C390E7A3927425503E744603F01531BFB40289901C3EA9901E5F9E36B26D367';
wwv_flow_imp.g_varchar2_table(112) := 'EFFAF3BC88484973D19FDFECFA01BD76F8254D74E28C59C3E213A17FA6CE30C7DF1C02C0F1436CBE81467C01A417F7DF329422D8CEAD27DE45DF7BF16FE872DB25DD6ED64E0E9A7EF6AF08AC2616581A0570F43A5A5652460DB513A9848F63BC453E2A2A';
wwv_flow_imp.g_varchar2_table(113) := 'F492BFB898BCDEA1B3E364B29FE2FDFD944A2728994AF2AE471FB5B45FA6DEB8B67F87D6732564B0CA02E734119E9D17C39AC750D2CFE91367D1EFBFE3ABE4B7B93FC033077E422FEC7E426F48A97A6239C9F1131A088C850004C058E8E1B3436F901C6B';
wwv_flow_imp.g_varchar2_table(114) := 'DEC37901FA39EE5CABC996F97B377E9CD6CFB9DB96E4627CEEFA83ADFF48672E9FD4ED5F6990F3FED7999BF73FD19BA2506B547771BBBEB372361CACA8A0897593A8B6A2814ABCBC4B318AD69B88527B7733357734512412C9BC1FBCC350C9216A123268';
wwv_flow_imp.g_varchar2_table(115) := '6693288868B7FA59F9F0B317CC58421FDBF0451601E68EDB686D7DF5D4D3F4EB57FE5333B456EE5DCC0BBF78FEE72AEC74B4F6E173F623000160BF31C9CB1EA5381CB053D203EB649A912FADDB566CA677DDF0113E0EB0E6ECDC08D0EEBE76FAD1CBFF4C';
wwv_flow_imp.g_varchar2_table(116) := '179AD513AE0CDFA7B85412AF9499FA05ACA45BD6F172BFDE2EF1C89FD43085A636CCA040A9385D66292F010F6AB42F4CE75BCE5273DB654AF39181D126E35DCD5112B2656D5693A38B504B8CA44E805E9B3A613A7DECD62F524D6983DEA596FD7D7A304D';
wwv_flow_imp.g_varchar2_table(117) := 'CF1EFC296D79EB69DD6318F1B3A8919D27DE61410381B1128000182B417CFE6D02468F02E4032BE7DD44EF5AF921AA2AA9CB39C153ED87E8912DDFA6482CACDB173937AF9B1A3435E7BFBCF977F38E4A2667F213C74FA0D953E653A9C9D116BD89089DE2';
wwv_flow_imp.g_varchar2_table(118) := 'B0C8E6D6565D56C3178808A8E24C7566EE04881F437B231F05181027B595F5F4E0C6DFA3D9B54B0CDB60D68521169E8FEF7E84F69FDA65E81108FB33840917192400016010142E33462016EAA748A7B1B3E31993E6D23DAB3F48D3ABE753C138931DC646';
wwv_flow_imp.g_varchar2_table(119) := 'E87EFF409CF635BE46BFDAF6431A60E72BBD265BEB72AE2D4E6E663539F3D70BADBCF6D995C14A9A3F63315506AACDEAD288F7ED8A74D0C9F34729140E197AAE08A7DA29415313D6243913623727A7D20A4B1DEEACDF5B420FF071D492493792CF637DE9';
wwv_flow_imp.g_varchar2_table(120) := '60C9307929749A7EB5E3079A697EAF855BCE15FFCA50F1CFD07CC345C608400018E384AB322060244BDBDB5FC47E3F6DB8E14EBA6DDEFD96D6706F8934D28B871FA57DC7761B7AD396B75849786366D2954C1CFEA43F7367CCA79913E648F9C50C46278B';
wwv_flow_imp.g_varchar2_table(121) := '97F2D6FB99A69374EAFC09430C65DBBA9A059499D101B20B25E5AA8DEC9E08C3150B6FA43B97BC9FEACA2665118CF6ADFA39B6FF95934FD2CBFB9EA67E76BE34D272956DD248DF704DFE128000C8DFB1B36DCFE5CBB7F35284F3D2EBBF550F1B51535143';
wwv_flow_imp.g_varchar2_table(122) := 'F7ACFD10DD30699DA967EBB285BD8DF3ABCB97EFC08076E8E2B58065E1979AEBD93A561F69F0C48742ABCCEDF0673C8585B462D16AAA09DAE31CBB33DC4A6F1DD9CDBE01FA3C65F74432279AD624349077A04408186D1E8F876E5B7E176D5AF81E531D04';
wwv_flow_imp.g_varchar2_table(123) := 'E5DFC5A1A637E8F11D8F5057583DBDEFF5FD16E15433B9DCD47F174659E13A6711800070D678DAC61A59FCA56CAB91056DB8D305FC46367DF26C7ACF9ADFA1FAC064F27AB257E02431D0CFDBFDAFD2F6832F5073E745C39CE4DD5AD2DCCAD9EB70A95CC3';
wwv_flow_imp.g_varchar2_table(124) := '1FCEE04249F2130DE97BB2FB8BFDB47AF14D54E6377111CDA0DFC39746E361DA7D6827F527F417DE00670C34335990544094FC00712E58A557FDF05A532770BE80DB97DF4BF3C72FCFAA2F85845736F59CA72D871EA363670F193A6E1AEE57718997A34D';
wwv_flow_imp.g_varchar2_table(125) := '4A6C59967914D3041FB1190108009B0D8893BA23B1EB3D5C3130131120F697FACA68DAF839B464C62A9A55BF8002FE4AF216FA32F61390B0BEF648331D6FDA47A72E1EA58BEDE7483CAE8D3625B39D2C56559CD9CEC45D7649EFDB79A94737824216FF75';
wwv_flow_imp.g_varchar2_table(126) := '376C24DFD5F87DA37658755D7F324E3B0F6CE79C02DA4246B84AF9648FD7C4A450BCF24BAD84188B2ABDC894EBF94C6B984D73A72CA4859357524D5983B22B9049C48A9CEF27597086FBBBE94CCB513ADAB89F4E5D3AC27F96C868282472427C4E861336';
wwv_flow_imp.g_varchar2_table(127) := '65F4615C0C02060840001880844B464F40B63DA35D71E58B78746D1CCD9EB080164E5D4E525DB0AC9813A01471121BDE1D901F711E4CA59394E4B72C49A19AE04528D2D743675B8ED3A9CB47A825A49FD067A47E89C39FD458373BD98AF0E9698DE9E6F6';
wwv_flow_imp.g_varchar2_table(128) := '976DFF75CB37DAEECDFF7A76B1788476EC7B8506748E03ACCAA298E0DC14E29362C43170A4795059564337CCBC916636CCE7444AA554ECF3B3D3E0D0FC2B62513AC0734EE69E2CEE92B73FCAF6377735D2B18BFBE942DBE9D14D79FE94223CABFDD8F61F';
wwv_flow_imp.g_varchar2_table(129) := '35417CD008010800239470CD9809F4F1766C98770332D992557BA8BC1129E96C79919657F321872F4E65CB5BBF99C4A8ABDD5FCE5C2B38814D91CFC437D4AB0FEF0B27A8A75DBDDE805C26B6AE5E72A36DCEFCF5264307FB04EC39F4A6AE239E2409B2A2';
wwv_flow_imp.g_varchar2_table(130) := '8AA0ECB0C84E54263E296A364AAE05390A52FEC3E3C2B34E111732078D8420EAB193191D642E2290D040C06C0210006613C6FDDF2620895A24618B110FED5C61F3491EFB89D6645913DDD27E2144E2FDAFD5E6CD5C403327CECD1592513DF7CCE51374F2';
wwv_flow_imp.g_varchar2_table(131) := 'DC71CDCFCA625A37BDD29220069973DD4D514A70A8A05D9B080A49302589A6D040C00A0210005650C633DE26904E0D2A15EDE2D1845280C62EAD88CFA34B38BDAF99617ED7DB2ABB22F266AAD5AAABAAE9C685B7E42ED46FB403C40BEEEB07B75138A29D';
wwv_flow_imp.g_varchar2_table(132) := '5C49765AAC7CDB95E8803E2E1E941A436D85D12251DD55E0A24912E657CA95140B8BACCF87916D7B70BFFC210001903F63E5A89EA638D5ADE46F3792BED54CC3E52DB4ACCA4FC5FC055C6876F5BA6B0C9137D2F60B3D9A6FFFF24678339FFB9797569889';
wwv_flow_imp.g_varchar2_table(133) := 'C0B47B87229DEC14F89AF62E0033AF9B5661E959B7ECB8F4C79214E3F9978D23A3B100F4077CEC64EA37D721722C1DC4671D4D0002C0D1C36B7FE3247B9B080171D6B2BAC917AF2CFEB928AA22216A219DB7FF2993A6D0E2192BACC692D5E71D3AB3872E';
wwv_flow_imp.g_varchar2_table(134) := '355FD6BCA7A409160166751311263B02220446EB2438DA3E8B73A9CC3F33B34A8EB66FF89C7B084000B867ACED6B299F04A492037C2C9024D91990EDD96C38545D6BB0385749D899FCF8F88C55BE80AD7CE3BF1EBE6CFDCB11805AF3780A69E3AA3B38E2';
wwv_flow_imp.g_varchar2_table(135) := 'C1FA34B5D99C28FDA93EDABE678B66D225F178972C8BB96AB2F827D83F4576052474557EB27D38253B4D32F78A38B4CF1FF05291978BF998185A9A2B96786E7E118000C8AFF1727E6FF99B571CB5644740F942E67AEFA36D4A8C007B6C8B57BFBC615ABD';
wwv_flow_imp.g_varchar2_table(136) := 'CDAFD66FB1499C21B5BCD2674D9D4373A72E1CADE9B6FADC890B47E8EC45F59038790BAE6C28CBA9201B06367C3C20734FC667AC3B0332F764C197987E6F31D790C0A26FABB9E9F6CE4000B87D06D8DC7E71144CF38239C0E7B6F2AB7C410FCA0FFFB97C';
wwv_flow_imp.g_varchar2_table(137) := '414BE89FBC5915161572C29471CA2222BF577EBDFA636606BFD1E093C525C4B1FF6AD11012DE78DBAACDE4F33923142CC1D9015FDEF3BCEA626A57EF7789D2909D28D9119079F7F6FC1B9E93FCE7C30253E69ED438189E7F9EABF350FE1C0D04EC4A0002';
wwv_flow_imp.g_varchar2_table(138) := 'C0AE23837EFD7702F2852CDFCA4ADCFF38FE52E6AD5A1600B2E00FD7C35162B473551CC7E098C9E22F51106AADBEAE81CB25DFA8D8E888C6E3B5E7F81BD4DED9A66A8E38C3C92E809D9B0836996FD2640A8A2090F956C8C73592874226A1A4B376CAB0D9';
wwv_flow_imp.g_varchar2_table(139) := '792CD0B7EC108000C80E47DC05040C13683D17D2F47158BA60194DAA9966F87EF970E1C5B67374F8E441D5AE4A72A7861995F9600AFA08028E210001E098A18421F94040DE1ADB1BC39AC9906E5F7B67DE3BFF5D3F16522760EB9BCFAB0E91ECDAD44FAF';
wwv_flow_imp.g_varchar2_table(140) := '40DEFB7C98C4E8A36308400038662861483E109048879ED6A8AA9779A0B49CD6AFD8940FA664DCC7ED6F6DA1585F74C4CFC96147D544AEF3C0D11968200002D6108000B086339E0202CAB971B46BA8429D5A9B3D751ECD993ADF91B44E361EA5338DA754';
wwv_flow_imp.g_varchar2_table(141) := '6D1B2A805362496A60470286512090210108800C81E17210182D01A53262275746E454C86A6DF9FCD534BE76E2681F61EBCF35B75FA6FD27F6A80B004E851BA8C94D62265B8343E740C0240210002681C56D41E07A02E2411EEEE8D54C00B466F1CD5453';
wwv_flow_imp.g_varchar2_table(142) := '59EB48781DA136DA7D78A7AA6D521320585BAA78D6A3810008984F0002C07CC6780208280424A94CA859BD229D38C2AD5BBA9182E5F999FB5F6F987BC2DDB4F3D0ABAA0E905289B17242E06A9967BDBBE1EF410004C64A000260AC04F1791030484092C9';
wwv_flow_imp.g_varchar2_table(143) := '745D0A2B498D466A924466E38A7750B12FBFD3FFAAE18827382DF0DE97540B2049F29CEAC9415B64043438A4B80C04F29A0004405E0F1F3A9F4F04240570E7C5B06A463C491B7BFBAABBF90DD8992561D38303B475CF73AA2990250362CD94207938B113';
wwv_flow_imp.g_varchar2_table(144) := '1A088080F9042000CC678C27808042C08800D8C429800B0BB8508C031B048003071526E535010880BC1E3E743E9F0818390258BF7C139514DB3B25EE6899F7F5C7E8D57D5B7104305A80F81C0864990004409681E27620A046C08813E09AC5EBA8BAC299';
wwv_flow_imp.g_varchar2_table(145) := '51005DA10EDA7564079C00F14F04046C420002C02603816E389F809130C0E50B390F40B533F300B4745EA67DC7D4F300200CD0F9FF0660A1BD084000D86B3CD01B071330920868D1ECA53475FC0C4752686C394B474E1F52B5AD0C89801C39EE30CABE04';
wwv_flow_imp.g_varchar2_table(146) := '2000EC3B36E899C3081849053C75D2345A346399C32C1F32E7F0D9FD74B1E982BA00402A60478E3B8CB22F010800FB8E0D7AE640027AC5808A7DC5B469CD66E759CE75105EDAF50C2593C9116D433120E70D392CB23F010800FB8F117AE8200246CA016F';
wwv_flow_imp.g_varchar2_table(147) := '5CB3894A7DE50EB29A28D61FA6EDBB5F56B509E5801D35DC30264F084000E4C940A19BCE21D07A2E4483E991B3018A958BE72DA12975339D63305B72A1F5141D3D7554D5A682C2026A9851E9289B610C08D89D000480DD4708FD1B918084D4C9DBB478D6';
wwv_flow_imp.g_varchar2_table(148) := '1772E63849A39B2F2DD41AA37834A1DADDBADA3A5A35FF26FE7B8714C561E7875DC75EA7CEAE4E559BFD011F5536E44FFE03C9E920F34F0A17C9FC932C866820906F042000F26DC45CD6DFC1F4D0422FF9F3E557F9E2BDC27FC647CA349018E037E92B24';
wwv_flow_imp.g_varchar2_table(149) := '29740B0AF90B98FF2B4260581028BFE71FBB5597EB8F2549448044058CD46431B96DD59DE4637F0027B444A29F5EDEF3BC6A0A64D9FEAF1C5F46C5A55E5B992BE25259E8F967202173704870CAE4937997E2F927F3CEC3F34F96FF71FCFBE1F927750D14';
wwv_flow_imp.g_varchar2_table(150) := '6120F3120D046C4A0002C0A603E3DA6EF1976B229EA2445F8A64A194F4B9A36DCA97322FA622108ACBBCCA8F1D760AC4A6504B4C3527BED83B7BEA5C9A3375C1684DB7D5E74E5E384A672E9E52ED9357AA00F2DBBF1DC646167B9977F2230BBCEC348DA5';
wwv_flow_imp.g_varchar2_table(151) := 'C9DCF307BCE42DF6F04F91633675C6C2049FB50F010800FB8C85AB7B92E2372CD9164FF50F502A99D63C231F0D2811031E6FA1F22342C0C76F9BB9DCB6ED698B515F44FD18A0C8E3A15B57BF838A3CBED1986B9BCF2452FDF4CA9E97F8ED7940B54F651C';
wwv_flow_imp.g_varchar2_table(152) := 'FE575E5392B33E8B3F467F2F8BCE5E169C3CF7E4676CCBFE7F37A5907D1C64EE15B11090E38E221F0A1EE56CC0F1E0B70940006032E4944092DFF663A17EFE021E393CCCACCEC9E25F56E5A7D28A62922D68AB5B9C17FF108B00AD3663CA4C9A3F6D89D5';
wwv_flow_imp.g_varchar2_table(153) := '5DCBEAF30E9FE6D8FF960B9AF7AC1A1F504499D54D8E6062DD71E527DB0BBE9E2D72DC5156594CB2FB810602B9220001902BF22E7FAEBCF1C7BAFB28CE5BADB96CF2662642C0EAE301597CDA2FF4A816C61126E3F83F1B56DE4EA525F9E31C77ED58C67A';
wwv_flow_imp.g_varchar2_table(154) := 'A3B47DEF56FE23F5E555B6FDEBA655582AC286B7F965E14F6B446358312F653720C0F34F7607D040C06A021000561377F9F3D2A941EAED89F3767F32E75FBED70E45117F0197048B951D01AB9A1C01C85180561B5F339196CF5FC56AC0FA5D8AB1701067';
wwv_flow_imp.g_varchar2_table(155) := 'B97DC777516B578BE66D2AEACB486A0058D57A7BFAA92FDCAF1C33D9A58908F2F30E4829A7422E2CCA9F6816BBF0433F464F000260F4ECF0C90C0924F89CB5BB25AAEAFD9EE1ED4CB9DCC75BB255130396BC914A1040FB8590E62E801879C3BC9534B16E';
wwv_flow_imp.g_varchar2_table(156) := 'B229F69A75D34BCD8D74E8CC3ECDDB0FBDFD575AA26D64C7A5BB29AA3898DAB5C951941C87F84A712C60D731725ABF20009C36A236B547DE76C3FCB69BCDB3564F6191B250A707D969907FB2D5C4735BDE4CAD70D4EA0BF32E40BBF62E40414101ADBDE1';
wwv_flow_imp.g_varchar2_table(157) := '16AA28ABCA9689A6DEA7B3A783F61CDA411CB0A9FDF65FC76FFF41F3DFFEE5B849765AC4ABDFEE4DF6798216EF8AD89D09FA671E010800F3D8E2CE4C40A980D7C58E56A1F8A879D4061BA8B6B2812A03D514F0B3C398AF848A78F12F1857C84B8C2C3257';
wwv_flow_imp.g_varchar2_table(158) := '68F0CA20A5D249EAED8B51AC2F4A9DD1766AEF6EA1485FCFA89E2B4E8295F2365662EEDB98F0E991C4403ABE10459E22BA79F9462A29B6B73F406F7F9476EC7B85521A5EFF3220B2E55DC1A17F663B604A389FF01D54C9B9A03739A47FD515B554595A45';
wwv_flow_imp.g_varchar2_table(159) := '7EBF9F4AFC25E429F4F2FCE3D03EFE1918E4A8159E77C98104259209EA4FC429CABE0F6DDDCDCC60F4BB0D121911A8F69BCE47CF7EFCBDB3094000387B7C736A9D8453C99B579243FB3269C5DE12AAABA8A789F553A9A17A02951507F80BD7C70BBEF1F3';
wwv_flow_imp.g_varchar2_table(160) := '5111047DC91875473BA83DD4422DED4DD419EEE0DD02E37D916377E58BB88A43D44C3C829737D3CE8B61DDDD9192E212BAE9860DE4F35AE7A790C9B8259271DA71603BC5FBB5C59EA0AC991254F23398D65817CACE8A56A8A5DAB3E568A2A16E3CD5574D';
wwv_flow_imp.g_varchar2_table(161) := 'A0DA603D2FF8A313813DBD9DD4DCD144CD6D4D9448A8877CAAF5437207544D08703221E3F3DE349EB8B123094000387258736F942C6AE1F6DE8C167F1FC7BCCF9A328F664E9C4B3581F1598DD38F27FB5800B4D1DE936F5077B853D93130D264B1F2B393';
wwv_flow_imp.g_varchar2_table(162) := '5AB0B6D4D48C8291CE3E43BB24FE623FAD5ABC9677428246BA6FD935D1780FED3EF406BF01F7EB3ED3ECB87F71400C77F466BCF8FB7C5E9A35750E4DAC9E4A4545D90B4B94FE7445DBE8CCE593D4DDD5AD2BF4AE05283B25E53CF7EC90244977607141DE';
wwv_flow_imp.g_varchar2_table(163) := '118000C8BB21B37F87655BBBF352C4F099ABA7C043136BA7D2B2B96BA8A6BCCE5403C55FA0B1ED2CED3FB98B42B12EC3CF92E880604DA9A93B019D9723247911F49AA7B090562C5A4D357C346287D6DAD54C074EBCC5511DFA7E1812F75E33C9C44A87FC';
wwv_flow_imp.g_varchar2_table(164) := 'E61FEEECE548137D2132CCAE9079CE98328B664C98A56CEF9BD95ABB2FD389B3C7A837DE6BF831563AA61AEE142E7404010800470CA3BD8C08B1A7BFDE99F6708F27D44EA615736EE22DFFF19678830F3F5744CAE99663B4F7D89B24E7D67A4DCE82255B';
wwv_flow_imp.g_varchar2_table(165) := '9D996182839C86B6AB396A4838497F664F9F4BB326CECBD939B1BCD99EBA788CCE729A5F23CE9DB2E55F2D5BDA26166E9285B7E2351300002000494441545F7653D4EA2C5C3BCEE3F84869E6B419BCF0CF518E98AC6A838383D4D4D948A71A4F507FDC98';
wwv_flow_imp.g_varchar2_table(166) := '50919D00F1494103816C128000C8264DDC4BC9EA17E13730BD26496E56CCBD8916CF584EF20696AB265BD62FED7992DA7A9A75BB2067B1B280493A57B39A24A9E9607F00AD72C1D73EBB32584973A72DA4EA60AD595D1AF1BE5D3DED748273FCF7448C39';
wwv_flow_imp.g_varchar2_table(167) := '590ABB5A3EF737732B5B764FBA594019C9DF5FE4F1D2AA456BA8B2BCC6526ED73E2C3590A4BD9C2BA12BA45E25F1DAEBCB79074AB207A28140B6084000648B24EEA36CBBCAD9AB5E9337AFB50B37D0FCA94B72F6F67A6D1F251BDCB603CFD28596337A5D';
wwv_flow_imp.g_varchar2_table(168) := '270F57789385CCCC0A83A3C99730A1A1818B072DA4529F89DBEB4C27D61FA1E3E70E537B67BB2EABE10BAC886F17C1D4DE684C3805CACA69F5A29BA8D8EB376C836917F24ED4E133922EB9D1D023C417C5CC5D28439DC0458E210001E098A1CCAD218A27';
wwv_flow_imp.g_varchar2_table(169) := 'FB25F664D7D90B9637AF1B17DD4273262EB2C5E23F4C6D203D40AF1F7D89ABD69DD4053914C226C982742F1DF5051239D1C53E0146B6B2871F22698D27364CA6690D332950C242205B1DE4418DF4851581D4C41EED467727A45F4A181D9FF98B47BB594D';
wwv_flow_imp.g_varchar2_table(170) := '1849754523F5241AEA1A68E9AC95E4E1B04A3BB5C696B374F4CC61DDF19621AD996C7204859DC0A02FA61280003015AF3B6E2E5BAE3D7CEEDFCF257CB59AA7A09013DA6CA4B91316DB128C22028EBC48672EA997AE1DEE78A0BA44C9E16E66939D002918';
wwv_flow_imp.g_varchar2_table(171) := '94C9822BFD510A1D9595517D4D3DD554D65385BF9AFF2CB3631609970CC7BBA923D4466D9DADD41BEB35B4B57E2D0FD9F6AFE4A4366667B69368935E4EEFABD726D64FA2A5B3579ABA7BA3D707ADBF97DC017B8FECD2F5A728E6DC14957C1465760E85B1';
wwv_flow_imp.g_varchar2_table(172) := 'D882CFE607010880FC18275BF7D2C8D6BF9CF92F99B78256CDBAD9D6B62452717AF9C033FCA67B59B39FB2B8D54C2E578E04CC6CE21320E7DA63C96227E7EE35D5B59C4FA18CFCBE52DEFA6667C692522AF1962A8994E2095E40D92BBD9FE3F8E5F7D1FE';
wwv_flow_imp.g_varchar2_table(173) := '18757571CE047EF6689B38FC490CBB9967FED237291FDDC13B4F7AADAAAA8AD62CB8396321A477DF6CFFFDD9A6531C257054F7B6D513CB4D4F52A5DB095C90F7042000F27E08736B802C12B2553D90D20E019B39690E6D587A6746C97C726559B8B79B9E';
wwv_flow_imp.g_varchar2_table(174) := 'DFFD3867748B6876C18AD040E98044077473363B2321825A1D9637C6E15301F161184E30233B0CE2D12F4D8E7032397618E97912EA57C559FECCF4F61FEAACB1643F92C16FDDD28DB64DA0743DC3FD2776533327AED26A72A4523389734198780C95AB7F';
wwv_flow_imp.g_varchar2_table(175) := '7F78AE75042000AC63EDC82745D8E92FA613733DBE763CDDBEE2DDE4F3E48F07734BE8123DF7C6E39A3506E4BBB79ABF84BD7EF3CEB7AF9D3412DED6CB29958D84DCE562B2098F52CE9C28E19256B4645CFC24B433284AF6C875CB3750796985155DCACA';
wwv_flow_imp.g_varchar2_table(176) := '33AE7092AA370FBF4ADD3D21CDFB95716E0A4912840602A3250001305A72F89CB245DCD1D8A379362C6954EFDBF041AA28C98F4236C3C32A6FC1471AF7D2AE23AF6B8EB4D40A90ED58AB9A1C05481D7BA37916ACEA97384696B14F84A9E97DAF33A6AB29';
wwv_flow_imp.g_varchar2_table(177) := '42091DBF9305B317D1F4F1B3ADC290B5E7F42562B47DF756CD8C95E2EB513BB5C2F46396AC19851BD98E000480ED86247F3A64E4EC7FF9FCD5B46CC6DABC745812A7C027DEF809857AD463DD655B5D32DB99991BE0FA1921E2241E4952B4BB6F4CE7F4D9';
wwv_flow_imp.g_varchar2_table(178) := '986972C62FB512FCE55E4BC758CEFE2573A2D671453018A09B96DC9617C74E238DC5C98B87E9CC05EDD0548405666316BBF71E1000EE1DFB31592E6FFF21764E4B6A94589590BF0F6CFA38151759B3253C2683543E7CBEFD24BDBCE779CD85265759DAE4';
wwv_flow_imp.g_varchar2_table(179) := 'BC3E1E4D70B545EB8580B2F07324843FE0CB5AB46126E36724DBE4AA256B38C3E4844C6E6BAB6B07D229DAFAE60B24BFAA352F3B5B4A4480D9CE96B60283CE648D000440D650BAEB4652652DCC216A5AE7D1372DD9400BA62CCB6B305234E8B9DDBFA296';
wwv_flow_imp.g_varchar2_table(180) := '0EF54C81B2155B3FA3D2D237E06BA1CA5B707F344909CE84974AA449AA308ED591EFFA41939D0E8FB790B7F80B4972D31707AC7DE3FF6D7B89DACE756B1E3D555556D1DAC51BF27AEE49E7253FC091D38754ED10BF8B20875A9670C12A3410C894000440';
wwv_flow_imp.g_varchar2_table(181) := 'A6C470BD4240EF0D2C18ACA0FB6FFA301757B1C641CECC6169EABE402FBEF9149712568F74A89D52A12C8EB96E128D31C022407C04E47C5CF1EE678190A9E3A0E25C2E51032C6EC4CF4176393C6C9FD9618F46F889C8E9B8A89D82F896151BD9F1AFD2C8';
wwv_flow_imp.g_varchar2_table(182) := 'ED6C7D8DD40D78FDE0CB148DAAD7ABC8D50E94ADC1A1738608400018C2848B7E8B00AF26ADE7439A096A6E5E7E2BCD9BB0D411E06417E0C9D77FC1E584D5D3DF4A5220D912B75B4BB32048F6A787F208F0B8C982924EC94FFAED3768D9C128E47C068545';
wwv_flow_imp.g_varchar2_table(183) := '051C27CFB5E779F597455F048D1D6BD1EB25FEA90AD4D0DA65B7D86D2846DD9F96AE4BB4EFE85BAA9F97316A98CE62072181A366ECD60F4200B875E4C760B792A656D2FEAADCC3EBF1D1BB373C48417FFEBF810D9B78F0DC1EDA736C872A35D916AF1CCF';
wwv_flow_imp.g_varchar2_table(184) := 'B1EFFC656CC73694A259760394FF2A3B03C3C7044A7E001601436FFD43FF93AD2CC2D966A1F89E70D64999836A6DE1CC25346DE2CC6C3F3A67F793A2412FEE7C46F5F93264120D204734682090090108804C68E15A8580C4A3C7381E5DADD5574DA07B6E';
wwv_flow_imp.g_varchar2_table(185) := '7ABFA36875445A69CB9E673863DEC85BB1F2252CCE58C5A5E6D6937714D4511823F9FEC5F9544D7C8A00BB75C53BA8B8D8DC34CDA3E8FA983EB2F3C0AB148A74A9DE23C895024B5129704C8CDDF8610800378EFA186C1E4C5FE1D4B411CD37B065F356D3';
wwv_flow_imp.g_varchar2_table(186) := '8A59378DE129F6FBE820BF426FDDFF1435369F53ED9C92191089594C1D3CA93629E1A76AADBAAA9AD62CBC25670E9966197FEEF229AEC2A89E225832034A3E0A33AB549A651BEE9B3B021000B9639F974F96F36371C052ABB9EEF795D0A6559BA9A16272';
wwv_flow_imp.g_varchar2_table(187) := '5EDAA7D5E94317F6D0EE231AC700162705721C600306E925FF59307B2127FE9963E04EF97549AC2F4AAFEDE3C4405753365FDF7B2405CAAFF1B44B6F2100EC321279D20F09316BE7EC7F6AADA17A02DDB1EADEBC4AFB6B147D5BB8899E7AED51D5CB8BF8';
wwv_flow_imp.g_varchar2_table(188) := '0C56CE62D1CC23209927533C07D5DAFA55B751C0CF39F29DD678076AFBBE2D14EB8DA95A56073F00A78DBAE9F64000988ED8590F90D032790B536B73A72EA45B16DFE12CA3AF5AD3D3D745BFDEF653769E1BB94A9E84C8D54D83003073F0DB2FF468169E';
wwv_flow_imp.g_varchar2_table(189) := 'DABCEE3E76C474A63BBC5E912054083473E639F3DE1000CE1C57D3ACEAE7F8F26EF6C2566B8B66DE4037CEDF68DAF37379E3487F0F3DF6CACF48BCB2476A928DAD6E9A2404CA652F9DFB6C896468BF10524D7F5CC47527EE587BB763CFC18F9E3D48179A';
wwv_flow_imp.g_varchar2_table(190) := 'D47D50AAC6B3132AE76B400301A30420008C92C2750A013D01B07CDE1A5A3E6BAD2369F52622F4E2AEA7A82BD231A27DCA392C270492787AB4EC13D0F33F29F597D1C695B72B098C9CD84E5F3C4EA72E9C50350D02C089A36EAE4D1000E6F275DCDDA512';
wwv_flow_imp.g_varchar2_table(191) := '5D8473CFAB35F1C05E3C7D85E3EC1683E2C95EDA71681B5D681DB9408B84A0D54E0E42009834FA8A00E0FC1383E9918F602ACBABE8A6A5EB1D2B002E349DA1A3670FABD22DE744545291110D048C128000304A0AD72904F4B2B0DDB4E456CEFFEF8C0C80';
wwv_flow_imp.g_varchar2_table(192) := 'D70F79FF409C761F7D9D4E5D1A391CAB9005400D048069FF52440074B20048AB0880BAAA065AB5F046C70A80CBAD17E9E0A9BDAA7C4B831C865A576A1A7FDCD8790420009C37A6A65AD4C30580A410905A5BC70260BE43054022C502E0F84E9232AD2335';
wwv_flow_imp.g_varchar2_table(193) := '080053A79E92C2584B00D456D6D1EA459C7FC2A1470097DB58009C5417005210A8820B03A18180510210004649E13A8580246191642C6A6DCD223E0298E6CC2380FE541FBD7A600B5D6C1BD9110B4700E6FE23D13B0208062AE8E6651BB913CEF40138D7';
wwv_flow_imp.g_varchar2_table(194) := '749A8E9F3DA20A59925049322A3410304A0002C028295CA7109054ACDD9C8A55ADDD306705AD9CE39C422CD7DA196327C0A75F7F94622AE980150130857D00381A002DFB04A40E40C745751F009FCF47B7AFDEECD81D8013170ED3D98B23FB9F08ED2AA4';
wwv_flow_imp.g_varchar2_table(195) := 'A2CEFEA473F81D21001C3EC0D9364F2F0A60E1AC25B476DE6DD97EAC2DEED713EFA2DF6CFB1967631B3911CD50186085E3D2D0DA023E77428A17491E0011026A6DF3CDEF1EAA68E8C076F0F45B74B9E592AA65880270E0A09B6C120480C9809D767BBD44';
wwv_flow_imp.g_varchar2_table(196) := '403327CFA15B97DEE534B3157B3A636DF4F82B3F57B50D8980CC1F76BD44409B6EBC938ABDCEF484DF75E435EAECEE54858C4440E6CF3FA73D0102C069236AB23D292EC32AA1586A4D5201DF75E3035430CE796F612DA18BF4CC8EDFA8DA5EE4F3284700';
wwv_flow_imp.g_varchar2_table(197) := '68E6119023805442BD14F08D37ACA3EAF23AF33A90A33BCBEEC7D6DDCF52223172122AE99684A0167151203410304A0002C028295CA71010472CA905305C4BFE7A2CA5C5A5B469F5BBA8AE7CBCE3881DBB7880761E7A45D52E1F8A01993EE67AC580664F';
wwv_flow_imp.g_varchar2_table(198) := '9F4D73262F32BD1F563F20DCDB4D3BF7BFAA5A0C681C473E482D0024A1B27A64F2FB791000F93D7E96F7FE0A5723932FE124EF048CD4E48B68CDC29B6991C3220124FDEF2B879ED72C075C56E1A7F2DA12CBC7C44D0F8C74F451AC27AE6A72793040372F';
wwv_flow_imp.g_varchar2_table(199) := 'DEE4B874C0A72F7116C0F3EA5900510ED84DFF0AB2672B0440F658BAE64E7AA180F55513E89EB5EF7754345657B48D5EDAF30CC5FA462E842469802B1B02E42B2D72CD3CC885A189DE14855AA3EA65713912E39665B7525949792EBA67DA335FDBBB9522';
wwv_flow_imp.g_varchar2_table(200) := 'BDEA45B81002681A7A47DF1802C0D1C36B8E710389348763F13180CAED7D457E7AEFC60F5389CF3959C98E5DE2EDFF831ADBFFFE22AA1C5FC695E89CE7FB60CE2C1ADD5D250D70A8254689784AF5068BE62CA1A90D3347F7001B7E2A994CD04B6F3EABDA';
wwv_flow_imp.g_varchar2_table(201) := '33C97A2035283CBE421BF61E5DB2330108003B8F8E8DFBD6765EBD2A9B1C03DCBCEC369A3B61B18D2DC8AC6B2FBEF5385D6CBDA0FAA140550905AAEDE57D2E7E1A03C93497CF1DA4C1ABA1731242278E9C4A1BCE977355C98903D9700E83020E69F47051';
wwv_flow_imp.g_varchar2_table(202) := '238FB7D076618DD1AE3845BBD5EB51D4564946C075990DB08DAFBEDCD6C81900F7A9F650C6AC7E7AA58D2D40D7EC4A0002C0AE2363F37E855A63148FAAA704AEAF6EA0BBD77C8063B2F33F2B5B5BB8895ED8F90425D3EA1ED87649C2222573937D298AC7';
wwv_flow_imp.g_varchar2_table(203) := '1224219B5A31F346A6982C2EE2DCE82FF391977FB543965DBD645432E36E59791B054AF23F22437C6E5E3BB895A251F5E45BFE808F8F9F9002D8C87CC635BF4D00020033625404A41E80D405D06A9B56DE45D31BE68CEAFE76FAD0D6FD4FD379AEC4A6D6';
wwv_flow_imp.g_varchar2_table(204) := '64C743DEC00A0A732376649148C607942C8DC38BBE5A94C668B98A8DC362A0B8D44B5EBF27678E7683E92B243B505A36D654D5D29A45378FD65CDB7CAEB1E93C1D397B40B33F92FF5FEA00A08140A6042000322586EB150203A934853825708AB798D55A';
wwv_flow_imp.g_varchar2_table(205) := '795990DEBBFEA3545890BF67932DE18BF4EC6B8FB1BF839AC7035109BF8155E4E80D4C167ED90E9785DFCA26BB0272EC21422017AD8777A0FA3476A0A44FEB56ACA78AD2EA5C742F2BCF948C935BDF785E73E7A9888F682A3905B024A14203814C094000';
wwv_flow_imp.g_varchar2_table(206) := '644A0CD7BF4D20DAD5C78B8F7A48965C78CBD24D3477727EFA020CF27EFA73BB1FA5968E66D5519737E39A49E596276091E31789C6500BC7B46A9A4AF89914A0916D682B9BF831745E8E68EE02545556D1DAC51BACEC56569F75EEF2293A7E6EE4D2D3C3';
wwv_flow_imp.g_varchar2_table(207) := '0F0A54F9D9F704A1A75905EFA29B4100B868B0B36DAAEC02486A56ADE6F796D2E6B5F75155A036DB8F37FD7E7A897FA403FE322F7BFF074CEFCBF003C4A92FD2296FFC495EFC2C7BACE683C42FC057E2A520E74028B4F04D34D412655F0775BF0CE9F4B2';
wwv_flow_imp.g_varchar2_table(208) := 'F9AB6842ED247B80CAA01749CEF8F7F29E17283DA89EF5506E27B527F0F69F01585CFA5B0420003021C64420DCDE4BBDE17ECD7B4CA99F4EEB6FB8838A8BF2E74DA53DD2CC697F7F45690E3B536BE2E0582D6FFF9C02D8EC268B7D94177EAD243866F741';
wwv_flow_imp.g_varchar2_table(209) := 'EFFEB21B22F1E825416B760324257017EF020CB20F845AF31579E926CE0B50529C3F73EFCAE020BD756C17B577B76A222F0D1653B0CE39A1B67AF30B7F9F7D021000D967EAAA3BCA976F17D706D0F20510200B672CA5D5F3D6E7853F4038DECD497F9EA2';
wwv_flow_imp.g_varchar2_table(210) := '9E4848732CE5EC3FC80E58667BC68B27BF9C796BC5BE8F66D2C9822D2DDB0E83E22458515F6A7A4E041145617644D5F305282B0DD04D4BD653118B817C6847CE1CE08C93E735BB2A67FFD59CFBDF095136F930264EED2304805347D642BB6407407602F4';
wwv_flow_imp.g_varchar2_table(211) := 'DA4D4B36D2822937E85D96D3BFEF1F88D3F683CFD3A59646CD7E28C95738F7BAC4C99BD9E48C5FD86A15C0D17A7EB1B784EA2B1B6852DD340AB2435CB0A49202FE209578CBA8B090772E78114D7178633C19A3587F94C27DDD24590F9B3B2E51674F3BFF';
wwv_flow_imp.g_varchar2_table(212) := 'B97ABCBDD673655744DE4EC547C0CC2647221D529B42E721B535B5B472DE4DB62F157CA1E50C1D3D7D581799B0951D003410180B010880B1D0C3671502B20BD0AD511F60185301BF71DEB1E65E9A5C33DD96E40679EBF5F5235BE8D4C563BAFDB3C2F94A';
wwv_flow_imp.g_varchar2_table(213) := 'D2DE7635ABA77F55EB646971800BE22CA4290D336862D5149A109C41E5C599258AE9EE6BA3B6C825BADC7D8143204F932C4CB1FECCFB523DA1DCF4F4C8469C5185D584BA49B46CDE2ADDB1CDD505EDA1667AEBF02E5D3123A2AA6A6239DEFE7335500E7A';
wwv_flow_imp.g_varchar2_table(214) := '2E048083063397A6C836B5946A9554AD5A4DCA048B67F6FCC94B6D552B20994AD08EA35BE8ECE5D3BA18C5F14F62AFC79998E448BCFC25D952262DC0F9EFD72F7927AD9B7B27957939177EB6D212F0EB752C11A61DA75EA46D079EA1BE7EFDDD9E6BFB2D';
wwv_flow_imp.g_varchar2_table(215) := '496ACC8C12903C08929342CF2150FAD450DB404B67AF248FC75E351B2E349FA163678FF2718CCEBF1F4E352D25A787333666323F702D085C4F00020073226B04243950B83D66C83B7DF9BC35B478FA0A2A2ACCFDB96CB82FC4DBFE2F507B97B6D3958012';
wwv_flow_imp.g_varchar2_table(216) := '8F6BC9FA67E6D67F3F7BB6CBE26FF46C5E6A2EDCBCE476BA6DE17DCAD6BE99AD3711A1AD471EE7EC742F516240DBF973B81FE26B2022A0988593594D8E02BA392F8544A6E8B5F2F220AD9CBF86FC36A85521BB4E47CE1DA04BCDDA474E6293B86C04EB90';
wwv_flow_imp.g_varchar2_table(217) := 'F4476F7CF1F7C60940001867852B0D1088715E8008E70730D2664E9ACBE7B2EB28509C9BCA6D726EDCDA7D995EDEFB1CC513FA6FB5B290C9E22F4970CC6AB290B5F399B6D1B661E93BE91D373CC06FFC41CB72F68B30892642F4C49E4768CFF11D46BBAA';
wwv_flow_imp.g_varchar2_table(218) := 'D4AB3753384932241101468493A7B088562E5C43D515B90B4F955DA7DD877652B8D7D8789773BC7F19C7FDA38140B6084000648B24EEA310C8643B56AEAFAF184F2B17DCC48E6A13498E07AC6AF2E57BBAE938ED39F61A0D70C635BD26BBE9E535EC7855';
wwv_flow_imp.g_varchar2_table(219) := '699EE395BCBDF670A5BB2487B7E935F1A7B867DD07E9D679F7F259B0B98E886A7D9185F6F1B77E48AF1C78DED0A2EB65C740C99950C84586CC6A99085019D32913A7D1EC29F3482A585AD506AFA4A9A9A3914E9E3B4109AEF467A45971EC64A41FB8C659';
wwv_flow_imp.g_varchar2_table(220) := '0420009C359EB6B046FC00243E5B2F34F0DACE4E9F309B164C5B4A0D2C0486C3D3CC304612AB34B69FA5C3A7F75147B8CDF023CC8EB916E124896DFA0DA4F42DE473E08FBDE37374C3647B54BCDB756E2BFD62DBF73473260C835616B28680A9A19346D2';
wwv_flow_imp.g_varchar2_table(221) := '045F3BF0455E0F4D9F3C93EB56CC228FA9475257A8A5EB329D6A3C4EB198FE8ED3701F95903FCE378152D386FFB9E242830420000C82C2659911487309DA1EF607C83447FDF89A8974C3ECD52C0426653567407F32AE2CFC7B8FBF497D89CC9CEB24AE5D';
wwv_flow_imp.g_varchar2_table(222) := 'DE5CCD8CF7D72B713B4CBF968BDC3CB4E1D334B37651660362F2D5A7DA0FD24FB7FD3B85C2DAB913A41B666F65CBCE44887752A43852264D8E05664F9B43136BA792CF9BBD644622EE3AC2AD74F2C2318A44338BA490E3A60A3EF73773D7241346B8D659';
wwv_flow_imp.g_varchar2_table(223) := '0420009C359EB6B246444037BFD5661AC32E3B00A5A525D450338126D64CA1BAE0440E63AB32BC004B82982BC4CFEE6DA7961E0E65E398FE8E503B2593992D080253BCD7158FFF6C79D48F30424A04059FFB6B65B4938FD555D7D3876EFD0C4DAF9A6FAB';
wwv_flow_imp.g_varchar2_table(224) := '711EEECCD9CE23F4D357BE439DDD1D9AFD93E43592C2D6CC375A99034A64804EC1A0913A2A1EF615E59534BE7E3C5596D52A3E2AE3323A9EBA42FD89387546DA955C0A5D3D1D94E84F193A26B9B63F12EEA71C99707FD040C00C0210006650C53DDF2620';
wwv_flow_imp.g_varchar2_table(225) := '8B5AA4A397244260344DFC028ABDC514080428C85FCA65FE8092D6D5C7096E7C9E628E741B47693E53EDE78435F1441F87A8C5281CEBA1585F9462514EA033C039F37523AB47EE59256F55FB03E679AECB53E5EDB08B1DD79271ED6A7E92B4E77FDEFD25';
wwv_flow_imp.g_varchar2_table(226) := '5AD0B07234182DFBCCC1A61DF4C80BDF51B86BB5A1A3001156262A2BEE403C2A1115D151DB2FFDF397165365A08A4A4BCAF8A794A4BE4531FB0C147B4AB8525F8212A938274CE294D8FD3C07E3BD148E86281CD14E51ACD72129B014649F93AC8572EA3D';
wwv_flow_imp.g_varchar2_table(227) := '107FEF4A021000AE1C768B8DE6B731110091CE5EDDB75CBD9E29CB057F294B0CFED0EF65151D4A67AB14C7915FF56EA2F3F7F2E625E156453EF39DEB848BBCA96A357963FEE0A64FD29AE99BC66899351F7FEDCC33F4AB977FA4390E326C2200CCCC0F30';
wwv_flow_imp.g_varchar2_table(228) := '6C6D2A9156C253B351395104816C06BC2D5C94DDA62121978DB927632DCEA625E57C0461AE36B26632E029B626000160EBE17156E7C41F40D2DA1A89D5CE95E5B22095D770553B0BB65D45B0744906459DB7FF5B96DD4EEF5BF5C95C21C9F8B922C67EF9';
wwv_flow_imp.g_varchar2_table(229) := 'E67769C7E197353FEBF517513567B433791340E9831CB34815C5D11C09640C60941F901C1392E2D7CC30D351760D1F7328010800870EAC5DCD92C54142B562A1FE8CCF44CDB4493CEBCBB99CAD156FA4C376C4F9ED3FA4F3F63F67CA7CFAC4A63FCEAB4A';
wwv_flow_imp.g_varchar2_table(230) := '8A629F24B8F9C6D35FA1C6D6739AC356C9FE157E79DBB5A889008874F4198A58B0A84BCA6E421987974A8CBFD9472256D984E7E407010880FC1827C7F552DEC8FAB888506F4FFF988F05C6024712D3C876AB2CFC56BCF50FF755845027A74ED60A95942C';
wwv_flow_imp.g_varchar2_table(231) := '89BF7BD71768C1787B9FFBABF13FD2BC9B7EF0DC376920ADEEDF20216E359CDAD6CA854FE69E0801397E91C44BB96AB2DD2F67FD255CD4C7CAB9972B7BF15CFB118000B0DF98B8AA47B2FD1DE51D81241F0F8CF5EC3E1370F2C62F75EB73F5E52BC721B2';
wwv_flow_imp.g_varchar2_table(232) := 'FDAFD5D62C5A4F1F5CFB694E9064BE2F4226EC8C5E3BC879EDBFBFFD613A7C6ABFE647E4182017DBDEC322B42F9CB07447408EF6BD1CDE2705A5E418040D04724500022057E4F1DCDF2220A18292033F191F509CB58CA473CD14A1BC65F9F80B5772D2CB';
wwv_flow_imp.g_varchar2_table(233) := '17702E6BA98B2F849451566B455CACE6AB0F7E9B2A4A6A3235D356D73787CFD3377EF355F694578F02313BC9921E10895411012AF32FC182548441B69BEC708873A9D7EF51E69F944B4603815C138000C8F508E0F9BF4540B2080E70FE00D99A4D702217';
wwv_flow_imp.g_varchar2_table(234) := '11042206F462E4AFC738E4AD3D8E6BDE8F230F7FD9CA1BA67C014B42152BB79B471A5E71829444355AF911362DBF87EE5DF1919CF775ACD35376019E7AEBC7B475FFD3EA624749115CA6145ACA65937926B92B4480CA0ECD008BD2749AA34A5820642A48';
wwv_flow_imp.g_varchar2_table(235) := '455C4A9E0359E87D251E650E7A78EE9999FB2097ECF0ECFC240001909FE3E69A5E8B109030AEE132C3F2C59CBE5AF14D49F8C3FFF3FF4202C729A17B85BC90C817B07CF916F1A26F859779260322656B255DADDAA2E2F178F8EDFF5FA932CFDFFE8799B4';
wwv_flow_imp.g_varchar2_table(236) := '841BE91F7EF565D56D7611644A48A089D50233199FE16B657EA5580C885013012AF34EE6E270B89F080345685E0DD79379377C9421BB4D22380B2C8826198D6DF80C0808010800CC83BC23A02C9C4361D7438DBF80877302E4FAEDDE08CC30274612E747';
wwv_flow_imp.g_varchar2_table(237) := 'B5367DD22CFAC2E6BF734C1CB844047CFB853FA373974EABDAAC24BEA9E5C437366F6FCF3DE9E7D5F9A70800998376539A366789EEE59E000440EEC7003D7019810EF1FED7A8F877FFFA0F7195BFFB1C45E5D5934FD1AFB63FA26A93ECD6D47234001A08';
wwv_flow_imp.g_varchar2_table(238) := '808075042000AC638D27818072C6DCCE79FFD5B6FFA52CEDFFBAFF6B34A96286A36875F6B6D2DFFCFC0B24D518476AF2F65C37B502456F1C35EA30C6EE042000EC3E42E89FA30848F21F49FDAB16F238B9763A7DE9BE8739F4CF59056044F0FCCDA39FA3';
wwv_flow_imp.g_varchar2_table(239) := 'F69ED6910500FF69E5840049E545341000016B08400058C3194F0101E5AD5FCAFEC64271551AB72EBB8BEE5FF53B8EA4F5CB37FF0FBD7E688BAA0008700AE6B24ABF236D8751206047021000761C15F4C991041401C0F9E8631A0E800F6CF838AD9F7BB7';
wwv_flow_imp.g_varchar2_table(240) := '23ED7FF5241709DAFE23550120A970910ED791430FA36C4A0002C0A603836E398F80848D2935EA390C50AD7DE48ECFD0AAE91B9D673C5BB4E7FC36FAC996FF50F57F28299748801225AC130D0440C07C021000E633C61340402130C8496524FDAF5A0480';
wwv_flow_imp.g_varchar2_table(241) := 'E42EF8DD3BBF448B27AD7124B1C39777D1A3AFFE807A62DD23DA57CCC99A2AC70720001C39FA30CA8E042000EC382AE8932309480440E7A5B06A421C491EF3997BBE4AB36A1739D2FEC6EE53F4D397BF43ADDD4D23DA27F6D74C0EA2308E23471F46D991';
wwv_flow_imp.g_varchar2_table(242) := '0004801D47057D722401C96A2802402DADB1AFD84B9F79D79FD3B4AAB98EB4BF3711A1EFBEF037AA25826507440480546844030110309F000480F98CF104105008E80B8022FAD4DD7F4633AA173892587BAC891ED9FA4DBAD8766144FB20001C39EC30CA';
wwv_flow_imp.g_varchar2_table(243) := 'C60420006C3C38E89AB308489539E50840A5DA9C6C81FFDE5DFF9BE6372C7796E157AD39DD7E887EF1CAF7A8A3A70D47008E1C6118956F042000F26DC4D0DFBC25204E80DDCD11A5DADC484DDE803F72C76769C5D4F5796BA356C7F736BE4AFFB5EDFF52';
wwv_flow_imp.g_varchar2_table(244) := '7F72E43A08523CA76A423957CC4314802327008CB21D010800DB0D093AE45402120618E13C00BDE191174011000F6CF81DBA79F6664722D8CEF5001E7BEDC7AA3E10A5C1622AE76440080374E4F0C3281B128000B0E1A0A04BCE24602413E0BDEB1EA4DB';
wwv_flow_imp.g_varchar2_table(245) := '17BED791009E3DF4337AFECDC7546D932C80816A3FAAEA3972F461941D094000D87154D027471290F2C5920638D6D5A75A0BE0A6C5B7D2836B3FED48FB7FFCDA3769CFF11DAAB6C9DB3F52013B72E861944D094000D87460D02D67128847B91850AB5631';
wwv_flow_imp.g_varchar2_table(246) := 'A069F447F7FDA3525FDE494DC4CFC3BFF902B5745D1ED12CA90658C5C5807C9C0C080D0440C01A021000D670C65340402130904A53476358351DAEDF5B4A9FBFFF2F697C70AAA38875449BE96FFFEB8B5C0E383DA25DE2FF502BE5803912020D0440C01A';
wwv_flow_imp.g_varchar2_table(247) := '021000D670C65340E06D026DE742AAD900C7F1ABFFFD1B3E4C1BE7DEEB2862DB4E3C418FBDFA13559B0A0B0BA87E46A5A36C8631206024C86DAC00000C414944415477021000761F21F4CF7104427C042047016A6DDAC419F485BB1E768C33DC20BFF57F';
wwv_flow_imp.g_varchar2_table(248) := 'EBF93FA5F397CFAADA5C12F051454399E3C61A0681809D094000D87974D0374712E88BB01F005705546BB20DFED50FFC2B5595D639C2FE487F0FFDC5CF3EA99A0049CEFF65F1F797791D612F8C00817C210001902F23857E3A8680F801849AA394E2DA00';
wwv_flow_imp.g_varchar2_table(249) := '6AED9DABDF4D772DFD50DEEF0248E8E393FB7F445BDF7A56D5569F5FAA00967102209CFF3B6692C390BC2000019017C3844E3A8D40B8BD57352190D85A5454445F7EE0EFA93E3039AF4D6FEC3E49DF7DFA61EAED57DFF128ABE00440B5A5796D273A0F02';
wwv_flow_imp.g_varchar2_table(250) := 'F9480002201F470D7DCE7B0289BE1475354534EDB86DF9DD74EFF28F5041419E56C7E3D0BF9FEEF837DA756CBBA69DD513CB11FE97F7331A06E4230108807C1C35F439FF09F0E2D87681A301540A0389819EC222FAF4BD7F42B36A17E5A5BD475BDEA21F';
wwv_flow_imp.g_varchar2_table(251) := '3CF70D4A0D2455FB2FFE0EF5D3D8FBDF61790FF272C0D069D711800070DD90C360BB10E8EDE9A77047AF6677664E9E4BBF7FC79F91CF536C976E1BEA472A9DA46F3CF315BADC7A51F3FA206FFD97F211001A088080F5042000AC678E27828042401CE424';
wwv_flow_imp.g_varchar2_table(252) := '299038056AB55B576CA6FB96FF4EDE38040E5E19A45FEDF91EBD7E60ABA65D1E6F21D54E09E68D5D98B620E0340210004E1B51D8935704FA6349EA6E896AF6B9605C017DFCCECFD10D93D7E5856D072EEDE0ADFF6FEAF61567FFBA88700108984A0002C0';
wwv_flow_imp.g_varchar2_table(253) := '54BCB839086813905D80504B8CFA7BD5CFC9E50EBEA262FAE27BFE8653044FB135D28B5DA7E95F9FFC3A255223973C1EEEBC92F8A79E13FFE0ECDFD6E389CE399B000480B3C717D6E5018164FF00755E0AEBF6744AED0CFAD45D7F46A5BE80EEB5B9B820';
wwv_flow_imp.g_varchar2_table(254) := 'CA097FFEE5B13FA5AE68BBEEE36B2607C95BECD1BD0E1780000898470002C03CB6B833081826106167C0183B05EAB549D5D3E877DFF925AA2E6BD0BBD4D2BFEF8AB5D1779FFD3B6AEB69D27DAE94FC95D2BF68200002B9250001905BFE783A08BC4D20C4';
wwv_flow_imp.g_varchar2_table(255) := 'BE0071F609D06B7515E3E9239BFE80A654CD66073ABDABCDFFFB8B5D67E8072FFE3375473B751FE6E7ADFF4AE4FCD7E5840B40C00A0210005650C63340C00001F107E8BC14A1546240F76A2F87053EB8F113B46CDA3A2A2CC8CD56BA78FBBF756E3BFD7C';
wwv_flow_imp.g_varchar2_table(256) := 'DBF7B8CCAF7E9F8B7C1EAA995C0EAF7FDDD1C50520600D0108006B38E329206088C095C12BD4DED8A39920E8DA1B2D9EB59CEE5EF1419A503ECD3A873A4E62D4143E47CFECFD051D39BBDF905D92F0A76E6A058D2BB0C19685A11EE32210703E010800E7';
wwv_flow_imp.g_varchar2_table(257) := '8F312CCC33021211D0C3258307590C18695E8F8FD62C584FEB176E36BD76406BE422BD7AEC397AE3E82B944EEBBFF54BFF0B78D1976A7FC5A5A8F667643C710D0858450002C02AD2780E086440404480540C342601866E5C15A8A1758B37D1AA191BA9CC';
wwv_flow_imp.g_varchar2_table(258) := '1754520967A3A5D229EA4B46E8F593CF2B79FD7B6221C3B795F7FDCA09012CFE8689E14210B08E00048075ACF12410C888803804463BFB7433055E7FD3606905CD9DBC94164E5946D3EBE651B9BF92C3ED874AEDEA390D8A1F829C255CA1410AF775D1B9';
wwv_flow_imp.g_varchar2_table(259) := 'F61374F4E23E3AD37434A3855F9EE5292AA4007BFBFBCBF0E69FD1C0E36210B08800048045A0F11810180D8154224DE1F61849AE80D1B48271853463E26C16048BA932504BE5C51554E2E53772AF5FA92F200B7E62A09FFA937D14E3B7FCBE4494BA221D';
wwv_flow_imp.g_varchar2_table(260) := '74F2D2213AD7748A8540267B10FFAF8712E31FAC2BA3225F9E56321C0D6C7C0604F28C0004409E0D18BAEB3E02F2522E79027AC3FA7902B4E81479BCE4E18801492D3C8E4B0C7B0A397A806F3EC01EFC838369BA3238C8BF4F9314F2194B2B0D16533917';
wwv_flow_imp.g_varchar2_table(261) := 'F9D1DB6D18CB33F059100081B1138000183B43DC01042C2110E9E0B7F49EB825CF1AED43CA2A38C94F2D92FC8C961F3E070256128000B092369E0502632490E2A38068775CB776C0181F93F1C7C5C33F50E5A722A4F7CD981D3E0002B9220001902BF278';
wwv_flow_imp.g_varchar2_table(262) := '2E088C8180F804C8B1C0687D03C6F0E8DFFAA89CF5CB763FF2FA678B28EE0302D6118000B08E359E04025925207902E2D104F5851386B20766F3E192D5AF24E82349ED2B71FE68200002F947000220FFC60C3D0681FF4620194FB118482A4703E9814153';
wwv_flow_imp.g_varchar2_table(263) := '0849363FD9EAF707BCE4F56727C780291DC54D4100040C1180003084091781407E10184CB3277F6A90927D294AF04F3A95A681510A020F2FF8851CCBEF2B29222FFF788A0AA8A070289F001A088040FE138000C8FF31840520302201A92B3090E4B03E2E';
wwv_flow_imp.g_varchar2_table(264) := '2E24F904E4C8E04A9A53FCF0AF220C0639EC4F5A41C1D0422F5BF9E30A396510FF2AF1FBB2CDEFF116227F3FE6170838940004804307166681802E81E11C3F38C2D745850B40C0890420009C38AAB0090440000440000474084000608A80000880000880';
wwv_flow_imp.g_varchar2_table(265) := '800B094000B870D06132088000088000084000600E80000880000880800B094000B870D06132088000088000084000600E80000880000880800B094000B870D06132088000088000084000600E80000880000880800B094000B870D06132088000088000';
wwv_flow_imp.g_varchar2_table(266) := '084000600E80000880000880800B094000B870D06132088000088000084000600E80000880000880800B094000B870D0FFFF76EB98000000004158FFD60461119C1E8A4C80000102041C001B2040800001024301076058BAC80408102040C001B0010204';
wwv_flow_imp.g_varchar2_table(267) := '0810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C800001';
wwv_flow_imp.g_varchar2_table(268) := '02041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B204080000102430107';
wwv_flow_imp.g_varchar2_table(269) := '6058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102';
wwv_flow_imp.g_varchar2_table(270) := '040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C8000';
wwv_flow_imp.g_varchar2_table(271) := '0102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301';
wwv_flow_imp.g_varchar2_table(272) := '076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B001';
wwv_flow_imp.g_varchar2_table(273) := '02040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80';
wwv_flow_imp.g_varchar2_table(274) := '000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B20408000010243';
wwv_flow_imp.g_varchar2_table(275) := '01076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B0';
wwv_flow_imp.g_varchar2_table(276) := '0102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C';
wwv_flow_imp.g_varchar2_table(277) := '80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B204080000102';
wwv_flow_imp.g_varchar2_table(278) := '4301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC80408102040C001B00102040810203014700086A58B4C80000102041C001B2040800001024301076058BAC804081020402036';
wwv_flow_imp.g_varchar2_table(279) := '50213B03252A1F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(41412134355442655)
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
 p_id=>wwv_flow_imp.id(1417530354411401)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>39412288197140
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1419576806411400)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>39412288197155
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1421533428411400)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>39412288197172
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10511841015042646)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>39424880361422
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41117122098443060)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>39412004658706
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41117328576443057)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41117698282443057)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41117985078443056)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41118243600443056)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41118510990443056)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41118895036443056)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41119135844443056)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41119421278443055)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>39412004658709
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(41119780776443055)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>39412004658709
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(41413424125442654)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
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
prompt --application/shared_components/user_interface/lovs/nse_indices_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9788000950505466)
,p_lov_name=>'NSE_INDICES_LOV'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TRD_NSE_INDICES_MST'
,p_return_column_name=>'INDICES_ID'
,p_display_column_name=>'INDICES_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'INDICES_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39412788140991
);
end;
/
prompt --application/shared_components/user_interface/lovs/nse_symbol_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9901737532416162)
,p_lov_name=>'NSE_SYMBOL_LOV'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TRD_NSE_STOCK'
,p_return_column_name=>'SYMBOL'
,p_display_column_name=>'SYMBOL'
,p_default_sort_column_name=>'SYMBOL'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39412781475051
);
end;
/
prompt --application/shared_components/user_interface/lovs/remainder_operator_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9903255962398720)
,p_lov_name=>'REMAINDER_OPERATOR_LOV'
,p_lov_query=>'.'||wwv_flow_imp.id(9903255962398720)||'.'
,p_location=>'STATIC'
,p_version_scn=>39412781575430
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9903581652398719)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'>= (greater than equal to)'
,p_lov_return_value=>'>='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9903944700398718)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'<= (less than equal to)'
,p_lov_return_value=>'<='
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(41413778188442652)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11290315234156005)
,p_group_name=>'User Settings'
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
 p_id=>wwv_flow_imp.id(41120633834443050)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(23227073908616)
,p_short_name=>'Text Extraction'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(41120805633443049)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/drawer
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41121489669443037)
,p_theme_id=>42
,p_name=>'Drawer'
,p_internal_name=>'DRAWER'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Drawer-page t-PageTemplate--drawer #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Drawer" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Drawer-header">#REGION_POSITION_01#</div>',
'  <div class="t-Drawer-bodyWrapperOut">',
'    <div class="t-Drawer-bodyWrapperIn">',
'      <div class="t-Drawer-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Drawer-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Drawer-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1659739787629394056
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41121745227443030)
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41122097417443029)
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41122336957443029)
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41124354771443021)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41124671334443020)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41124919827443020)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41125267681443020)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41125504250443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41125871265443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41126103427443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41126442168443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41126777701443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41127098290443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41127317268443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41127684165443019)
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41128008628443018)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41128318470443018)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41128697997443018)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41128915388443018)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41129291469443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41129516211443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41129889188443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41130194456443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41130495207443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41130713827443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41131099558443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41131393523443017)
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41131739906443016)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41132010596443016)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41132304825443016)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41132618681443016)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41132924856443016)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41133270381443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41133543113443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41133832953443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41134137789443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41134403895443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41134738082443015)
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41135123957443015)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41135453361443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41135732640443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41136086947443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41136358749443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41136630902443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41136944990443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41137200413443014)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41137577767443013)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41137898813443013)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41138154749443013)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41138461592443013)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41138729404443013)
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41139153418443013)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41139449091443012)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41139776620443012)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41140017391443012)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41140329573443012)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41140635652443012)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41140938022443011)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41141276621443011)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41141576169443011)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41141886547443011)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41142135857443011)
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41142517709443011)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41142887939443010)
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41143185252443010)
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41143411088443010)
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41143758194443010)
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41145185181443009)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMEN'
||'T#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41145463331443009)
,p_page_template_id=>wwv_flow_imp.id(41145185181443009)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41145790125443009)
,p_page_template_id=>wwv_flow_imp.id(41145185181443009)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41146008513443009)
,p_page_template_id=>wwv_flow_imp.id(41145185181443009)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41146695411443009)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#'
||')'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41146991783443008)
,p_page_template_id=>wwv_flow_imp.id(41146695411443009)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41147225714443008)
,p_page_template_id=>wwv_flow_imp.id(41146695411443009)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41147581175443008)
,p_page_template_id=>wwv_flow_imp.id(41146695411443009)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(41148199781443008)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById(''t_PageBody'').classList.add('
||'''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41148465463443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41148734164443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41149035964443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41149362360443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41149699486443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41149911415443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41150217666443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41150585141443007)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41150894267443006)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41151122132443006)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41151405174443006)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41151738650443006)
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(41296499193442918)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel  t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidd'
||'en="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(41297136384442916)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(41297245917442916)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41152116663443005)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41152451470443002)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41152732312443001)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41153049954443001)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41153376456443001)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41153604726443001)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41153925838443001)
,p_plug_template_id=>wwv_flow_imp.id(41152116663443005)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41157371532442998)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41157610632442998)
,p_plug_template_id=>wwv_flow_imp.id(41157371532442998)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41157984729442998)
,p_plug_template_id=>wwv_flow_imp.id(41157371532442998)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41158278330442998)
,p_plug_template_id=>wwv_flow_imp.id(41157371532442998)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41158540721442998)
,p_plug_template_id=>wwv_flow_imp.id(41157371532442998)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41158710503442998)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41159047510442997)
,p_plug_template_id=>wwv_flow_imp.id(41158710503442998)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41159359842442997)
,p_plug_template_id=>wwv_flow_imp.id(41158710503442998)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41159687707442997)
,p_plug_template_id=>wwv_flow_imp.id(41158710503442998)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41159918734442997)
,p_plug_template_id=>wwv_flow_imp.id(41158710503442998)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41160128773442997)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'      #SUB_REGIONS#',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41160460790442997)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41160795683442997)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41161074747442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41161355907442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41161620947442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41161912810442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41162278084442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41162582639442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41162849569442996)
,p_plug_template_id=>wwv_flow_imp.id(41160128773442997)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41164492560442995)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41164738127442995)
,p_plug_template_id=>wwv_flow_imp.id(41164492560442995)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41165027922442995)
,p_plug_template_id=>wwv_flow_imp.id(41164492560442995)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41165398790442995)
,p_plug_template_id=>wwv_flow_imp.id(41164492560442995)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41166373786442994)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41166683491442994)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41166990975442994)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41167295385442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41167559010442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41167813862442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41168173625442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41168402790442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41168700255442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41169094620442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41169301751442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41169632984442993)
,p_plug_template_id=>wwv_flow_imp.id(41166373786442994)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41176289358442989)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY##SUB_REGIONS#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41176503019442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41176826772442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41177119606442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41177422150442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41177719700442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41178067475442989)
,p_plug_template_id=>wwv_flow_imp.id(41176289358442989)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/image
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41180857874442987)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41181116243442987)
,p_plug_template_id=>wwv_flow_imp.id(41180857874442987)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41181466996442987)
,p_plug_template_id=>wwv_flow_imp.id(41180857874442987)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41186295174442985)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1659526333647509386
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41186579982442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41186844667442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41187192274442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41187454112442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41187775455442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41188087653442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41188315264442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41188652871442984)
,p_plug_template_id=>wwv_flow_imp.id(41186295174442985)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41191007811442983)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41191328310442983)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41191676622442982)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41191918668442982)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41192203330442982)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41192512763442982)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41192866242442982)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41193194112442981)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41193420940442981)
,p_plug_template_id=>wwv_flow_imp.id(41191007811442983)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41196467796442980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'    <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'    #PREVIOUS#',
'    #BODY#',
'    #SUB_REGIONS#',
'    #NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41196730843442980)
,p_plug_template_id=>wwv_flow_imp.id(41196467796442980)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41197012874442980)
,p_plug_template_id=>wwv_flow_imp.id(41196467796442980)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41197395414442980)
,p_plug_template_id=>wwv_flow_imp.id(41196467796442980)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41197632330442980)
,p_plug_template_id=>wwv_flow_imp.id(41196467796442980)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41197917291442980)
,p_plug_template_id=>wwv_flow_imp.id(41196467796442980)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/item_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41198565289442979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ItemContainer #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ItemContainer-start">#BUTTON_START#</div>',
'  <div class="t-ItemContainer-item">#BODY#</div>',
'  <div class="t-ItemContainer-end">#BUTTON_END#</div>',
'</div>'))
,p_page_plug_template_name=>'Item Container'
,p_internal_name=>'ITEM_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1568547778806319863
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41198810428442979)
,p_plug_template_id=>wwv_flow_imp.id(41198565289442979)
,p_name=>'Item'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41199140787442979)
,p_plug_template_id=>wwv_flow_imp.id(41198565289442979)
,p_name=>'Button End'
,p_placeholder=>'BUTTON_END'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41199412993442978)
,p_plug_template_id=>wwv_flow_imp.id(41198565289442979)
,p_name=>'Button Start'
,p_placeholder=>'BUTTON_START'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41201054743442978)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    #REGION_IMAGE#',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <h2 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41201396632442977)
,p_plug_template_id=>wwv_flow_imp.id(41201054743442978)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41201652807442977)
,p_plug_template_id=>wwv_flow_imp.id(41201054743442978)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41201964951442977)
,p_plug_template_id=>wwv_flow_imp.id(41201054743442978)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41202267473442977)
,p_plug_template_id=>wwv_flow_imp.id(41201054743442978)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41202544078442977)
,p_plug_template_id=>wwv_flow_imp.id(41201054743442978)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_results_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41203537446442976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ResultsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ResultsRegion-search">#SEARCH_FIELD#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_page_plug_template_name=>'Search Results Container'
,p_internal_name=>'SEARCH_RESULTS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>11
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>1554292095258992441
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41203869662442976)
,p_plug_template_id=>wwv_flow_imp.id(41203537446442976)
,p_name=>'Search Results'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41204141533442976)
,p_plug_template_id=>wwv_flow_imp.id(41203537446442976)
,p_name=>'Search Field'
,p_placeholder=>'SEARCH_FIELD'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41204403460442976)
,p_plug_template_id=>wwv_flow_imp.id(41203537446442976)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41206219033442975)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41206501062442975)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41206823358442975)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41207165102442975)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41207410325442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41207799966442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41208003875442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41208363079442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41208661879442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41208907564442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41209274954442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41209504554442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41209877382442974)
,p_plug_template_id=>wwv_flow_imp.id(41206219033442975)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41216076260442971)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE!ATTR#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41216312882442971)
,p_plug_template_id=>wwv_flow_imp.id(41216076260442971)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41216629131442971)
,p_plug_template_id=>wwv_flow_imp.id(41216076260442971)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41218695269442970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41218917904442970)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41219210801442970)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41219513558442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41219802407442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41220160064442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41220489833442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41220712509442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41221015096442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41221335946442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41221646014442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41221990784442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41222298164442969)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41222515078442968)
,p_plug_template_id=>wwv_flow_imp.id(41218695269442970)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41223713995442968)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41224023826442968)
,p_plug_template_id=>wwv_flow_imp.id(41223713995442968)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41224347061442968)
,p_plug_template_id=>wwv_flow_imp.id(41223713995442968)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41224656165442968)
,p_plug_template_id=>wwv_flow_imp.id(41223713995442968)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41224901755442968)
,p_plug_template_id=>wwv_flow_imp.id(41223713995442968)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41225292839442967)
,p_plug_template_id=>wwv_flow_imp.id(41223713995442968)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41226210623442967)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# style="display:none" title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41226512485442967)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41226841694442967)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41227105629442967)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41227490365442966)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41227745819442966)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41228090789442966)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41228336449442966)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41228617818442966)
,p_plug_template_id=>wwv_flow_imp.id(41226210623442967)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41230603023442965)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false'' || region.contains(''is-collapsed'')); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41230921626442965)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41231287574442965)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41231557674442965)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41231837598442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41232160247442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41232481616442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41232730455442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41233083689442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41233372692442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41233613714442964)
,p_plug_template_id=>wwv_flow_imp.id(41230603023442965)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(41240431889442960)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-top">',
'    <div class="t-HeroRegion-wrap">',
'      <div class="t-HeroRegion-col t-HeroRegion-col--beforeIcon">#UP#</div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--left">#REGION_IMAGE#<span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'        #BODY#',
'      </div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'    </div>',
'  </div>',
'  <div class="t-HeroRegion-bottom">#SMART_FILTERS#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_image_template=>'<img class="t-HeroRegion-icon" src="#REGION_IMAGE_URL#" alt="" />'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41240738039442960)
,p_plug_template_id=>wwv_flow_imp.id(41240431889442960)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41241070411442960)
,p_plug_template_id=>wwv_flow_imp.id(41240431889442960)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41241309088442960)
,p_plug_template_id=>wwv_flow_imp.id(41240431889442960)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41241694172442960)
,p_plug_template_id=>wwv_flow_imp.id(41240431889442960)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(41241976650442960)
,p_plug_template_id=>wwv_flow_imp.id(41240431889442960)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dv_top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(9939619756285247)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'dv_Top Navigation Menu'
,p_internal_name=>'DV_TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Modify the top menu bar background color */',
'.t-Header-nav {',
'    background-color: #4A90E2; /* Set your desired background color */',
'}',
'',
'/* Modify the text color of the top menu items */',
'.t-Header-nav a,',
'.t-Header-nav .t-Header-logo a {',
'    color: #FFFFFF; /* Set your desired text color */',
'}',
'',
'/* Modify the hover color for top menu items */',
'.t-Header-nav a:hover,',
'.t-Header-nav a:focus {',
'    background-color: #357ABD; /* Set your desired hover background color */',
'    color: #FFFF00; /* Set your desired hover text color */',
'}',
'',
'/* Modify the active menu item color */',
'.t-Header-nav .is-active a {',
'    background-color: #255E91; /* Set your desired active item background color */',
'    color: #FFD700; /* Set your desired active item text color */',
'}',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul style="display: none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41268992159442941)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02# is-current" aria-current="page">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41272933776442936)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41278555717442933)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title" aria-current="page">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41281316944442931)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41282939093442930)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03# is-active" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41284525907442929)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41286145797442929)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41287193512442928)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41289161564442927)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" aria-current="step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>'<ul aria-label="#CURRENT_PROGRESS#" class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41290597457442926)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41291156377442926)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_a06_label=>'Link Target'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41291591263442925)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>'))
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'t-TreeNav--styleA:js-navCollapsed--hidden'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&"APP_TEXT$APEX.TEMPLATE.APPLICATION".">',
'  <div class="a-TreeView t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL".">',
'    <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </ul>',
'  </div>',
'</div>',
'<script>',
'(() => {',
'  const pref = "ORA_WWV_apex.toggleCore.nav.&APP_ID..preferenceForExpanded",',
'        nav  = document.getElementById(''t_TreeNav'').classList,',
'        body = document.getElementById(''t_PageBody'');',
'  if ( !sessionStorage.getItem( pref ) ) { sessionStorage.setItem( pref, !nav.contains(''js-defaultCollapsed'') ); }',
'  if ( nav.contains(''js-navCollapsed--default'') ) {',
'      body?.classList.add(''js-navCollapsed--icons'');',
'      if ( sessionStorage.getItem( pref ) === "false" ) { body?.classList.add(''js-navCollapsed''); }',
'  }',
'  if ( sessionStorage.getItem( pref ) === "true" && window.matchMedia("(min-width: " + getComputedStyle(document.documentElement).getPropertyValue("--js-mq-lg") + ")").matches) { body?.classList.add(''js-navExpanded''); }',
'  for (const label of document.querySelectorAll(".a-TreeView .a-TreeView-label")) {',
'      label.textContent = label.textContent.replaceAll(/\[(.*?)\]/ig, '''');',
'  }',
'})();',
'</script>'))
,p_before_sub_list=>'<ul style="display:none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" style="display: none" target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(41293313999442924)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul style="display: none">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41243909961442958)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41244145292442954)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-wrap u-color">',
'    <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'    <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41248189058442952)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'  <div class="t-Comments-icon">',
'    <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'  </div>',
'  <div class="t-Comments-body">',
'    <div class="t-Comments-info">',
'      #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'    </div>',
'    <div class="t-Comments-comment">',
'      #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41249521784442951)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41250539754442951)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ARIA_SORT# #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41253144445442949)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41255141317442948)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41256912655442947)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41257352412442947)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41262539916442944)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41262736270442944)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(41265909599442942)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </a>',
'</li>',
''))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41294334255442922)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41294465960442921)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41294514688442921)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41294675418442921)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41294738003442921)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41295483317442920)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT#</div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>',
''))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(41295978565442920)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemRequired-marker" aria-hidden="true"></div>',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(41298767739442915)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(41298930145442907)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(41298845953442913)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(41387109584442705)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(41386118736442711)
,p_default_page_template=>wwv_flow_imp.id(41131739906443016)
,p_default_dialog_template=>wwv_flow_imp.id(41145185181443009)
,p_error_template=>wwv_flow_imp.id(41142517709443011)
,p_printer_friendly_template=>wwv_flow_imp.id(41131739906443016)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(41142517709443011)
,p_default_button_template=>wwv_flow_imp.id(41297136384442916)
,p_default_region_template=>wwv_flow_imp.id(41206219033442975)
,p_default_chart_template=>wwv_flow_imp.id(41206219033442975)
,p_default_form_template=>wwv_flow_imp.id(41206219033442975)
,p_default_reportr_template=>wwv_flow_imp.id(41206219033442975)
,p_default_tabform_template=>wwv_flow_imp.id(41206219033442975)
,p_default_wizard_template=>wwv_flow_imp.id(41206219033442975)
,p_default_menur_template=>wwv_flow_imp.id(41218695269442970)
,p_default_listr_template=>wwv_flow_imp.id(41206219033442975)
,p_default_irr_template=>wwv_flow_imp.id(41196467796442980)
,p_default_report_template=>wwv_flow_imp.id(41250539754442951)
,p_default_label_template=>wwv_flow_imp.id(41294675418442921)
,p_default_menu_template=>wwv_flow_imp.id(41298767739442915)
,p_default_calendar_template=>wwv_flow_imp.id(41298845953442913)
,p_default_list_template=>wwv_flow_imp.id(41284525907442929)
,p_default_nav_list_template=>wwv_flow_imp.id(41293313999442924)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(41293313999442924)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(41291591263442925)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(41160128773442997)
,p_default_dialogr_template=>wwv_flow_imp.id(41157371532442998)
,p_default_option_label=>wwv_flow_imp.id(41294675418442921)
,p_default_required_label=>wwv_flow_imp.id(41295978565442920)
,p_default_navbar_list_template=>wwv_flow_imp.id(41291156377442926)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>65
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
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(11287230232194084)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-pillar--teal rw-layout--fixed t-PageBody--scrollTitle rw-mode-header--dark rw-mode-nav--dark rw-mode-body-header--dark rw-mode-body--light'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-pillar--teal","rw-layout--fixed t-PageBody--scrollTitle","rw-mode-header--dark","rw-mode-nav--dark","rw-mode-body-header--dark","rw-mode-body--light"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#11287230232194084.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(41386118736442711)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(41386308096442711)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(41386553126442711)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(41386730836442711)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(41386942686442711)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(11287636896194077)
,p_theme_id=>42
,p_file_name=>'11287230232194084.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41122611636443023)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41123655524443021)
,p_theme_id=>42
,p_name=>'PAGE_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the position of the page.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41144071148443010)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41144857076443010)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41154495648443000)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41154843919443000)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41155484085442999)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41155843060442999)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41163140882442996)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41163582670442996)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41169961561442992)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41170727775442992)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41171967644442991)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41173164309442991)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41173515602442991)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41175519326442989)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41178509239442988)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41179364326442988)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41180173776442987)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41181799544442987)
,p_theme_id=>42
,p_name=>'IMAGE_FILTER'
,p_display_name=>'Filter'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41183343867442986)
,p_theme_id=>42
,p_name=>'IMAGE_RATIO'
,p_display_name=>'Ratio'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41184595848442985)
,p_theme_id=>42
,p_name=>'IMAGE_SCALE'
,p_display_name=>'Scale'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41185565346442985)
,p_theme_id=>42
,p_name=>'IMAGE_SHAPE'
,p_display_name=>'Shape'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41188920728442984)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41190399111442983)
,p_theme_id=>42
,p_name=>'REGION_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41193736949442981)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41199762401442978)
,p_theme_id=>42
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'This sets the vertical alignment of the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41202804042442977)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41204945632442975)
,p_theme_id=>42
,p_name=>'ICON_SIZE'
,p_display_name=>'Icon Size'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_null_text=>'Initial'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41205787595442975)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE'
,p_display_name=>'Result Appearance'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41216981989442971)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41217317093442970)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41218163535442970)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41225523050442967)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41237751354442962)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41238124493442961)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41238979004442961)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41242271147442959)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41243062417442959)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41244473256442954)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41244867502442954)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41246866829442953)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41248446023442952)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41248873665442951)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41249895486442951)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41250232772442951)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41250864155442950)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41251415777442950)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41251877238442950)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41253419612442949)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41257895459442946)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41259637164442946)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41260412979442945)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41263046130442944)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41263403019442943)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41263830650442943)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41264217595442943)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41264634473442943)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41265004209442943)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41265622488442942)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41267656285442942)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41269221515442938)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41270483341442937)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41271664532442936)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41273495871442935)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41275453477442934)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41276081256442934)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41277430460442933)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41280282186442932)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41283280589442930)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41283804947442930)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41285619553442929)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41289463573442926)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41292261085442925)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41294999652442920)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41296673794442917)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41297819271442916)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41387329003442697)
,p_theme_id=>42
,p_name=>'SORT_ORDER_ALIGNMENT'
,p_display_name=>'Sort Order Alignment'
,p_display_sequence=>145
,p_template_types=>'REGION'
,p_help_text=>'Sets the alignment of the sort order item.'
,p_null_text=>'Default (Start)'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41388129014442697)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41388573085442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41389979128442696)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE'
,p_display_name=>'Display Text Style'
,p_display_sequence=>400
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for Display Only & Read Only display items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41390570104442696)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41390994558442695)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41391308472442695)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41391931074442695)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41392567207442695)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41392996745442694)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41393341966442694)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41393700727442694)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41394964572442693)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41396115171442693)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41396716054442693)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41397551517442692)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41397910184442692)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41398961063442692)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41399348317442692)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41399749529442691)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41400196982442691)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41400508167442691)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41401506286442691)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41402561137442690)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41403518183442690)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41404552814442689)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41405515355442689)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41406510636442688)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41407553527442688)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41408532072442687)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(41408951391442687)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(9940013263285239)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(9939619756285247)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(9940479370285236)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(9939619756285247)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(9940814776285236)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(9939619756285247)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(9941242487285236)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(9939619756285247)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41122894922443022)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(41122611636443023)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41123082048443021)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(41122611636443023)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41123260183443021)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(41122611636443023)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41123402146443021)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(41122611636443023)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41123813354443021)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(41123655524443021)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41124010094443021)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(41123655524443021)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41124256227443021)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41121489669443037)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41127969304443018)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41124354771443021)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41131600687443016)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41128008628443018)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41135054973443015)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41131739906443016)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41139017044443013)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41135123957443015)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41142472721443011)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41139153418443013)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41144212159443010)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(41144071148443010)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41144438347443010)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(41144071148443010)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41144626945443010)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(41144071148443010)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41145006201443009)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(41142517709443011)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(41144857076443010)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41146358155443009)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41145185181443009)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41146534392443009)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(41145185181443009)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41147811456443008)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(41146695411443009)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41148022408443008)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(41146695411443009)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41152083906443006)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(41148199781443008)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41154223900443000)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41154681413443000)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(41154495648443000)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41155066958442999)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(41154843919443000)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41155281056442999)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(41154843919443000)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41155608686442999)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(41155484085442999)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41156026850442999)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(41155843060442999)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41156225141442999)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(41154495648443000)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41156411647442999)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(41155484085442999)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41156615616442999)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(41154495648443000)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41156839081442998)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(41155484085442999)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41157089568442998)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(41154495648443000)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41157235911442998)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41152116663443005)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(41155843060442999)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41163329396442996)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41160128773442997)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41163743581442995)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(41160128773442997)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(41163582670442996)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41163937431442995)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(41160128773442997)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41164131233442995)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(41160128773442997)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(41163582670442996)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41164337295442995)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41160128773442997)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41165639696442995)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41164492560442995)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41165898340442995)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41164492560442995)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41166031308442994)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41164492560442995)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41166277094442994)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41164492560442995)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41170150174442992)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(41169961561442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41170358724442992)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(41169961561442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41170592627442992)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(41169961561442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41170984268442992)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41171168540442992)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41171370831442992)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41171523074442992)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(41169961561442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41171734066442992)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41172165769442991)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41172343489442991)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41172572508442991)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41172745649442991)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41172964021442991)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41173317505442991)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41173708512442991)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41173968796442990)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41174111216442990)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41174310256442990)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41174506646442990)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41174753689442990)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41174975051442990)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41175152116442990)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41175366350442990)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41175776624442989)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(41175519326442989)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41175979061442989)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(41175519326442989)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41176190819442989)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41166373786442994)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41178338957442988)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41178751165442988)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(41178509239442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41178916266442988)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(41178509239442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41179142989442988)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(41178509239442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41179568996442988)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(41179364326442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41179750908442988)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41179978065442988)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--hideHeader'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41180375788442987)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(41180173776442987)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41180554282442987)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(41180173776442987)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41180780010442987)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41176289358442989)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41181937213442987)
,p_theme_id=>42
,p_name=>'FILTER_BLUR'
,p_display_name=>'Blur'
,p_display_sequence=>430
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--blur'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41182188248442986)
,p_theme_id=>42
,p_name=>'FILTER_GRAYSCALE'
,p_display_name=>'Grayscale'
,p_display_sequence=>410
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--grayscale'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41182310685442986)
,p_theme_id=>42
,p_name=>'FILTER_INVERT'
,p_display_name=>'Invert'
,p_display_sequence=>440
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--invert'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41182592652442986)
,p_theme_id=>42
,p_name=>'FILTER_NONE'
,p_display_name=>'None'
,p_display_sequence=>400
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--noFilter'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41182773682442986)
,p_theme_id=>42
,p_name=>'FILTER_SATURATE'
,p_display_name=>'Saturate'
,p_display_sequence=>450
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--saturate'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41182908600442986)
,p_theme_id=>42
,p_name=>'FILTER_SEPIA'
,p_display_name=>'Sepia'
,p_display_sequence=>420
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--sepia'
,p_group_id=>wwv_flow_imp.id(41181799544442987)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41183108900442986)
,p_theme_id=>42
,p_name=>'IMAGE_STRETCH'
,p_display_name=>'Image Stretch'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--stretch'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41183500519442986)
,p_theme_id=>42
,p_name=>'RATIO_16_9'
,p_display_name=>'16:9 (Widescreen)'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--16x9'
,p_group_id=>wwv_flow_imp.id(41183343867442986)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41183785239442986)
,p_theme_id=>42
,p_name=>'RATIO_1_1'
,p_display_name=>'1:1 (Square)'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--1x1'
,p_group_id=>wwv_flow_imp.id(41183343867442986)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41183919933442986)
,p_theme_id=>42
,p_name=>'RATIO_2_1'
,p_display_name=>'2:1 (Univisium)'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--2x1'
,p_group_id=>wwv_flow_imp.id(41183343867442986)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41184122547442985)
,p_theme_id=>42
,p_name=>'RATIO_4_3'
,p_display_name=>'4:3 (Standard)'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--4x3'
,p_group_id=>wwv_flow_imp.id(41183343867442986)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41184328879442985)
,p_theme_id=>42
,p_name=>'RATIO_AUTO'
,p_display_name=>'Auto'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--auto'
,p_group_id=>wwv_flow_imp.id(41183343867442986)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41184749045442985)
,p_theme_id=>42
,p_name=>'SCALE_CONTAIN'
,p_display_name=>'Contain'
,p_display_sequence=>200
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--contain'
,p_group_id=>wwv_flow_imp.id(41184595848442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41184988785442985)
,p_theme_id=>42
,p_name=>'SCALE_COVER'
,p_display_name=>'Cover'
,p_display_sequence=>210
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--cover'
,p_group_id=>wwv_flow_imp.id(41184595848442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41185136998442985)
,p_theme_id=>42
,p_name=>'SCALE_DOWN'
,p_display_name=>'Scale Down'
,p_display_sequence=>230
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--scale-down'
,p_group_id=>wwv_flow_imp.id(41184595848442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41185365105442985)
,p_theme_id=>42
,p_name=>'SCALE_FILL'
,p_display_name=>'Fill'
,p_display_sequence=>220
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--fill'
,p_group_id=>wwv_flow_imp.id(41184595848442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41185715387442985)
,p_theme_id=>42
,p_name=>'SHAPE_CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>320
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--circle'
,p_group_id=>wwv_flow_imp.id(41185565346442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41185934211442985)
,p_theme_id=>42
,p_name=>'SHAPE_ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>310
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--rounded'
,p_group_id=>wwv_flow_imp.id(41185565346442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41186145897442985)
,p_theme_id=>42
,p_name=>'SHAPE_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>300
,p_region_template_id=>wwv_flow_imp.id(41180857874442987)
,p_css_classes=>'t-ImageRegion--square'
,p_group_id=>wwv_flow_imp.id(41185565346442985)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41189139901442983)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41189389971442983)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41189599420442983)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41189740919442983)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41189982850442983)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41190192731442983)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41190512669442983)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(41190399111442983)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41190760332442983)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(41190399111442983)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41190997503442983)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(41186295174442985)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41193922057442981)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(41193736949442981)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41194155079442981)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(41193736949442981)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41194300398442981)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41194509153442981)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(41193736949442981)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41194749538442981)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(41193736949442981)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41194992107442981)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41195173151442981)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(41193736949442981)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41195374933442981)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41195525465442981)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41195709500442980)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41195908211442980)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41196159369442980)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41196360775442980)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41191007811442983)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41198206085442979)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41196467796442980)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41198425892442979)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41196467796442980)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41199947687442978)
,p_theme_id=>42
,p_name=>'ALIGNMENT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--alignCenter'
,p_group_id=>wwv_flow_imp.id(41199762401442978)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41200159514442978)
,p_theme_id=>42
,p_name=>'ALIGNMENT_END'
,p_display_name=>'End'
,p_display_sequence=>12
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--alignEnd'
,p_group_id=>wwv_flow_imp.id(41199762401442978)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41200308875442978)
,p_theme_id=>42
,p_name=>'ALIGNMENT_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--alignStart'
,p_group_id=>wwv_flow_imp.id(41199762401442978)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41200526703442978)
,p_theme_id=>42
,p_name=>'ALIGNMENT_STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--alignStretch'
,p_group_id=>wwv_flow_imp.id(41199762401442978)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41200716412442978)
,p_theme_id=>42
,p_name=>'STACK_MOBILE'
,p_display_name=>'Stack on Mobile'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--stackMobile'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41200959235442978)
,p_theme_id=>42
,p_name=>'WRAP_ITEMS'
,p_display_name=>'Wrap Items'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(41198565289442979)
,p_css_classes=>'t-ItemContainer--wrap'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41203046898442977)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41201054743442978)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(41202804042442977)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41203261216442977)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41201054743442978)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(41202804042442977)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41203434309442976)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41201054743442978)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(41202804042442977)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41204772156442976)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within search results.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41205100260442975)
,p_theme_id=>42
,p_name=>'ICON_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'t-ResultsRegion--iconLg'
,p_group_id=>wwv_flow_imp.id(41204945632442975)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to large (64px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41205355190442975)
,p_theme_id=>42
,p_name=>'ICON_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'t-ResultsRegion--iconMd'
,p_group_id=>wwv_flow_imp.id(41204945632442975)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to medium (32px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41205500114442975)
,p_theme_id=>42
,p_name=>'ICON_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'t-ResultsRegion--iconSm'
,p_group_id=>wwv_flow_imp.id(41204945632442975)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to small (16px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41205964686442975)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_BOXED'
,p_display_name=>'Boxed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'t-ResultsRegion--boxed'
,p_group_id=>wwv_flow_imp.id(41205787595442975)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41206163521442975)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(41203537446442976)
,p_css_classes=>'t-ResultsRegion--flat'
,p_group_id=>wwv_flow_imp.id(41205787595442975)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41210140118442973)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41210390637442973)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41210555568442973)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41210730287442973)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41210953877442973)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41211170964442973)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41211344650442973)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41211562441442973)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41211708905442973)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41211947383442973)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41212187884442973)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41212374698442973)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41212581731442972)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41212754043442972)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41212990356442972)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41213169885442972)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41213326188442972)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41213590214442972)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41213769827442972)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41213951422442972)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41214184172442972)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41214328586442972)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(41173164309442991)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41214598780442972)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41214724457442972)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41214936909442971)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41215197420442971)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41215364266442971)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41215509852442971)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41215733855442971)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41215913777442971)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41206219033442975)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41217194644442970)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(41216981989442971)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41217539046442970)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(41217317093442970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41217780737442970)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41217999921442970)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(41217317093442970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41218377486442970)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(41218163535442970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41218580514442970)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41216076260442971)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(41218163535442970)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41222847195442968)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41218695269442970)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(41178509239442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41223045892442968)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41218695269442970)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(41179364326442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41223201474442968)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41218695269442970)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41223446559442968)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41218695269442970)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(41178509239442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41223632712442968)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41218695269442970)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41225764227442967)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41223713995442968)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(41225523050442967)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41225985932442967)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41223713995442968)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(41225523050442967)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41226127129442967)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41223713995442968)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41228944304442966)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41229128591442966)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41229313536442966)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41229552499442966)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41229741230442966)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41229986847442965)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41230139355442965)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41230311634442965)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41230541865442965)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41226210623442967)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(41188920728442984)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41233998687442964)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41234150614442963)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41234370109442963)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41234536317442963)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(41170727775442992)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41234732031442963)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41234970208442963)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41235143218442963)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41235391137442963)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41235522021442962)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41235725301442962)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41235970019442962)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41236115405442962)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41236311093442962)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41236558260442962)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41236748643442962)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41236943194442962)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41237165872442962)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41237394856442962)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41237577987442962)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(41171967644442991)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41237954228442962)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(41237751354442962)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41238397958442961)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(41238124493442961)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41238554436442961)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(41237751354442962)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41238767099442961)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41239177920442961)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(41238979004442961)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41239313941442961)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41239596180442961)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41239748232442960)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41239912135442960)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41240186795442960)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(41173515602442991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41240345873442960)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41230603023442965)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41242424672442959)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(41242271147442959)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41242669447442959)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41242843024442959)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(41179364326442988)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41243255313442959)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(41243062417442959)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41243492541442959)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41243062417442959)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41243662697442959)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41243855146442959)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(41240431889442960)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(41163140882442996)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41244684177442954)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(41244473256442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41245043686442954)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41245245350442953)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(41244473256442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41245419564442953)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41245683472442953)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(41244473256442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41245806881442953)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41246082305442953)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41246222746442953)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(41244473256442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41246435523442953)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(41244473256442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41246697801442953)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41247072335442953)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41247203976442952)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41247491128442952)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41247657745442952)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41247844490442952)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41248024104442952)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41244145292442954)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41248639985442951)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41248189058442952)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(41248446023442952)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41249031762442951)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41248189058442952)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41249234948442951)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41248189058442952)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41249497410442951)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41248189058442952)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(41248446023442952)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41250091509442951)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(41249521784442951)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(41249895486442951)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41250498860442951)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(41249521784442951)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(41250232772442951)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41251021759442950)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(41250864155442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41251216256442950)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(41250864155442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41251674612442950)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(41251415777442950)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41252060861442949)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(41251877238442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41252279627442949)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(41251877238442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41252469293442949)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(41251877238442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41252678378442949)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(41251415777442950)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41252819638442949)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41253072479442949)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41250539754442951)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(41251877238442950)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41253649256442949)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41253874031442949)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41254024438442948)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41254246281442948)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41254426547442948)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41254682519442948)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41254859473442948)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41255077547442948)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41253144445442949)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41255475084442948)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41255613801442948)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41255896730442947)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41256029921442947)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41256243904442947)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41256447918442947)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41256658263442947)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41256851916442947)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41255141317442948)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(41253419612442949)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41257295947442947)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(41256912655442947)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41257673313442946)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41258015354442946)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(41257895459442946)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41258290415442946)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41258424836442946)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(41257895459442946)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41258623642442946)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41258856000442946)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(41257895459442946)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41259002069442946)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41259234523442946)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41259459037442946)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41259848459442945)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(41259637164442946)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41260058854442945)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(41259637164442946)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41260284208442945)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41260603624442945)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(41260412979442945)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41260852372442945)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(41260412979442945)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41261092436442945)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41261224095442945)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41261435534442945)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41261667472442945)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(41257895459442946)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41261866775442944)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41262055495442944)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41262291118442944)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41262416316442944)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41257352412442947)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41263256638442944)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(41263046130442944)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41263605612442943)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(41263403019442943)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41264059482442943)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(41263830650442943)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41264463450442943)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(41264217595442943)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41264843545442943)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(41264634473442943)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41265202963442943)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(41265004209442943)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41265461033442943)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(41246866829442953)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41265875880442942)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41262736270442944)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(41265622488442942)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41266257086442942)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41266438802442942)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41266619388442942)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41266895870442942)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41267082719442942)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41267207035442942)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41267449484442942)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41248873665442951)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41267808853442942)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41267656285442942)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41268022559442942)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41268217250442941)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41268479201442941)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41268655429442941)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41268801846442941)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(41265909599442942)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(41244867502442954)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41269464405442938)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41269650357442938)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41269809709442938)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41270007463442937)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41270272103442937)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41270602383442937)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41270825393442937)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41271071127442937)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41271299216442936)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41271454438442936)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41271845610442936)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(41271664532442936)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41272033845442936)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(41271664532442936)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41272204861442936)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(41271664532442936)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41272435258442936)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41272629537442936)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(41271664532442936)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41272801632442936)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41268992159442941)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(41271664532442936)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41273217102442935)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41273673903442935)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(41273495871442935)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41273840647442935)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41274042009442935)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(41273495871442935)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41274281245442935)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41274423996442935)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(41273495871442935)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41274631655442935)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41274802049442935)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41275069180442934)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41275283303442934)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41275636637442934)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(41275453477442934)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41275836545442934)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41276289353442934)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(41276081256442934)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41276417179442934)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(41276081256442934)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41276643892442934)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41276822983442934)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41277063645442934)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41277299885442933)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(41273495871442935)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41277638490442933)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(41277430460442933)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41277807939442933)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41277430460442933)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41278004801442933)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(41275453477442934)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41278257886442933)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41278466709442933)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41272933776442936)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41278832846442933)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41279037396442932)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41279238466442932)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41279457967442932)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41279695112442932)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41279829890442932)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(41277430460442933)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41280013677442932)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(41277430460442933)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41280480808442932)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(41280282186442932)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41280671506442932)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41280858498442931)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41281068819442931)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41281201573442931)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41281650241442931)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(41276081256442934)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41281839456442931)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41282040138442931)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(41276081256442934)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41282235998442931)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(41280282186442932)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41282413155442930)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41282619709442930)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41282817199442930)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(41281316944442931)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(41280282186442932)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41283416500442930)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41282939093442930)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(41283280589442930)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41283607291442930)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41282939093442930)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(41283280589442930)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41284093743442930)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41282939093442930)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(41283804947442930)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41284260917442930)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41282939093442930)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(41283804947442930)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41284445940442929)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41282939093442930)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(41283804947442930)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41284832678442929)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41285095302442929)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41285292197442929)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41285462100442929)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41285816501442929)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(41285619553442929)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41286057112442929)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41284525907442929)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(41285619553442929)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41286410690442928)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41286145797442929)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41286658928442928)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41286145797442929)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41286870324442928)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41286145797442929)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41287065035442928)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41286145797442929)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41287413961442927)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41287676097442927)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41287828009442927)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41288084525442927)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41288275037442927)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41288442570442927)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41288693444442927)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41288862587442927)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41289059887442927)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(41287193512442928)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(41269221515442938)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41289639251442926)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41289161564442927)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(41289463573442926)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41289880167442926)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41289161564442927)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(41289463573442926)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41290097859442926)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41289161564442927)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(41289463573442926)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41290235459442926)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41289161564442927)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41290410222442926)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(41289161564442927)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41290881137442926)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41290597457442926)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41291065842442926)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41290597457442926)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41291404779442925)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41291156377442926)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41291896327442925)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41292059024442925)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41292436643442924)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(41292261085442925)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41292608978442924)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(41292261085442925)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41292849104442924)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41293077039442924)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41293260304442924)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(41291591263442925)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(41270483341442937)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41293606544442923)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41293313999442924)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41293849840442923)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41293313999442924)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41294042562442923)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(41293313999442924)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41294274496442923)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(41293313999442924)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41295170049442920)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(41294738003442921)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41295358578442920)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(41294738003442921)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41295605161442920)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(41295483317442920)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41295828995442920)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(41295483317442920)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41296175488442919)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(41295978565442920)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41296343714442919)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(41295978565442920)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(41294999652442920)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41296826197442917)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(41296499193442918)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(41296673794442917)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41297001812442916)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(41296499193442918)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(41296673794442917)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41297454727442916)
,p_theme_id=>42
,p_name=>'HIDE_ICON_ON_DESKTOP'
,p_display_name=>'Hide Icon on Desktop'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--desktopHideIcon'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button icon on large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41297643786442916)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41298030167442916)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(41297819271442916)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41298261472442916)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(41296673794442917)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41298480961442916)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(41297819271442916)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41298681681442916)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(41296673794442917)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41387595215442697)
,p_theme_id=>42
,p_name=>'SORT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>10
,p_css_classes=>'t-Region-orderBy--center'
,p_group_id=>wwv_flow_imp.id(41387329003442697)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41387759168442697)
,p_theme_id=>42
,p_name=>'SORT_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_css_classes=>'t-Region-orderBy--end'
,p_group_id=>wwv_flow_imp.id(41387329003442697)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41387942505442697)
,p_theme_id=>42
,p_name=>'DEFERRED_PAGE_RENDERING'
,p_display_name=>'Deferred Page Rendering'
,p_display_sequence=>1
,p_css_classes=>'t-DeferredRendering'
,p_template_types=>'PAGE'
,p_help_text=>'Defer page rendering until all page components have finished loading.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41388393694442696)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(41388129014442697)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41388789750442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41388972755442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41389117130442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41389356225442696)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41389563186442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41389791553442696)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(41388573085442696)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41390154371442696)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_BOLD'
,p_display_name=>'Bold'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--boldDisplay'
,p_group_id=>wwv_flow_imp.id(41389979128442696)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41390312699442696)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_NORMAL'
,p_display_name=>'Normal'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--normalDisplay'
,p_group_id=>wwv_flow_imp.id(41389979128442696)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41390735474442695)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(41390570104442696)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41391194880442695)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(41390994558442695)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41391565670442695)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(41391308472442695)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41391729118442695)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(41391308472442695)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41392153128442695)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(41391931074442695)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41392315977442695)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(41391931074442695)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41392781825442695)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(41392567207442695)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41393153032442694)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(41392996745442694)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41393597928442694)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(41393341966442694)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41393911574442694)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(41393700727442694)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41394174645442694)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(41393341966442694)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41394393094442694)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(41393341966442694)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41394537126442693)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(41390994558442695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41394708886442693)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(41392567207442695)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41395144539442693)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(41394964572442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41395358022442693)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(41392567207442695)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41395599372442693)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(41393341966442694)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41395768502442693)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(41390994558442695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41395916391442693)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(41394964572442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41396351634442693)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(41396115171442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41396583629442693)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(41396115171442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41396978308442693)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(41396716054442693)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41397135337442692)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(41396716054442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41397305912442692)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(41396716054442693)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41397743910442692)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(41397551517442692)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41398185455442692)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(41397910184442692)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41398310424442692)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(41397910184442692)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41398559663442692)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(41392996745442694)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41398766036442692)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(41392996745442694)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41399126745442692)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(41398961063442692)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41399583490442691)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(41399348317442692)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41399949886442691)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(41399749529442691)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41400321436442691)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(41400196982442691)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41400738596442691)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(41400508167442691)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41400953301442691)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(41400508167442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41401116258442691)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(41400508167442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41401380717442691)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(41400508167442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41401771913442691)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(41401506286442691)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41401947570442690)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(41401506286442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41402118662442690)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(41401506286442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41402374156442690)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(41401506286442691)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41402731221442690)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(41402561137442690)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41402980155442690)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(41402561137442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41403128668442690)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(41402561137442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41403358093442690)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(41402561137442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41403721485442690)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(41403518183442690)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41403916348442689)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(41403518183442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41404180942442689)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(41403518183442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41404376332442689)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(41403518183442690)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41404742740442689)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(41404552814442689)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41404907995442689)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(41404552814442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41405102405442689)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(41404552814442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41405334100442689)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(41404552814442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41405725324442689)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(41405515355442689)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41405983354442689)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(41405515355442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41406157827442688)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(41405515355442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41406357650442688)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(41405515355442689)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41406726432442688)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(41406510636442688)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41406904954442688)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(41406510636442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41407188006442688)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(41406510636442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41407365261442688)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(41406510636442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41407772057442688)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(41407553527442688)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41407992369442688)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(41407553527442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41408185658442687)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(41407553527442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41408303880442687)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(41407553527442688)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41408745358442687)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(41408532072442687)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41409102654442687)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(41408951391442687)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41409385378442687)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(41408951391442687)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(41409572668442687)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
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
 p_id=>wwv_flow_imp.id(11290440417155999)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39413417996411
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11290714868155997)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>39413417996411
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(41120021048443054)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>39412004658711
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
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(41120350409443052)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39412780356966
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_avatar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41299158402442900)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$AVATAR'
,p_display_name=>'Avatar'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$AVATAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Avatar is-placeholder{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Avatar{if ?TYPE/} t-Avatar--{if ?IMAGE/}image{else/}{if ?INITIALS/}initials{else/}icon{endif/}{endif/}{endif/}{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?ICON/} #IC'
||'ON#{else/} fa fa-user{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/} u-color" {if !IMAGE/}{if DESCRIPTION/} role="img" aria-label="#DESCRIPTION#" title="#DESCRIPTION#"{else/} role="presentation"{endif/}{endif/}>{if IMAGE/}<img src="#IMAGE#" alt="#DE'
||'SCRIPTION#"{if ?DESCRIPTION/} title="#DESCRIPTION#"{endif/} loading="lazy" />{else/}{if ?INITIALS/}#INITIALS#{endif/}{endif/}{if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564363394689414260
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display an image, icon, or initials. Available as a partial template to display a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41299474050442881)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'IMAGE'
,p_demo_value=>'IMAGE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41299744364442878)
,p_plugin_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41300137693442876)
,p_plugin_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41300523818442876)
,p_plugin_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41300956034442875)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_demo_value=>'#APEX_FILES#apex_ui/img/favicons/app-artwork-catalog.png'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41301277241442874)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>55
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41301587141442874)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41301819896442873)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41299474050442881)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41302126417442873)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41302484242442872)
,p_plugin_attribute_id=>wwv_flow_imp.id(41302126417442873)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41302873329442872)
,p_plugin_attribute_id=>wwv_flow_imp.id(41302126417442873)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41303298879442872)
,p_plugin_attribute_id=>wwv_flow_imp.id(41302126417442873)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41303601860442871)
,p_plugin_attribute_id=>wwv_flow_imp.id(41302126417442873)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41304037242442871)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41304392175442870)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41304745733442870)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41305130351442869)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41305573692442868)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41305972331442868)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41306343757442867)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41306747516442864)
,p_plugin_attribute_id=>wwv_flow_imp.id(41304037242442871)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41307187190442863)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter classes to add to this component. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1841349989722556647)
,p_plugin_id=>wwv_flow_imp.id(41299158402442900)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_is_quick_pick=>true
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41308278633442847)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Badge{if ?STATE/} t-Badge--#STATE#{endif/}{if ?STYLE/} #STYLE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}" role="status" aria-label="#LABEL!STRIPHTML# #VALUE#" '
||'title="#LABEL!STRIPHTML# #VALUE#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE#</span>',
'  {if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41308557514442845)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41308858364442844)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41309181294442844)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41309453572442843)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41309778279442843)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41310047330442842)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41310346860442842)
,p_plugin_attribute_id=>wwv_flow_imp.id(41310047330442842)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41310715566442841)
,p_plugin_attribute_id=>wwv_flow_imp.id(41310047330442842)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41311148072442841)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41311497304442840)
,p_plugin_attribute_id=>wwv_flow_imp.id(41311148072442841)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41311829787442840)
,p_plugin_attribute_id=>wwv_flow_imp.id(41311148072442841)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41312255054442839)
,p_plugin_attribute_id=>wwv_flow_imp.id(41311148072442841)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41312639805442839)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41312903500442838)
,p_plugin_attribute_id=>wwv_flow_imp.id(41312639805442839)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41313334622442838)
,p_plugin_attribute_id=>wwv_flow_imp.id(41312639805442839)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41313778991442837)
,p_plugin_attribute_id=>wwv_flow_imp.id(41312639805442839)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1552790535358545034)
,p_plugin_id=>wwv_flow_imp.id(41308278633442847)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41314358859442834)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BUTTON'
,p_display_name=>'Button'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BUTTON'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if MENU_ID/}<button type="button" data-menu="#MENU_ID#"{else/}<a href="#LINK_URL#" #LINK_ATTR#{endif/} class="t-Button{if IS_HOT/} t-Button--hot{endif/}{if IS_ICON_ONLY/} t-Button--noLabel t-Button--icon{else/}{if ICON_CLASSES/} t-Button--iconLeft{e'
||'ndif/}{endif/} #CSS_CLASSES#" title="#LABEL!STRIPHTML#" {if IS_DISABLED/} disabled{endif/}>',
'  {if ?ICON_CLASSES/}<span class="t-Icon t-Icon--left #ICON_CLASSES#" aria-hidden="true"></span>{endif/}<span class="t-Button-label">#LABEL#</span>',
'{if MENU_ID/}</button>{else/}</a>{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1568467215199837453
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41314657915442833)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41314904380442833)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LINK_URL'
,p_prompt=>'Link URL'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41315274878442832)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LINK_ATTR'
,p_prompt=>'Link Attribute'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41315579458442832)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON_CLASSES'
,p_prompt=>'Icon Classes'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41315844741442832)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41316151589442831)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'IS_DISABLED'
,p_prompt=>'Is Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41316481162442831)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IS_HOT'
,p_prompt=>'Is Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41316708035442831)
,p_plugin_id=>wwv_flow_imp.id(41314358859442834)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IS_ICON_ONLY'
,p_prompt=>'Is Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_comments
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41317091741442829)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$COMMENTS'
,p_display_name=>'Comments'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$COMMENTS'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR%assigned/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user is-placeholder"></span>',
'      </div>',
'      <div class="t-Comments-comment is-placeholder"></div>',
'    </div>',
'  </div>',
'{else/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-Comments-icon">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'          CSS_CLASSES:=u-color',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user">{if USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if USER_NAME_LINK/}</a>{endif/}</span>',
'        {if COMMENT_DATE/}<span class="t-Comments-date">#COMMENT_DATE#</span>{endif/}',
'        {if ACTIONS/}<span class="t-Comments-actions">#ACTIONS#</span>{endif/}',
'      </div>',
'      <div class="t-Comments-comment">',
'        #COMMENT_TEXT#',
'        {if ATTRIBUTES/}<div class="t-Comments-attributes">#ATTRIBUTES#</div>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Comments{if ?STYLE/} #STYLE#{endif/} {if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564386865908414285
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display user comments and status updates. Supports avatars. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1841202488793474542)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_title=>'Avatar'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41317518355442824)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COMMENT_TEXT'
,p_prompt=>'Comment Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. Nunc sed'
||' gravida urna. Fusce at ligula sed erat consequat pharetra.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing text for user comments.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41317882290442824)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Joel'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a comment.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41318154311442823)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'COMMENT_DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'5 minutes ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:DATE'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41318452957442823)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ATTRIBUTES'
,p_prompt=>'Attributes'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the comment attributes.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41318768528442822)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'initials'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41323346760442817)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41319070601442822)
,p_plugin_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41319400605442821)
,p_plugin_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41319860511442821)
,p_plugin_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41320204610442821)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41320574934442820)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41323346760442817)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41320831400442820)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'JK'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41321153884442820)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41318768528442822)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41321421001442819)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41323346760442817)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841202488793474542)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41321719881442819)
,p_plugin_attribute_id=>wwv_flow_imp.id(41321421001442819)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41322133546442818)
,p_plugin_attribute_id=>wwv_flow_imp.id(41321421001442819)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41322591673442818)
,p_plugin_attribute_id=>wwv_flow_imp.id(41321421001442819)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41322977480442818)
,p_plugin_attribute_id=>wwv_flow_imp.id(41321421001442819)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41323346760442817)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41323646581442817)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>45
,p_static_id=>'COMMENT_CLASS'
,p_prompt=>'Comment Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Allows you to pass a class onto individual comments. Example using is-active will highlight the specific comment with a different shade.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41323972832442816)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Comments--basic'
,p_demo_value=>'t-Comments--chat'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the style of the comments.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41324260022442816)
,p_plugin_attribute_id=>wwv_flow_imp.id(41323972832442816)
,p_display_sequence=>10
,p_display_value=>'Basic'
,p_return_value=>'t-Comments--basic'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41324626313442816)
,p_plugin_attribute_id=>wwv_flow_imp.id(41323972832442816)
,p_display_sequence=>20
,p_display_value=>'Chat (Speech Bubbles)'
,p_return_value=>'t-Comments--chat'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41325041058442815)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(1841335156226576045)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_name=>'Link'
,p_type=>'BUTTON'
,p_template=>'{if !IS_DISABLED/}<a {if CSS_CLASSES/}class="#CSS_CLASSES#"{endif/} href="#LINK_URL#" #LINK_ATTR#>#LABEL#</a>{endif/}'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1841334564721568588)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_name=>'Actions'
,p_static_id=>'ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1841390188391550467)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>20
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1841542406104421238)
,p_plugin_id=>wwv_flow_imp.id(41317091741442829)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41327378521442808)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK#" #FULL_ROW_LINK_ATTR#></a>{endif/}',
'  <div class="t-ContentRow-wrap">',
'    {if ?SELECTION%assigned/}<div class="t-ContentRow-selection">#SELECTION!RAW#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'          LINK:=#BADGE_LINK#',
'          LINK_ATTR:=#BADGE_LINK_ATTR#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE#{endif/}{if REMOVE_PADDING/} t-ContentRow--removePadding{endif/}{if HIDE_BORDERS/} t-ContentRow--hideBorders{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1968565145646514494)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1968564590634514493)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1711672526904240980)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_title=>'Appearance'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41328295215442798)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41328514326442798)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41328818769442797)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41329153026442797)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41329474875442797)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41329799780442796)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41330054013442796)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329474875442797)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41330381800442795)
,p_plugin_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41330787001442795)
,p_plugin_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41331127439442795)
,p_plugin_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41331519365442794)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41331829743442794)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329474875442797)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41332114512442793)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41332448085442793)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41330054013442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41332732784442792)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329474875442797)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41333092707442792)
,p_plugin_attribute_id=>wwv_flow_imp.id(41332732784442792)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41333420801442791)
,p_plugin_attribute_id=>wwv_flow_imp.id(41332732784442792)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41333831073442791)
,p_plugin_attribute_id=>wwv_flow_imp.id(41332732784442792)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41334280495442791)
,p_plugin_attribute_id=>wwv_flow_imp.id(41332732784442792)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41334648586442790)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41334903632442790)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41335236883442789)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41335515407442789)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41335828863442789)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41336155373442788)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41336432802442788)
,p_plugin_attribute_id=>wwv_flow_imp.id(41336155373442788)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41336826811442787)
,p_plugin_attribute_id=>wwv_flow_imp.id(41336155373442788)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41337241433442787)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41337509785442787)
,p_plugin_attribute_id=>wwv_flow_imp.id(41337241433442787)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41337902959442786)
,p_plugin_attribute_id=>wwv_flow_imp.id(41337241433442787)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41338377153442786)
,p_plugin_attribute_id=>wwv_flow_imp.id(41337241433442787)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41338756743442785)
,p_plugin_attribute_id=>wwv_flow_imp.id(41337241433442787)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41339140236442785)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329474875442797)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968565145646514494)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41339440277442785)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41339837593442784)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41340295776442784)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41340693987442784)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41341084796442783)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41341490105442783)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41341882809442783)
,p_plugin_attribute_id=>wwv_flow_imp.id(41339140236442785)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41342213004442782)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41342558617442782)
,p_plugin_attribute_id=>wwv_flow_imp.id(41342213004442782)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41342990175442781)
,p_plugin_attribute_id=>wwv_flow_imp.id(41342213004442782)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41343345901442781)
,p_plugin_attribute_id=>wwv_flow_imp.id(41342213004442782)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41343760476442780)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41344046791442780)
,p_plugin_attribute_id=>wwv_flow_imp.id(41343760476442780)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41344490739442780)
,p_plugin_attribute_id=>wwv_flow_imp.id(41343760476442780)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41344872851442779)
,p_plugin_attribute_id=>wwv_flow_imp.id(41343760476442780)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41345239298442779)
,p_plugin_attribute_id=>wwv_flow_imp.id(41343760476442780)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41345616803442778)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'BADGE_POS'
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Start'
,p_help_text=>'Positions the Badge column to either the "Start" or "End" of the row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41345991672442778)
,p_plugin_attribute_id=>wwv_flow_imp.id(41345616803442778)
,p_display_sequence=>10
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--posEnd'
,p_help_text=>'Positions the Badge column to the "end" of the row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41346380658442777)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'BADGE_ALIGNMENT'
,p_prompt=>'Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41329799780442796)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1968564590634514493)
,p_null_text=>'Start'
,p_help_text=>'Changes the alignment of the badge within its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41346671271442777)
,p_plugin_attribute_id=>wwv_flow_imp.id(41346380658442777)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'t-ContentRow-badge--alignCenter'
,p_help_text=>'Aligns the badge to the "center" of its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41347078127442776)
,p_plugin_attribute_id=>wwv_flow_imp.id(41346380658442777)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--alignEnd'
,p_help_text=>'Aligns the badge to the "end" of its column.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41347491505442776)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(1711672526904240980)
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41347707461442775)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>27
,p_display_sequence=>270
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1711672526904240980)
,p_null_text=>'Default'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41348060176442775)
,p_plugin_attribute_id=>wwv_flow_imp.id(41347707461442775)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-ContentRow--styleCompact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41348444733442774)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>28
,p_display_sequence=>280
,p_static_id=>'HIDE_BORDERS'
,p_prompt=>'Hide Borders'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(1711672526904240980)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41348787122442774)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>30
,p_display_sequence=>300
,p_static_id=>'REMOVE_PADDING'
,p_prompt=>'Remove Padding'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(1711672526904240980)
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(1849779035862336108)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(1849780295382340256)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1552827520966577678)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Badge Link'
,p_static_id=>'BADGE_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1836185407187929375)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1836864707918012479)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1849777100795291122)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1849778434185304979)
,p_plugin_id=>wwv_flow_imp.id(41327378521442808)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_media_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41354077717442761)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$MEDIA_LIST'
,p_display_name=>'Media List'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$MEDIA_LIST'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-MediaList-itemWrap">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE%assigned/}<div class="t-MediaList-title is-placeholder"></div>{endif/}',
'      {if ?DESCRIPTION%assigned/}<div class="t-MediaList-desc is-placeholder"></div>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE%assigned/}',
'      {with/}',
'        LABEL:=',
'        VALUE:=',
'        SHAPE:=#BADGE_SHAPE#',
'        STYLE:=#BADGE_STYLE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  </div>',
'{else/}',
'  {if LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<div{endif/} class="t-MediaList-itemWrap{if ?DESCRIPTION/} t-MediaList-itemWrap--showDesc{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          CSS_CLASSES:=u-color',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE/}<h3 class="t-MediaList-title">#TITLE#</h3>{endif/}',
'      {if ?DESCRIPTION/}<p class="t-MediaList-desc">#DESCRIPTION#</p>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE/}',
'      {with/}',
'        LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'        LABEL:=#BADGE_LABEL#',
'        VALUE:=#BADGE_VALUE#',
'        ICON:=#BADGE_ICON#',
'        STATE:=#BADGE_STATE#',
'        SIZE:=t-Badge--md',
'        STYLE:=#BADGE_STYLE#',
'        SHAPE:=#BADGE_SHAPE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  {if LINK/}</a>{else/}</div>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-MediaList t-MediaList--showIcons{if ?LAYOUT/} #LAYOUT!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-MediaList-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564403634518414297
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display report content in a formatted media list. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1841372478223326407)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(1841371923211326406)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41354728856442757)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41355032358442756)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41355398189442756)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41355656969442756)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41355973052442755)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355398189442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41356211211442755)
,p_plugin_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41356675010442754)
,p_plugin_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41357035107442754)
,p_plugin_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41357496510442754)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41357782287442753)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355398189442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41358037414442753)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41358345642442753)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355973052442755)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41358632874442752)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355398189442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841372478223326407)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41358950830442752)
,p_plugin_attribute_id=>wwv_flow_imp.id(41358632874442752)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41359343834442751)
,p_plugin_attribute_id=>wwv_flow_imp.id(41358632874442752)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41359787521442751)
,p_plugin_attribute_id=>wwv_flow_imp.id(41358632874442752)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41360151543442751)
,p_plugin_attribute_id=>wwv_flow_imp.id(41358632874442752)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41360504135442750)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41360869150442750)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41361169799442750)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41361495055442749)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41361729536442749)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41362095684442749)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41362322141442748)
,p_plugin_attribute_id=>wwv_flow_imp.id(41362095684442749)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41362757769442748)
,p_plugin_attribute_id=>wwv_flow_imp.id(41362095684442749)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41363186202442748)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41355656969442756)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(1841371923211326406)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41363466755442747)
,p_plugin_attribute_id=>wwv_flow_imp.id(41363186202442748)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41363819466442747)
,p_plugin_attribute_id=>wwv_flow_imp.id(41363186202442748)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41364266011442747)
,p_plugin_attribute_id=>wwv_flow_imp.id(41363186202442748)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41364607212442746)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the number of grid columns the media list content will display in. Horizontal Span will display all columns in a single horizontal row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41364958637442746)
,p_plugin_attribute_id=>wwv_flow_imp.id(41364607212442746)
,p_display_sequence=>10
,p_display_value=>'2 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--2cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41365364610442746)
,p_plugin_attribute_id=>wwv_flow_imp.id(41364607212442746)
,p_display_sequence=>20
,p_display_value=>'3 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--3cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41365738795442745)
,p_plugin_attribute_id=>wwv_flow_imp.id(41364607212442746)
,p_display_sequence=>30
,p_display_value=>'4 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--4cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41366110012442745)
,p_plugin_attribute_id=>wwv_flow_imp.id(41364607212442746)
,p_display_sequence=>40
,p_display_value=>'5 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--5cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41366595810442745)
,p_plugin_attribute_id=>wwv_flow_imp.id(41364607212442746)
,p_display_sequence=>50
,p_display_value=>'Horizontal Span'
,p_return_value=>'t-MediaList--horizontal'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41366984945442744)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of media list items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41367260140442744)
,p_plugin_attribute_id=>wwv_flow_imp.id(41366984945442744)
,p_display_sequence=>10
,p_display_value=>'Large'
,p_return_value=>'t-MediaList--large force-fa-lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41367617280442744)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1841575530380473035)
,p_plugin_id=>wwv_flow_imp.id(41354077717442761)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_timeline
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41370725467442737)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$TIMELINE'
,p_display_name=>'Timeline'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$TIMELINE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div{if ?CSS_CLASSES/} class="#CSS_CLASSES#"{endif/}>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      {if DISPLAY_AVATAR/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      {endif/}',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">{if ?USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if ?USER_NAME_LINK/}</a>{endif/}</span>',
'        <span class="t-Timeline-date">#DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      {if DISPLAY_BADGE/}',
'        <div class="t-Timeline-typeWrap">',
'          {with/}',
'            LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'            LABEL:=#BADGE_LABEL#',
'            VALUE:=#BADGE_VALUE#',
'            ICON:=#BADGE_ICON#',
'            STATE:=#BADGE_STATE#',
'          {apply THEME$BADGE/}',
'        </div>',
'      {endif/}',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>',
'        {if ?DESCRIPTION/}<p class="t-Timeline-desc">#DESCRIPTION#</p>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline{if ?STYLE/} #STYLE#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>'<li class="t-Timeline-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1601817836543095628
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display a series of events. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(2188454216103549686)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(2188453661091549685)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41371442910442733)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'User'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a timeline event.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41371720123442733)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'1 hour ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41372073085442733)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41372377918442732)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41372698762442732)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41372925322442732)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41373294093442731)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372698762442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41373532862442731)
,p_plugin_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41373984510442731)
,p_plugin_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41374386521442730)
,p_plugin_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41374762010442730)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41375041866442729)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372698762442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41375322492442729)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41375695667442729)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41373294093442731)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41375976379442728)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372698762442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(2188454216103549686)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41376299633442728)
,p_plugin_attribute_id=>wwv_flow_imp.id(41375976379442728)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41376609423442727)
,p_plugin_attribute_id=>wwv_flow_imp.id(41375976379442728)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41377052677442727)
,p_plugin_attribute_id=>wwv_flow_imp.id(41375976379442728)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41377462041442727)
,p_plugin_attribute_id=>wwv_flow_imp.id(41375976379442728)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41377899425442726)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41378131077442726)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Closed'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41378403917442725)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'is-removed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41378729756442724)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_demo_value=>'fa-check-circle-o'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41379078947442724)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41379361444442724)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41379639888442723)
,p_plugin_attribute_id=>wwv_flow_imp.id(41379361444442724)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41380052637442723)
,p_plugin_attribute_id=>wwv_flow_imp.id(41379361444442724)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41380417600442723)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(41372925322442732)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(2188453661091549685)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41380734217442722)
,p_plugin_attribute_id=>wwv_flow_imp.id(41380417600442723)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41381143309442722)
,p_plugin_attribute_id=>wwv_flow_imp.id(41380417600442723)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41381591187442721)
,p_plugin_attribute_id=>wwv_flow_imp.id(41380417600442723)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41381915056442721)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the style of timeline items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(41382231428442720)
,p_plugin_attribute_id=>wwv_flow_imp.id(41381915056442721)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-Timeline--compact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(41382634759442720)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1836223561289758272)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>25
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(1950634924278021873)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>15
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(2069666171252326314)
,p_plugin_id=>wwv_flow_imp.id(41370725467442737)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(34284420859124992960)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.BADGE_LIST'
,p_display_name=>'Badge List'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.BADGE_LIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.badgelist/2.0/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_badgelist(''||',
'            apex_javascript.add_value(p_region.static_id)||',
'            ''{''||',
'                -- why is this attribute needed if is not used?',
'                apex_javascript.add_attribute(',
'                    ''pageItems'', ',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)',
'                )||',
'                apex_javascript.add_attribute(',
'                    ''ajaxIdentifier'', ',
'                    apex_plugin.get_ajax_identifier, ',
'                    false, ',
'                    false',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'--    CSS for Big Value List',
'--    apex_css.add_file (',
'--        p_name      => ''com_oracle_apex_badge_list'',',
'--        p_directory => p_plugin.file_prefix );',
'    -- Start the list',
'',
'',
'    -- It''s time to emit the selected rows',
'',
'',
'    return null;',
'',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_region_ajax_result ',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_top_label_column    constant varchar2(255) := p_region.attribute_09;',
'    c_value_column        constant varchar2(255) := p_region.attribute_02;',
'    c_bottom_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_percent_column      constant varchar2(255) := p_region.attribute_03;',
'    c_link_target         constant varchar2(255) := p_region.attribute_04;',
'    ',
'    c_layout            constant varchar2(1)   := p_region.attribute_05;',
'    c_chart_size        constant varchar2(3)   := p_region.attribute_06;',
'    c_chart_type        constant varchar2(3)   := p_region.attribute_07;',
'    c_colored           constant varchar2(1)   := p_region.attribute_08;',
'',
'    l_bottom_label_column_no pls_integer;',
'    l_top_label_column_no    pls_integer;',
'    l_value_column_no        pls_integer;',
'    l_percent_column_no      pls_integer;',
'    l_column_value_list      apex_plugin_util.t_column_value_list2;',
'    ',
'    l_top_label      varchar2(4000);',
'    l_value             varchar2(4000);',
'    l_bottom_label      varchar2(4000);',
'    l_percent           number;',
'    l_url               varchar2(4000);',
'    l_class             varchar2(255);',
'',
'begin',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'        -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_top_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Top Label'',',
'      p_column_alias      => c_top_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'',
'    l_value_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Value'',',
'                               p_column_alias      => c_value_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_bottom_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Bottom Label'',',
'      p_column_alias      => c_bottom_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'                                      ',
'    l_percent_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Percent'',',
'                             p_column_alias      => c_percent_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'    ',
'    -- begin output as json',
'    owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close;',
' --   l_message_when_no_data_found := apex_escape.html_whitelist(',
'  --      apex_plugin_util.replace_substitutions (',
'   --             p_value  => c_message_when_no_data_found,',
'   --             p_escape => false',
'    --        )',
'    --    );',
'    apex_json.open_object();',
'    apex_json.write(''layout'', c_layout); ',
'    apex_json.write(''chart_size'', c_chart_size); ',
'    apex_json.write(''chart_type'', c_chart_type); ',
'    apex_json.write(''colored'', c_colored); ',
'    apex_json.open_array(''data'');',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_json.open_object(); ',
'            -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'            -- can do substitutions for columns contained in the region source query.',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            if l_top_label_column_no is not null',
'            then',
'              -- get the top label',
'              l_top_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_top_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_top_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''topLabel'', l_top_label); ',
'            end if;',
'            ',
'            -- get the value',
'            l_value := apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_value_column_no).data_type,',
'                               p_value     => l_column_value_list(l_value_column_no).value_list(l_row_num) );',
'',
'            apex_json.write(''value'', l_value); ',
'',
'            if l_bottom_label_column_no is not null',
'            then',
'              -- get the bottom label',
'              l_bottom_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_bottom_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_bottom_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''bottomLabel'', l_bottom_label); ',
'            end if;',
'',
'            -- get percent',
'            if l_percent_column_no is not null then',
'                l_percent := l_column_value_list(l_percent_column_no).value_list(l_row_num).number_value;',
'                apex_json.    write(''percent'', l_percent); ',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := apex_util.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'                apex_json.    write(''url'', l_url);                ',
'            end if;',
'            ',
'            apex_json.close_object();        ',
'',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_all();',
'    ',
'    return null;',
'exception when others then',
'    htp.p(''error: ''||apex_escape.html(sqlerrm));',
'    return null;',
'end ajax;',
'',
'',
''))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_version_scn=>39412829015041
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Badge lists are useful for displaying a region with a small number of counts for important statistics. For example, in Bug Tracker, this plug-in is used to show the total bugs, open bugs, open high priority bugs, and open critical severity bugs.</'
||'p>',
'<p>This plug-in is suitable for adding to the Home page to show important summary information.</p>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141906038286513880)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>25
,p_static_id=>'attribute_01'
,p_prompt=>'Bottom Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the badges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141906417985513880)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the badges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141906809491513880)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Percent'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(33141914406129513888)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'PERCENT'
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141907241362513881)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a badge entry.</p>'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141907668231513881)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'attribute_05'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the layout to determine how the badge list is displayed.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141908538147513882)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141909009888513882)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141909523313513882)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141910071389513883)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141910535885513883)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141911032072513885)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141907978733513881)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141907668231513881)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141911503601513886)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_static_id=>'attribute_06'
,p_prompt=>'Badge Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(33141914406129513888)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141911884506513886)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141911503601513886)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141912394940513886)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141911503601513886)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141912955523513887)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141911503601513886)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141913406485513887)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141911503601513886)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141913918948513887)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141911503601513886)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141914406129513888)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>1
,p_static_id=>'attribute_07'
,p_prompt=>'Badge Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BOX'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the shape of the badges to display.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141914789407513888)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141914406129513888)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'BOX'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141915780481513889)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141914406129513888)
,p_display_sequence=>15
,p_display_value=>'Default with Percent'
,p_return_value=>'PERCENT'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141915331857513888)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141914406129513888)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141916341010513889)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'attribute_08'
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select if the badges should be displayed in different colors, or without colors.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141916702470513889)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141916341010513889)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(33141917182906513890)
,p_plugin_attribute_id=>wwv_flow_imp.id(33141916341010513889)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(33141917748739513890)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>10
,p_static_id=>'attribute_09'
,p_prompt=>'Top Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(33141919279934513892)
,p_plugin_id=>wwv_flow_imp.id(34284420859124992960)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>2
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'select ''Open''               as label,',
'       to_char(320,''9G990'') as value,',
'       13                   as percent',
'  from dual',
' union all',
'select ''Closed''             as label,',
'       to_char(87,''9G990'')  as value,',
'       70                   as percent',
'  from dual',
'</pre>'))
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
,p_step_title=>'AI Demo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Text Extraction'
,p_alias=>'TEXT-EXTRACTION'
,p_step_title=>'Text Extraction'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19044351577900)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT jt.text',
'    FROM ',
'    JSON_TABLE(',
'        :P2_RESPONSE, ''$.pages[*].words[*]'' ',
'        COLUMNS (text VARCHAR2(4000) PATH ''$.text'')',
'    ) jt'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19456890577904)
,p_query_column_id=>1
,p_column_alias=>'TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Extracted Text'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22731238908618)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(41218695269442970)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(41120633834443050)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(41298767739442915)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66985976537268325)
,p_plug_name=>'Text Extraction'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21645943908620)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66985976537268325)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37585016904516)
,p_name=>'P2_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66985976537268325)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66991744607268263)
,p_name=>'P2_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66985976537268325)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66992690882268272)
,p_name=>'P2_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66985976537268325)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37466999904515)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P2_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P2_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13034945978437745
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23598482908614)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13021077461441844
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(906362605147990)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(23598482908614)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage_1'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'UPLOAD_FILE_TO_OBJECT_STORAGE'
,p_process_when_button_id=>wwv_flow_imp.id(21645943908620)
,p_internal_uid=>8779074891422018
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907190646147999)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P2_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907294000148000)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907400950148001)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907584158148002)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907649647148003)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907705700148004)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907849154148005)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(907906086148006)
,p_page_process_id=>wwv_flow_imp.id(906362605147990)
,p_page_id=>2
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33041761904471)
,p_process_sequence=>40
,p_parent_process_id=>wwv_flow_imp.id(23598482908614)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Text Reading API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(12660989933081)
,p_web_src_operation_id=>wwv_flow_imp.id(14031062933078)
,p_attribute_01=>'WEB_SOURCE'
,p_process_when_button_id=>wwv_flow_imp.id(21645943908620)
,p_internal_uid=>13030520740437701
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(33791669904478)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(14479584933078)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(33870600904479)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(14992934933077)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(34007177904480)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(16011928933077)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'STATIC'
,p_value=>'TEXT_EXTRACTION'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(34108042904481)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(16451836933077)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(34186874904482)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(16978944933077)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'ITEM'
,p_value=>'P2_FILENAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(34291073904483)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(17510318933076)
,p_page_process_id=>wwv_flow_imp.id(33041761904471)
,p_value_type=>'ITEM'
,p_value=>'P2_RESPONSE'
,p_ignore_output=>false
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Key Value Extraction'
,p_alias=>'KEY-VALUE-EXTRACTION'
,p_step_title=>'Key Value Extraction'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7957006936253455)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       regexp_replace(FIELD_LABEL, ''([A-Z])'', '' \1'' ) FIELD_LABEL,',
'       LABEL_SCORE,',
'       case when FIELD_LABEL like ''%Date%'' then TO_CHAR(to_timestamp(FIELD_VALUE, ''YYYY-MM-DD"T"HH24:MI:SS.FF3"Z"''), ''DD-MON-YYYY'')',
'       else FIELD_VALUE',
'       end as FIELD_VALUE',
'from DOCAI_RESPONSE where FIELD_VALUE <> ''#''',
'order by ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71051031401468)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69839879401472)
,p_query_column_id=>2
,p_column_alias=>'FIELD_LABEL'
,p_column_display_sequence=>30
,p_column_heading=>'Field Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70229108401471)
,p_query_column_id=>3
,p_column_alias=>'LABEL_SCORE'
,p_column_display_sequence=>60
,p_column_heading=>'Label Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70686161401470)
,p_query_column_id=>4
,p_column_alias=>'FIELD_VALUE'
,p_column_display_sequence=>50
,p_column_heading=>'Field Value'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19858994578869876)
,p_name=>'New'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        1,',
'        FIELD_TYPE_CODE,',
'        FIELD_LABEL,',
'        LABEL_SCORE,',
'        FIELD_VALUE',
'    FROM',
'            JSON_TABLE ( :P3_RESPONSE, ''$.pages[*]''',
'                COLUMNS (',
'                    PAGE_NUMBER NUMBER PATH ''$.pageNumber'',',
'                    NESTED PATH ''$.documentFields[*]''',
'                        COLUMNS (',
'                            FIELD_TYPE_CODE VARCHAR2 ( 50 ) PATH ''$.fieldType'',',
'                            FIELD_LABEL VARCHAR2 ( 100 ) PATH ''$.fieldLabel.name'',',
'                            LABEL_SCORE NUMBER PATH ''$.fieldLabel.confidence'',',
'                            FIELD_VALUE VARCHAR2 ( 1000 ) PATH ''$.fieldValue.value''',
'                        )',
'                )',
'            )',
'        JT',
'    WHERE',
'        JT.FIELD_TYPE_CODE = ''KEY_VALUE'';'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65714843401503)
,p_query_column_id=>1
,p_column_alias=>'1'
,p_column_display_sequence=>10
,p_column_heading=>'1'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66128556401502)
,p_query_column_id=>2
,p_column_alias=>'FIELD_TYPE_CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Field Type Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66491172401496)
,p_query_column_id=>3
,p_column_alias=>'FIELD_LABEL'
,p_column_display_sequence=>30
,p_column_heading=>'Field Label'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66973829401495)
,p_query_column_id=>4
,p_column_alias=>'LABEL_SCORE'
,p_column_display_sequence=>40
,p_column_heading=>'Label Score'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(67330454401493)
,p_query_column_id=>5
,p_column_alias=>'FIELD_VALUE'
,p_column_display_sequence=>50
,p_column_heading=>'Field Value'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61907686736502003)
,p_plug_name=>'Key Value Extraction'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68141132401484)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61907686736502003)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8058283103488034)
,p_name=>'P3_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61907686736502003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61913432544501924)
,p_name=>'P3_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61907686736502003)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61914378819501933)
,p_name=>'P3_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61907686736502003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71627886401458)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P3_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P3_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7944340172675486
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72031469401456)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7944743755675484
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1168712913365150)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(72031469401456)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'UPLOAD_FILE_TO_OBJECT_STORAGE'
,p_process_when_button_id=>wwv_flow_imp.id(68141132401484)
,p_internal_uid=>9041425199639178
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1169161258365145)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P3_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1169659207365143)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1170134934365142)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1170655874365140)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1171175367365138)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1171657857365137)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1172115020365135)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1172610114365133)
,p_page_process_id=>wwv_flow_imp.id(1168712913365150)
,p_page_id=>3
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76876343401438)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(72031469401456)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Document Reading API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_attribute_01=>'WEB_SOURCE'
,p_process_when_button_id=>wwv_flow_imp.id(68141132401484)
,p_internal_uid=>7949588629675466
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(77302170401435)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12037805801606845)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(77831419401434)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12038385017606844)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(78294569401432)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12039306827606844)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'STATIC'
,p_value=>'KEY_VALUE_EXTRACTION'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(78849825401430)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12039804551606843)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(79329934401428)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12040376343606843)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'ITEM'
,p_value=>'P3_FILENAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(79835461401426)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(12040827327606843)
,p_page_process_id=>wwv_flow_imp.id(76876343401438)
,p_value_type=>'ITEM'
,p_value=>'P3_RESPONSE'
,p_ignore_output=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(80276446401425)
,p_process_sequence=>40
,p_parent_process_id=>wwv_flow_imp.id(72031469401456)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parse Response'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE FROM DOCAI_RESPONSE;',
'',
'INSERT INTO DOCAI_RESPONSE(',
'    FIELD_TYPE_CODE,',
'    FIELD_LABEL,',
'    LABEL_SCORE,',
'    FIELD_VALUE',
')',
'    SELECT',
'        FIELD_TYPE_CODE,',
'        FIELD_LABEL,',
'        LABEL_SCORE,',
'        FIELD_VALUE',
'    FROM',
'            JSON_TABLE ( :P3_RESPONSE, ''$.pages[*]''',
'                COLUMNS (',
'                    PAGE_NUMBER NUMBER PATH ''$.pageNumber'',',
'                    NESTED PATH ''$.documentFields[*]''',
'                        COLUMNS (',
'                            FIELD_TYPE_CODE VARCHAR2 ( 50 ) PATH ''$.fieldType'',',
'                            FIELD_LABEL VARCHAR2 ( 100 ) PATH ''$.fieldLabel.name'',',
'                            LABEL_SCORE NUMBER PATH ''$.fieldLabel.confidence'',',
'                            FIELD_VALUE VARCHAR2 ( 1000 ) PATH ''$.fieldValue.value''',
'                        )',
'                )',
'            )',
'        JT',
'    WHERE',
'        JT.FIELD_TYPE_CODE = ''KEY_VALUE'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(68141132401484)
,p_process_success_message=>'Processed'
,p_internal_uid=>7952988732675453
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Table  Extraction'
,p_alias=>'TABLE-EXTRACTION1'
,p_step_title=>'Table  Extraction'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132484625204301)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT jh.h_cell_text,',
'    jb.b_cell_text',
'FROM ',
'    JSON_TABLE(',
'		:P4_RESPONSE,''$.pages[0].tables[0].headerRows[0].cells[*]''',
'		COLUMNS (',
'			h_cell_text VARCHAR2(4000) PATH ''$.text'',',
'			h_col_index NUMBER PATH ''$.columnIndex''',
'		)',
'	) jh,',
'    JSON_TABLE(',
'		:P4_RESPONSE, ''$.pages[0].tables[0].bodyRows[*].cells[*]''',
'		COLUMNS (',
'			b_cell_text VARCHAR2(4000) PATH ''$.text'',',
'			b_col_index NUMBER PATH ''$.columnIndex''',
'		)',
'    ) jb',
'WHERE jh.h_col_index = jb.b_col_index',
'ORDER BY jh.h_col_index'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(134366999204320)
,p_query_column_id=>1
,p_column_alias=>'H_CELL_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Columns'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(134462555204321)
,p_query_column_id=>2
,p_column_alias=>'B_CELL_TEXT'
,p_column_display_sequence=>20
,p_column_heading=>'Rows'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61924758805497709)
,p_plug_name=>'Table  Extraction'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85225239397209)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61924758805497709)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8075402813483760)
,p_name=>'P4_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61924758805497709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61930552254497650)
,p_name=>'P4_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61924758805497709)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61931498529497659)
,p_name=>'P4_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61924758805497709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88692387397195)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P4_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P4_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7961404673671223
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(89093575397194)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7961805861671222
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1173342064363395)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(89093575397194)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'UPLOAD_FILE_TO_OBJECT_STORAGE'
,p_process_when_button_id=>wwv_flow_imp.id(85225239397209)
,p_internal_uid=>9046054350637423
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1173731708363392)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P4_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1174278725363390)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1174767667363388)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1175242324363387)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1175732538363385)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1176190872363382)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1176743567363380)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1177221501363378)
,p_page_process_id=>wwv_flow_imp.id(1173342064363395)
,p_page_id=>4
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93986665397179)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(89093575397194)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Document Reading API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(12036020381606854)
,p_web_src_operation_id=>wwv_flow_imp.id(12037448854606846)
,p_attribute_01=>'WEB_SOURCE'
,p_process_when_button_id=>wwv_flow_imp.id(85225239397209)
,p_internal_uid=>7966698951671207
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(94437130397177)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12037805801606845)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(94901577397175)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12038385017606844)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(95429346397172)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12039306827606844)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'STATIC'
,p_value=>'TABLE_EXTRACTION'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(95915920397170)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12039804551606843)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(96398980397169)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12040376343606843)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'ITEM'
,p_value=>'P4_FILENAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(96890031397167)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(12040827327606843)
,p_page_process_id=>wwv_flow_imp.id(93986665397179)
,p_value_type=>'ITEM'
,p_value=>'P4_RESPONSE'
,p_ignore_output=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(97291750397166)
,p_process_sequence=>40
,p_parent_process_id=>wwv_flow_imp.id(89093575397194)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parse Response'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM AI_TABLE_EXTRACT;',
'    ',
'    INSERT INTO AI_TABLE_EXTRACT (source, json_data)',
'    VALUES (''DocumentAI Form'', :P4_RESPONSE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(85225239397209)
,p_process_success_message=>'Processed'
,p_internal_uid=>7970004036671194
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'OCI Document Understanding'
,p_alias=>'KEY-VALUE-EXTRACTION1'
,p_step_title=>'OCI Document Understanding'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(344781132793274)
,p_name=>'Key Value Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'       regexp_replace(C002, ''([A-Z])'', '' \1'' ) FIELD_LABEL,',
'       N001,',
'       case when C002 like ''%Date%'' then TO_CHAR(to_timestamp(C003, ''YYYY-MM-DD"T"HH24:MI:SS.FF3"Z"''), ''DD-MON-YYYY'')',
'       else C003',
'       end as FIELD_VALUE',
'from APEX_COLLECTIONS where COLLECTION_NAME = ''MY_COLLECTION''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(345200141793279)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Seq Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(344921175793276)
,p_query_column_id=>2
,p_column_alias=>'FIELD_LABEL'
,p_column_display_sequence=>20
,p_column_heading=>'Field Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(345300991793280)
,p_query_column_id=>3
,p_column_alias=>'N001'
,p_column_display_sequence=>50
,p_column_heading=>'N001'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(345071327793277)
,p_query_column_id=>4
,p_column_alias=>'FIELD_VALUE'
,p_column_display_sequence=>30
,p_column_heading=>'Field Value'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(347770156793304)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'       C001,',
'       C002',
'from APEX_COLLECTIONS where COLLECTION_NAME = ''MY_COLLECTION''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(348056424793307)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Seq Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(348198288793309)
,p_query_column_id=>2
,p_column_alias=>'C001'
,p_column_display_sequence=>40
,p_column_heading=>'C001'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(348369200793310)
,p_query_column_id=>3
,p_column_alias=>'C002'
,p_column_display_sequence=>50
,p_column_heading=>'C002'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70106180631690953)
,p_plug_name=>'OCI Document Understanding'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(329120168914874)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70106180631690953)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(347672319793303)
,p_name=>'P5_FEATURE_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70106180631690953)
,p_prompt=>'Feature Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Text Extraction;TEXT_EXTRACTION,Key Value Extraction;KEY_VALUE_EXTRACTION,Table Extraction;TABLE_EXTRACTION,Image Classification;IMAGE_EXTRACTION,Object Detection;OBJECT_EXTRACTION'
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16260492520676934)
,p_name=>'P5_FILENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70106180631690953)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70115641961690824)
,p_name=>'P5_UPLOAD_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70106180631690953)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70116588236690833)
,p_name=>'P5_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70106180631690953)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(348470339793311)
,p_name=>'Hide/Show'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_FEATURE_TYPE'
,p_condition_element=>'P5_FEATURE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'KEY_VALUE_EXTRACTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(348550913793312)
,p_event_id=>wwv_flow_imp.id(348470339793311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(344781132793274)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(348640624793313)
,p_event_id=>wwv_flow_imp.id(348470339793311)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(344781132793274)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(332595725914842)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P5_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P5_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8205308012188870
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(333083284914840)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8205795571188868
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(333469285914839)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(333083284914840)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage'
,p_attribute_01=>'PLSQL_PROCEDURE_FUNCTION'
,p_attribute_05=>'UPLOAD_FILE'
,p_process_when_button_id=>wwv_flow_imp.id(329120168914874)
,p_internal_uid=>8206181572188867
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(333985604914836)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P5_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(334463440914834)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(334938283914832)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(335461816914831)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(335923337914830)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
,p_param_comment=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(336403291914828)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(336942732914827)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(337447025914825)
,p_page_process_id=>wwv_flow_imp.id(333469285914839)
,p_page_id=>5
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(345411710793281)
,p_process_sequence=>40
,p_parent_process_id=>wwv_flow_imp.id(333083284914840)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Document Reading API'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'DOCUMENT_UNDERSTANDING_PROCEDURE'
,p_process_when_button_id=>wwv_flow_imp.id(329120168914874)
,p_internal_uid=>8218123997067309
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346116992793288)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346241933793289)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346375026793290)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_compartment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346413993793291)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_feature_type'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'ITEM'
,p_value=>'P5_FEATURE_TYPE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346545199793292)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_object_name'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'ITEM'
,p_value=>'P5_FILENAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(346664925793293)
,p_page_process_id=>wwv_flow_imp.id(345411710793281)
,p_page_id=>5
,p_name=>'p_response'
,p_direction=>'OUT'
,p_data_type=>'CLOB'
,p_ignore_output=>false
,p_display_sequence=>60
,p_value_type=>'ITEM'
,p_value=>'P5_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(347438234793301)
,p_process_sequence=>80
,p_parent_process_id=>wwv_flow_imp.id(333083284914840)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Parse Response'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'STORE_RESPONSE_IN_COLLECTION'
,p_process_when_button_id=>wwv_flow_imp.id(329120168914874)
,p_process_success_message=>'Processed'
,p_internal_uid=>8220150521067329
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(347516230793302)
,p_page_process_id=>wwv_flow_imp.id(347438234793301)
,p_page_id=>5
,p_name=>'p_response'
,p_direction=>'IN'
,p_data_type=>'CLOB'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P5_RESPONSE'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Image Classification'
,p_alias=>'IMAGE-CLASSIFICATION1'
,p_step_title=>'Image Classification'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15940546158748299)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT jt.name,',
'       (jt.confidence * 100) || ''%'' AS PERCENTAGE',
'FROM JSON_TABLE(',
'       :P6_RESPONSE, ''$.labels[*]'' ',
'        COLUMNS (',
'            name       VARCHAR2(100) PATH ''$.name'',',
'            confidence NUMBER        PATH ''$.confidence''',
'       )',
') jt;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130800795204285)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(131205397204289)
,p_query_column_id=>2
,p_column_alias=>'PERCENTAGE'
,p_column_display_sequence=>20
,p_column_heading=>'Percentage'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69891225958996847)
,p_plug_name=>'Image Classification'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(114254824220781)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69891225958996847)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16045604382982841)
,p_name=>'P6_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69891225958996847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69900753823996731)
,p_name=>'P6_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69891225958996847)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69901700098996740)
,p_name=>'P6_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69891225958996847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(117693209220763)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P6_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P6_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7990405495494791
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(118135020220762)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7990847306494790
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1177994872361474)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(118135020220762)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'UPLOAD_FILE_TO_OBJECT_STORAGE'
,p_process_when_button_id=>wwv_flow_imp.id(114254824220781)
,p_internal_uid=>9050707158635502
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1178413051361471)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P6_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1178895747361469)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1179429160361468)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1179913435361466)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1180410471361464)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1180907903361463)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1181428458361461)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1181939731361459)
,p_page_process_id=>wwv_flow_imp.id(1177994872361474)
,p_page_id=>6
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(122910138220745)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(118135020220762)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Document Reading API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_attribute_01=>'WEB_SOURCE'
,p_process_when_button_id=>wwv_flow_imp.id(114254824220781)
,p_internal_uid=>7995622424494773
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130270397204279)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(90494230584547)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130355077204280)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(66866084678601)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130393546204281)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(67834057678600)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'STATIC'
,p_value=>'IMAGE_CLASSIFICATION'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130558027204282)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(90015896584547)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130644416204283)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(90973845584547)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'ITEM'
,p_value=>'P6_FILENAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(130720813204284)
,p_page_id=>6
,p_web_src_param_id=>wwv_flow_imp.id(69386575678600)
,p_page_process_id=>wwv_flow_imp.id(122910138220745)
,p_value_type=>'ITEM'
,p_value=>'P6_RESPONSE'
,p_ignore_output=>false
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Object Detection'
,p_alias=>'OBJECT-DETECTION1'
,p_step_title=>'Object Detection'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(23964162636841480)
,p_name=>'Output'
,p_template=>wwv_flow_imp.id(41206219033442975)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT jt.name,',
'       (jt.confidence * 100) || ''%'' AS PERCENTAGE',
'FROM JSON_TABLE(',
'       :P7_RESPONSE, ',
'       ''$.imageObjects[*]'' ',
'       COLUMNS (',
'         name       VARCHAR2(100) PATH ''$.name'',',
'         confidence NUMBER        PATH ''$.confidence''',
'       )',
'     ) jt;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_RESPONSE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(41250539754442951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(154028270819130)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(131641576204293)
,p_query_column_id=>2
,p_column_alias=>'PERCENTAGE'
,p_column_display_sequence=>20
,p_column_heading=>'Percentage'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77914842437090028)
,p_plug_name=>'Object Detection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41206219033442975)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(151910261819141)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77914842437090028)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24070657910076008)
,p_name=>'P7_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77914842437090028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77925807351089898)
,p_name=>'P7_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77914842437090028)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77926753626089907)
,p_name=>'P7_RESPONSE'
,p_data_type=>'CLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77914842437090028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(154636302819128)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Filename'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select filename',
'    into :P7_FILENAME',
'    from apex_application_temp_files ',
'    where name = :P7_UPLOAD_FILE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8027348589093156
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(155040321819124)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Process Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8027752608093152
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1182685929360122)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(155040321819124)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Upload File to Object Storage'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'AI_SERVICES_PKG'
,p_attribute_04=>'UPLOAD_FILE_TO_OBJECT_STORAGE'
,p_process_when_button_id=>wwv_flow_imp.id(151910261819141)
,p_internal_uid=>9055398215634150
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1183022846360120)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_file_content'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>10
,p_value_type=>'ITEM'
,p_value=>'P7_UPLOAD_FILE'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1183542527360119)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_static_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>20
,p_value_type=>'STATIC'
,p_value=>'oci_document_reading_credentials'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1184019356360117)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_namespace'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>30
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1184504167360116)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_bucket'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>40
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1184993770360114)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_region'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>50
,p_value_type=>'STATIC'
,p_value=>'ap-mumbai-1'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1185542691360111)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_object_storage_url'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>60
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1186009900360110)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_file_name'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>70
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(1186536926360107)
,p_page_process_id=>wwv_flow_imp.id(1182685929360122)
,p_page_id=>7
,p_name=>'p_mime_type'
,p_direction=>'OUT'
,p_data_type=>'VARCHAR2'
,p_ignore_output=>true
,p_display_sequence=>80
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(159739396819110)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(155040321819124)
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Integrate Document Reading API'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64586114678602)
,p_web_src_operation_id=>wwv_flow_imp.id(66006455678601)
,p_attribute_01=>'WEB_SOURCE'
,p_process_when_button_id=>wwv_flow_imp.id(151910261819141)
,p_internal_uid=>8032451683093138
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(160239987819108)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(90494230584547)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'STATIC'
,p_value=>'bucket-20250701-1528'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(160717828819107)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(66866084678601)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'STATIC'
,p_value=>'ocid1.tenancy.oc1..aaaaaaaauhvadux7mua2yzkvnferohlvvdnhcn6hhz3xi5vh3nvizrjnlala'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(161205434819105)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(67834057678600)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'STATIC'
,p_value=>'OBJECT_DETECTION'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(161743531819104)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(90015896584547)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'STATIC'
,p_value=>'bmnh6evlwogt'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(162226233819102)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(90973845584547)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'ITEM'
,p_value=>'P7_FILENAME'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(162751822819100)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(69386575678600)
,p_page_process_id=>wwv_flow_imp.id(159739396819110)
,p_value_type=>'ITEM'
,p_value=>'P7_RESPONSE'
,p_ignore_output=>false
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'AI Services - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(41142517709443011)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41414353172442642)
,p_plug_name=>'AI Services'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(41201054743442978)
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41416005049442633)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41414353172442642)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(41297136384442916)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41414888658442637)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41414353172442642)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(41294334255442922)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41415217466442635)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41414353172442642)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(41294334255442922)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41415656132442634)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41414353172442642)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(41294334255442922)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41418262594442628)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41418262594442628
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41418776864442628)
,p_page_process_id=>wwv_flow_imp.id(41418262594442628)
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
 p_id=>wwv_flow_imp.id(41419245735442628)
,p_page_process_id=>wwv_flow_imp.id(41418262594442628)
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
 p_id=>wwv_flow_imp.id(41416391231442632)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41416391231442632
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(41416813440442630)
,p_page_process_id=>wwv_flow_imp.id(41416391231442632)
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
 p_id=>wwv_flow_imp.id(41417340555442629)
,p_page_process_id=>wwv_flow_imp.id(41416391231442632)
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
 p_id=>wwv_flow_imp.id(41417894263442628)
,p_page_process_id=>wwv_flow_imp.id(41416391231442632)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41420131000442627)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41420131000442627
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41419791052442627)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>41419791052442627
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11290315234156005)
,p_step_template=>wwv_flow_imp.id(41121489669443037)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(11290714868155997)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11295311129155981)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_imp.id(41240431889442960)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11295762274155979)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(41164492560442995)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(11296250825155978)
,p_region_id=>wwv_flow_imp.id(11295762274155979)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11296771852155976)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>wwv_flow_imp.id(41157371532442998)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(11294346607155985)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(41278555717442933)
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(11290315234156005)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>wwv_flow_imp.id(41121489669443037)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(11290440417155999)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11291774402155994)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'style="display:none;"'
,p_plug_template=>wwv_flow_imp.id(41152116663443005)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11292104792155992)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(41152116663443005)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11291499560155994)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(41297245917442916)
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11292619723155990)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11292104792155992)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(41294675418442921)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11292966197155989)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11293463186155987)
,p_event_id=>wwv_flow_imp.id(11292966197155989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11293911496155986)
,p_event_id=>wwv_flow_imp.id(11292966197155989)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
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
