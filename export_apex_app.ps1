# ===== CONFIG =====
$APP_ID      = 100
$SQLCL       = "C:\Oracle\sqlcl\bin\sql.exe"
$DB_CONN     = "apex_ci/Ringroad_12345@yty2rlbmita3nlpb_high"

$ZIP_DIR     = "D:\apex_export_automate\_export_zip"
$GIT_TARGET  = "D:\task-tracker\apex\f100"
# ==================

do {
    $doExport = Read-Host "Do you want to export the application? (y/n)"
    $doExport = $doExport.Trim().ToLower()
} until ($doExport -in @("y","n"))

if ($doExport -eq "y") {
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


Write-Host ""
Write-Host "Export complete."
Write-Host ""

} else {
    Write-Host ""
    Write-Host "Skipping APEX export. Proceeding to Git status check..."
    Write-Host ""
}

# Check for changes
$gitChanges = git status --porcelain

if (-not $gitChanges) {
    Write-Host ""
    Write-Host "No changes detected. Nothing to commit."
    Write-Host "Done."
    exit 0
}

Write-Host ""
Write-Host "Changes detected in git repository."

# Ask: show git status
do {
    $showStatus = Read-Host "Do you want to see git status? (y/n)"
    $showStatus = $showStatus.Trim().ToLower()
} until ($showStatus -in @("y","n"))

if ($showStatus -eq "y") {
    Write-Host ""
    git status
}

# Ask: show git diff
do {
    $showDiff = Read-Host "Do you want to see git diff? (y/n)"
    $showDiff = $showDiff.Trim().ToLower()
} until ($showDiff -in @("y","n"))

if ($showDiff -eq "y") {
    Write-Host ""
    git diff
}

# Ask: commit changes
do {
    $commit = Read-Host "Do you want to commit your changes? (y/n)"
    $commit = $commit.Trim().ToLower()
} until ($commit -in @("y","n"))

if ($commit -eq "y") {
    $commitMsg = Read-Host "Enter commit message"
    if (-not $commitMsg) {
        Write-Error "Commit message cannot be empty. Aborting commit."
        exit 1
    }

    git add .
    git commit -m $commitMsg

    Write-Host ""
    Write-Host "Changes committed successfully."
}

# Ask: push
do {
    $push = Read-Host "Do you want to push the commit to remote? (y/n)"
    $push = $push.Trim().ToLower()
} until ($push -in @("y","n"))

if ($push -eq "y") {
    Write-Host ""
    Write-Host "Pushing changes to remote..."

    git push
    if ($LASTEXITCODE -ne 0) {
        Write-Host ""
        Write-Error "Git push failed."
        Write-Host "There may be merge conflicts or remote changes."
        Write-Host "Please resolve the issue manually, then push again."
        exit 1
    }

    Write-Host ""
    Write-Host "Push completed successfully."
} else {
    Write-Host ""
    Write-Host "Push skipped."
}

