# dotfiles

My dotfiles for Ubuntu.

## Required Setup Steps

### Neovim

```bash
# Install neovim
sudo apt install neovim

# Install vim-plug for neovim
# https://github.com/junegunn/vim-plug
sudo apt install curl
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
