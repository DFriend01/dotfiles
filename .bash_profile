# ~/.bash_profile: executed by the command interpreter for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private .local/bin
if [ ! -d "${HOME}/.local/bin" ] ; then
    mkdir -p ${HOME}/.local/bin
fi
PATH="${HOME}/.local/bin:${PATH}"

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
fi

# start oh-my-posh if it exists
if [ -f ${HOME}/.local/bin/oh-my-posh ] ; then
    POSH_THEME="clean-detailed"
    POSH_THEME_URL="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/${POSH_THEME}.omp.json"
    eval "$(oh-my-posh init bash --config ${POSH_THEME_URL})"
fi

# include .bashrc if it exists
if [ -f "${HOME}/.bashrc" ]; then
    . "${HOME}/.bashrc"
fi

