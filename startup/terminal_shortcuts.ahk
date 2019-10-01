#NoEnv
#NoTrayIcon
#SingleInstance, force

GIT_LOCATION := "C:\Program Files\Git\"

*Insert::Run, cmd.exe

*ScrollLock::Run, % GIT_LOCATION . "git-bash.exe"
