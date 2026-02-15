# ===== CONFIG =====
$APP_ID      = 100
$SQLCL       = "C:\Oracle\sqlcl\bin\sql.exe"
$DB_CONN     = "apex_ci/Ringroad_12345@yty2rlbmita3nlpb_high"

$ZIP_DIR     = "D:\task-tracker\_export_zip"
$GIT_TARGET  = "D:\task-tracker\apex\f100"
# ==================

New-Item -ItemType Directory -Force -Path $ZIP_DIR | Out-Null
New-Item -ItemType Directory -Force -Path $GIT_TARGET | Out-Null

Write-Host "Exporting APEX app $APP_ID from Oracle Cloud..."

$SQL = @"
apex export -applicationid $APP_ID -split -skipExportDate -dir "$ZIP_DIR"
exit
"@

$SQL | & $SQLCL $DB_CONN

$SOURCE_DIR = Join-Path $ZIP_DIR "f$APP_ID"

if (-not (Test-Path $SOURCE_DIR)) {
    Write-Error "APEX export directory not found: $SOURCE_DIR"
    exit 1
}

Write-Host "Copying APEX export into Git repo..."

Copy-Item `
  -Path "$SOURCE_DIR\*" `
  -Destination $GIT_TARGET `
  -Recurse `
  -Force


Write-Host "Export complete"
