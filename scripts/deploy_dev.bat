@echo off

sql WKSP_MOUNATH2026V1/your_password@dbtoolsprod-phx-apex-int-prd-mt-02:1521/aintprd_pdb ^
@db\V001__create_tables.sql ^
@scripts\install_apex.sql WORKSPACE=WKSP_MOUNATH2026V1 APP_ID=17152 SCHEMA=WKSP_MOUNATH2026V1 ^
@scripts\set_app_env.sql APP_ENV=DEV
