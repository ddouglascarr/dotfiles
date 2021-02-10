let mapleader = ' '

call pathogen#infect()

" fzf
set rtp+=~/.fzf

" Put swp files in /tmp
set backupdir=/tmp
set directory=/tmp,.


map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" Mouse mode
set mouse=a

" Clipboard
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <S-Insert> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

" Splits
nmap <leader>es :sp <C-R>=expand('%:h').'./'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'./'<cr>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Tabs are 2 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" clang_complete
" let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'
" let g:clang_auto_select=1
" let g:clang_complete_auto=0
" let g:clang_close_preview=1
" let g:clang_snippets = 1
" let g:clang_snippets_engine = 'ultisnips'

" line numbers
set number
set relativenumber
" smart case search
set ignorecase

" dont count in octal
set nrformats-=octal

" vim-lsp
nmap <C-]> :LspDefinition<return>

" omni func
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete

" inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"       \ "\<lt>C-n>" :
"       \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"       \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"       \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
" imap <C-@> <C-Space>

" syntax
syntax on
set nocompatible
filetype plugin indent on

" Javascript formatting
" let g:prettier#exec_cmd_async = 1
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.json,*.graphql,*.md,*.vue Prettier


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/node_modules/*,*/build/*

" Python
" au BufNewFile,BufRead *.py
"   \ set tabstop=4 |
"   \ set softtabstop=4 |
"   \ set shiftwidth=4 |
"   \ set expandtab |
"   \ set autoindent |
"   \ set fileformat=unix
" autocmd BufWritePre *.py 0,$!yapf

" ALE
" let g:ale_linters = {
" \   'javascript': ['eslint', 'flow'],
" \}
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 0
" let g:ale_fixers = {'python': ['yapf']}
" let g:ale_fix_on_save = 1

set background=dark

"Plugin: neosnippet
"==================

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neosnippet#snippets_directory='~/.vim/snippets'
let g:neosnippet#disable_runtime_snippets = { "_": 1, }

"protbuf
"
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
