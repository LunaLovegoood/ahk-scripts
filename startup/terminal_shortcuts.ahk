#NoEnv
#NoTrayIcon
#SingleInstance, force

GIT_LOCATION := "C:\Program Files\Git\"

LaunchTerminalFromHome(path_to_terminal)
{
    current_working_dir := A_WorkingDir
    EnvGet, home_dir, USERPROFILE

    SetWorkingDir, % home_dir
    Run, % path_to_terminal

    SetWorkingDir, % current_working_dir
}

Insert::LaunchTerminalFromHome("cmd.exe")

^Insert::LaunchTerminalFromHome("powershell.exe")

*ScrollLock::LaunchTerminalFromHome(GIT_LOCATION . "git-bash.exe")
