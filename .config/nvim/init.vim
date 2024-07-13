"" Basic Editor Configuration
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=99                   " set a 99 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

"" Plugins
" Install vim-plug: https://github.com/junegunn/vim-plug
" :PlugInstall to install plugins
" :PlugClean to clean plugins that have been removed from this file
call plug#begin()

" Vim color themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes'

" Surround lines and words with text objects
" ysiw[ARG] Surround the current word with [ARG]
" yss[ARG] Surround the current line with [ARG]
" cs[ARG1][ARG2] Change surrounding [ARG1] for [ARG2]
" ds[ARG] Remove the surrounding [ARG]
Plug 'http://github.com/tpope/vim-surround'

" File system explorer
" :NERDTree Open tree
" :NERDTreeToggle (CTRL+t) Toggle tree
" :NERDTreeFind (CTRL+f) Change tree to current directory
" :NERDTreeVCS Open the tree at the root of the current git repo
Plug 'https://github.com/preservim/nerdtree'

" Comment/uncomment lines
" gcc Comment/uncomment a line
" gc In visual mode, comment/uncomment the highlighted lines
" gcgc Uncomment adjacent lines
Plug 'https://github.com/tpope/vim-commentary'

" Status bar
Plug 'https://github.com/vim-airline/vim-airline'

" CSS color Preview
Plug 'https://github.com/ap/vim-css-color'

" Developer icons
Plug 'https://github.com/ryanoasis/vim-devicons'

" Vim terminal (requires Python to run)
" :Terminal Open a terminal in a new window
" :TerminalSplit Split a new terminal
" :TerminalVSplit Split a new terminal vertically
Plug 'https://github.com/tc50cal/vim-terminal'

" Multiple cursors
" CTRL + N for new cursor
" CTRL + Up/Down to create new cursor up/down
" n/N to next/previous occurrence
" Shift + Arrowkey to select one character at a time
Plug 'https://github.com/mg979/vim-visual-multi'

" Code autocompletion (requires a language server per language)
" The configuration required is kinda crazy...
" Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()

"" Color scheme
set background=dark 
colorscheme gruvbox 

"" NERDTree Config
nnoremap <C-t> :NERDTreeToggle<CR> 
nnoremap <C-f> :NERDTreeFind<CR> 

"" Terminal config
let g:Terminal_PyExe = '/usr/bin/python3'

"" Autostart Commands
autocmd VimEnter * NERDTreeVCS | wincmd l
let terminal = vimterm_term#open('/bin/bash', ['belowright split', 'resize -5'], 1)

