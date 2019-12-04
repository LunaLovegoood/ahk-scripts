# IDs of all autohotkey processes
[Int32[]]$autohotkey_pids = Get-Process autohotkey | Select-Object -expand id

foreach ($ahk_pid in $autohotkey_pids) {
    Stop-Process -Id $ahk_pid -Force
    "Killed script: $ahk_pid"
}
