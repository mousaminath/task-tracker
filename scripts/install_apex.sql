BEGIN
  apex_application_install.set_workspace('&WORKSPACE');
  apex_application_install.set_application_id(&APP_ID);
  apex_application_install.set_schema('&SCHEMA');
  apex_application_install.set_application_alias('TASK_TRACKER');
END;
/

@apex/f17152.sql
