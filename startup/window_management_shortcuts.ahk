#NoEnv
#NoTrayIcon
#SingleInstance, force

CloseActiveWindow()
{
    WinGetTitle, Title, A
    PostMessage, 0x112, 0xF060,,, %Title%
}

#+q::CloseActiveWindow()
