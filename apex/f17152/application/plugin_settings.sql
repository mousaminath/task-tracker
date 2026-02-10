prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>35033729238802948983
,p_default_application_id=>17152
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MOUNATH2026V1'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800525613509241374)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>46269434424199
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800525913749241378)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>46269434424455
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800526216438241379)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>46269434424535
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800526570209241379)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>46269434424538
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800526865396241380)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>46269434424559
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800527126549241380)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>46269434424567
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800527413657241380)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>46269434424570
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800527721840241380)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>46269434424600
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800528052092241381)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>46269434424603
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800528337621241381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>46269434424686
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800528616602241381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>46269434424689
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800528964307241381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>46269434424696
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800529289286241382)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>46269434424729
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(36800529559228241382)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>46269434424733
);
wwv_flow_imp.component_end;
end;
/
