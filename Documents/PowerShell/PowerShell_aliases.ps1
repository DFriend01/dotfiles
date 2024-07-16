# PowerShell Aliases
Set-Alias c clear
Set-Alias g git
Set-Alias vi vim

# Aliases to git bash command executables
# The pipe operator doesn't work too well in powershell for some commands
$GIT_PATH = 'C:\Program Files\Git\usr\bin\'
if (Test-Path $GIT_PATH) {
    Set-Alias awk ($GIT_PATH + 'awk.exe')
    Set-Alias cat ($GIT_PATH + 'cat.exe')
    Set-Alias chmod ($GIT_PATH + 'chmod.exe')
    Set-Alias chown ($GIT_PATH + 'chown.exe')
    Set-Alias dirname ($GIT_PATH + 'dirname.exe')
    Set-Alias df ($GIT_PATH + 'df.exe')
    Set-Alias du ($GIT_PATH + 'du.exe')
    Set-Alias find ($GIT_PATH + 'find.exe')
    Set-Alias gawk ($GIT_PATH + 'gawk.exe')
    Set-Alias grep ($GIT_PATH + 'grep.exe')
    Set-Alias gunzip ($GIT_PATH + 'gunzip.exe')
    Set-Alias gzip ($GIT_PATH + 'gzip.exe')
    Set-Alias head ($GIT_PATH + 'head.exe')
    Set-Alias less ($GIT_PATH + 'less.exe')
    Set-Alias ln ($GIT_PATH + 'ln.exe')
    # Set-Alias ls ($GIT_PATH + 'ls.exe')
    Set-Alias mkdir ($GIT_PATH + 'mkdir.exe')
    Set-Alias mv ($GIT_PATH + 'mv.exe')
    Set-Alias rm ($GIT_PATH + 'rm.exe')
    Set-Alias sed ($GIT_PATH + 'sed.exe')
    Set-Alias tail ($GIT_PATH + 'tail.exe')
    Set-Alias tar ($GIT_PATH + 'tar.exe')
    Set-Alias touch ($GIT_PATH + 'touch.exe')
    Set-Alias vim ($GIT_PATH + 'vim.exe')
}
