let mapleader = " "

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
set rtp+=~/.fzf  " fzf
set shell=/opt/homebrew/bin/bash
set clipboard=unnamed

if exists('g:vscode')
    " VSCode extension specific settings.
else
    " ordinary Neovim
    lua require('packages')
    lua require('netrw')
    lua require('fzf')
    source $HOME/.config/nvim/copilot.vim
    lua require('lsp')
    lua require('lua-ls')
    lua require('typescript')
    lua require('snippets')

    source $HOME/.config/nvim/zettle.vim
endif
