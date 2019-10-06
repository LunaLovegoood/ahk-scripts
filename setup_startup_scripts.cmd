@echo off

rem ALL users startup folder
rem If this path is used then scripts will ALWAYS run on startup
rem set STARTUP_FOLDER=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

rem Current user startup folder
rem If this path is used then scripts will run on startup only for this user
set STARTUP_FOLDER=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

rem Path to script which will launch all ahk scripts on startup
set START_AHKS_SCRIPT="%STARTUP_FOLDER%\start_ahks.cmd"

rem Command which finds all files inside startup/ dir which ends with .ahk
set find_startup_scripts="dir startup | awk "/\.ahk$/ {print $NF}""

rem Clear script file
break > %START_AHKS_SCRIPT%

rem Hide output from start command invokations
echo @echo off > %START_AHKS_SCRIPT%

rem Append rows to the script file to launch need ahk scripts
for /f "tokens=*" %%s in ('%find_startup_scripts%') do (
    echo start "" "%cd%\startup\%%s" >> %START_AHKS_SCRIPT%
)
