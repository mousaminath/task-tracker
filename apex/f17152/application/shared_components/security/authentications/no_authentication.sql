prompt --application/shared_components/security/authentications/no_authentication
begin
--   Manifest
--     AUTHENTICATION: No Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>35033729238802948983
,p_default_application_id=>17152
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MOUNATH2026V1'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(36800999285036637854)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>46269466710909
);
wwv_flow_imp.component_end;
end;
/
