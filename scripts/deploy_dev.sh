#!/bin/bash

sql user/password@devdb <<EOF
@db/V001__create_tables.sql
@scripts/install_apex.sql WORKSPACE=WKSP_MOUNATH2026V1 APP_ID=17152 SCHEMA=DEV_SCHEMA
@scripts/set_app_env.sql APP_ENV=DEV
EOF
