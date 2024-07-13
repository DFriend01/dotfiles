# Functions
function ssha() {
    # Start an ssh agent
    # Arg 1 (Optional): Path to private key.
    #   Default: If it exists, use ~/.ssh/id_rsa or
    #   ~/.ssh/id_ed25519 (in this order).

    id_rsa="${HOME}/.ssh/id_rsa"
    id_ed="${HOME}/.ssh/id_ed25519"

    if [[ ! -z ${1} ]]; then
        if [[ -f ${1} && -f "${1}.pub" ]]; then
            private_key=${1}
        else
            echo "ERROR: Public/Private key pair not found!"
            return 1
        fi
    elif [[ -f ${id_rsa} && -f "${id_rsa}.pub" ]]; then
        private_key=${id_rsa}
    elif [[ -f ${id_ed} && -f "${id_ed}.pub" ]]; then
        private_key=${id_ed}
    else
        echo "ERROR: Public/Private key pair not found!"
        return 2
    fi

    eval $(ssh-agent) && ssh-add ${private_key}
}

function up() {
    # Changes the current directory up a specified number.
    # Arg 1 (Optional): A positive integer specifying the number of directories.
    #   Default: 1.

    if [[ -z ${1} ]]; then
        ndirs=1
    elif [[ ${1} =~ ^[0-9]+$ && ${1} -gt 0 ]]; then
        ndirs=${1}
    else
        echo "Invalid argument '${1}'. Please provide a positive integer."
        return 1
    fi

    # Generate the 'cd' command to go up "ndirs" directories
    cd $(printf '../%.0s' $(seq 1 ${ndirs}))
}

# SSH Aliases
alias sshrsa='ssha ${HOME}/.ssh/id_rsa'
alias sshed='ssha ${HOME}/.ssh/id_ed25519'

# Command Aliases
alias c='clear'
alias g='git'
alias h='history'
alias install='sudo apt install'
alias instally='sudo apt install -y'

# Navigation Aliases
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -ltr'
alias lat='ls -latr'

# Networking Aliases
alias ip='curl ifconfig.me'
alias port='netstat -tulanp'

# Vim aliases
alias vi='nvim'
alias svi='sudo nvim'

