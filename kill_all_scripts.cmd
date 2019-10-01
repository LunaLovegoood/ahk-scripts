@echo off

set find_script_pids_command="tasklist | awk "/^AutoHotkey.exe/ {print $2}""

for /f "tokens=*" %%i in ('%find_script_pids_command%') do (
    taskkill /f /pid %%i > NUL
    echo Ended process with pid: %%i
)
