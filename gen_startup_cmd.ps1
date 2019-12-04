$STARTUP_FOLDER = "$HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

$STARTUP_SCRIPT_CONTENT = @"
@echo off
cd /D "{0}"
PowerShell -NoProfile ".\run_startup.ps1"
"@ -f $PSScriptRoot

Out-File -FilePath "$STARTUP_FOLDER\start_ahks.cmd" -Encoding ascii -InputObject $STARTUP_SCRIPT_CONTENT
