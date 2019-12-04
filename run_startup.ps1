function InvokeScript {
    param([parameter(Mandatory)][string]$script)

    Set-Location -Path "$PSScriptRoot"

    $script_dir = (Get-Item ".\startup\$script").DirectoryName
    $script_name = (Get-Item ".\startup\$script").Name

    # scripts should be launched from their directories
    # because some of them rely on relative paths
    Set-Location -Path "$script_dir"
    Invoke-Expression ".\$script_name"
}

[string[]]$scripts_to_run = @(
    'lang_toggle.ahk',
    'terminal.ahk',
    'local.ahk',
    'window_management.ahk',
    'media.ahk'
    'desktop-enhancer\virtual-desktop-enhancer.ahk'
)

foreach ($script in $scripts_to_run) {
    InvokeScript $script
    "Started: $script"
}

Set-Location -Path "$PSScriptRoot"
