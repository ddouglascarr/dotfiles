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
let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'
let g:clang_auto_select=1
let g:clang_complete_auto=0
let g:clang_close_preview=1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

" line numbers
set number
" smart case search
set ignorecase

" omni func
filetype plugin on
set omnifunc=syntaxcomplete#Complete

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
      \ "\<lt>C-n>" :
      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" syntax
syntax on
set nocompatible
filetype plugin indent on

" uuid hotkeys
" imap <C-i>1 464b1ebb-32c1-460c-8e9e-111111111111
" imap <C-i>2 464b1ebb-32c1-460c-8e9e-222222222222
" imap <C-i>3 464b1ebb-32c1-460c-8e9e-333333333333
" imap <C-i>4 464b1ebb-32c1-460c-8e9e-444444444444
" imap <C-i>5 464b1ebb-32c1-460c-8e9e-555555555555
" imap <C-i>6 464b1ebb-32c1-460c-8e9e-666666666666
" imap <C-i>7 464b1ebb-32c1-460c-8e9e-777777777777
" imap <C-i>8 464b1ebb-32c1-460c-8e9e-888888888888
" imap <C-i>9 464b1ebb-32c1-460c-8e9e-999999999999
" imap <C-i>0 464b1ebb-32c1-460c-8e9e-000000000000
" imap <C-i>a 464b1ebb-32c1-460c-8e9e-aaaaaaaaaaaa
" imap <C-i>b 464b1ebb-32c1-460c-8e9e-bbbbbbbbbbbb
" imap <C-i>c 464b1ebb-32c1-460c-8e9e-cccccccccccc
" imap <C-i>d 464b1ebb-32c1-460c-8e9e-dddddddddddd
" imap <C-i>e 464b1ebb-32c1-460c-8e9e-eeeeeeeeeeee
" imap <C-i>f 464b1ebb-32c1-460c-8e9e-ffffffffffff

" Javascript formatting
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier


" Vim-flow
let g:flow#enable = 0
let g:flow#autoclose = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/node_modules/*,*/build/*

" YouCompleteMe
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_goto_buffer_command = 'vertical-split'
let g:ycm_server_python_interpreter = '/home/daniel/.virtualenvs/edrolo36/bin/python'
let g:ycm_python_binary_path='/home/daniel/.virtualenvs/edrolo36/bin/python'
nnoremap <leader>g :YcmCompleter GoToDeclaration<CR>
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'javascript': 1,
      \ 'typescript': 1,
      \}

" Typescript
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" Elm
let g:elm_syntastic_show_warnings = 1

" Python
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix
" autocmd BufWritePre *.py 0,$!yapf

" ALE
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_fixers = {'python': ['yapf']}
let g:ale_fix_on_save = 1

" vim-rust
let g:rustfmt_autosave = 1

" vim-go
let g:go_fmt_command = "goimports"

set background=dark
