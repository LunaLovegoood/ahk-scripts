#NoEnv
#NoTrayIcon
#SingleInstance, force

; required for script to work correctly even
; if script is launched when CapsLock is on
SetCapsLockState, Off

ChangeLanguage()
{
    Send, {Shift down}{Ctrl down}
    Send, {Shift up}{Ctrl up}
}

*CapsLock::ChangeLanguage()
