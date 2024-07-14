# dotfiles

My dotfiles managed by chezmoi.

## Required Setup Steps

### General Dependencies

```bash
sudo apt update && sudo apt install -y \
    bash-completion \
    curl \
    git \
    gnupg2 \
    openssh-client \
    snapd \
    wget

sudo snap install chezmoi --classic
```

### Bash

To get the terminal theme to work properly, it's recommended to install a [Nerd Font](https://www.nerdfonts.com/)
(i.e. Fira Code Mono) and to configure the terminal to use that font.

```bash
# Install oh-my-posh
# https://ohmyposh.dev/
mkdir -p ${HOME}/.local/bin && \
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ${HOME}/.local/bin
```

### Git

```bash
# Install Git
sudo apt install git

# Install the Git CLI
# https://github.com/cli/cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Login to Git CLI
gh auth login
```

### Neovim

```bash
# Install neovim
sudo apt install neovim

# Install vim-plug for neovim
# https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Tmux

```bash
# Install the Tmux Plugin Manager
# https://github.com/tmux-plugins/tpm
mkdir -p ${HOME}/.config/tmux/plugins && \
git clone https://github.com/tmux-plugins/tpm ${HOME}/.config/tmux/plugins/tpm
```
