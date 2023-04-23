
" vim builtin settings
syntax on
set nocompatible
filetype plugin indent on
set backupdir=/tmp
set directory=/tmp,.
set path+=**
set wildmenu
set wildignore+=*/node_modules/*,*/build/*
set number
set relativenumber
set ignorecase
set ruler
set nrformats-=octal  " dont count in octal
set mouse=a
let mapleader = " "

if exists('g:vscode')
    " VSCode extension specific settings.
else
    " ordinary Neovim
    lua require('packages')
    lua require('lsp')
    lua require('typescript')
    lua require('mappings')
endif
