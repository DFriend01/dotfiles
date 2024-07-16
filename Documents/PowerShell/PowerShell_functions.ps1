function up([int] $n) {
    <#
    .SYNOPSIS
        Changes the current directory up by a specified number.
    
    .PARAMETER n
        The number of directories to move up. Must be a positive integer.
    
    .EXAMPLE
        up 3
    #>

    if ($n -le 0) {
        Write-Host "Please provide a positive integer greater than 0."
        return
    }

    $cmd = "Set-Location $('../' * $n)"
    try {
        Invoke-Expression $cmd
    } catch {
        Write-Error "$_"
    }
}

function lsga() {
    <#
    .SYNOPSIS
        Lists the defined git aliases in the .gitconfig
    #>
    git config --get-regexp alias
}

function groot() {
    <#
    .SYNOPSIS
        If in a git repository, change the current directory to
        the root of the git repository. Else, do nothing.
    #>
    git rev-parse --is-inside-work-tree && Set-Location "$(git rev-parse --show-toplevel)"
}
