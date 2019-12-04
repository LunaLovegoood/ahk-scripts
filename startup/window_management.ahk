#NoEnv
#NoTrayIcon
#SingleInstance, force

CloseActiveWindow()
{
    WinGetTitle, Title, A
    PostMessage, 0x112, 0xF060,,, %Title%
}

#+q::CloseActiveWindow()
^SPACE:: Winset, Alwaysontop, , A

#F1::Send, ^#{Left} ; go to left desktop
#F2::Send, ^#{Right} ; go to right desktop
