[string[]]$scripts_to_run = @(
    'lang_toggle.ahk',
    'terminal.ahk',
    'local.ahk',
    'window_management.ahk'
)

foreach ($script in $scripts_to_run) {
    Invoke-Expression ".\startup\$script"
    "Started: $script"
}
