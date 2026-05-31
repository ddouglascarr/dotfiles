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
" set shell=/opt/homebrew/bin/bash
if executable('pbcopy') && executable('pbpaste')
    let g:clipboard = {
        \ 'name': 'pbcopy',
        \ 'copy': {
        \     '+': ['pbcopy'],
        \     '*': ['pbcopy'],
        \ },
        \ 'paste': {
        \     '+': ['pbpaste'],
        \     '*': ['pbpaste'],
        \ },
        \ 'cache_enabled': 0,
        \ }
elseif executable('wl-copy') && executable('wl-paste')
    let g:clipboard = {
        \ 'name': 'wl-clipboard',
        \ 'copy': {
        \     '+': ['wl-copy', '--type', 'text/plain'],
        \     '*': ['wl-copy', '--type', 'text/plain'],
        \ },
        \ 'paste': {
        \     '+': ['wl-paste', '--no-newline'],
        \     '*': ['wl-paste', '--no-newline'],
        \ },
        \ 'cache_enabled': 0,
        \ }
endif
set clipboard=unnamed

" mutt settings
augroup mail_flowed " {
	autocmd!
	autocmd FileType mail setlocal formatoptions+=w
	autocmd FileType mail setlocal colorcolumn=72
augroup END " }

if exists('g:vscode')
    " VSCode extension specific settings.
else
    " ordinary Neovim
    lua require('packages')
    lua require('netrw')
    lua require('fzf')
    " source $HOME/.config/nvim/copilot.vim
    lua require('lsp')
    lua require('lua-ls')
    lua require('typescript')
    lua require('golang')
    lua require('snippets')
    lua require('lms')

    source $HOME/.config/nvim/zettle.vim
endif
