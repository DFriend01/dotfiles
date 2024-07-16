# Powershell Profile for PS 7
# https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4

# Environment Variables
$PROFILE_PATH = (Split-Path -parent $profile)

# Aliases
. $PROFILE_PATH\PowerShell_aliases.ps1

# Functions
. $PROFILE_PATH\PowerShell_functions.ps1

# Vim keybindings in powershell (PS 7+)
Import-Module PSReadLine
Set-PSReadLineOption -EditMode vi

# Autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Oh My Posh Theme: https://ohmyposh.dev/docs/themes 
# Recommended to install a Nerd Font: https://www.nerdfonts.com/font-downloads
if(Get-Command oh-my-posh -errorAction SilentlyContinue) {
    $THEME = "clean-detailed"
    oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\$THEME.omp.json" | Invoke-Expression
}
else {
    winget install JanDeDobbeleer.OhMyPosh -s winget
    Write-Output "oh-my-posh installed. Restart the terminal for the changes to apply."
}
