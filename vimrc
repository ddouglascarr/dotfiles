let mapleader = ' '

py3 << EOF
import os.path
import sys

if 'VIRTUAL_ENV' in os.environ:
    base = os.environ['VIRTUAL_ENV']
    site_packages = os.path.join(base, 'lib', 'python%s' %  sys.version[:3], 'site-packages')
    prev_sys_path = list(sys.path)
    import site
    site.addsitedir(site_packages)
    sys.real_prefix = sys.prefix
    sys.prefix = base
    
    # Move the added items to the front of the path:
    new_sys_path = []
    for item in list(sys.path):
         if item not in prev_sys_path:
             new_sys_path.append(item)
             sys.path.remove(item)
    sys.path[:0] = new_sys_path

EOF

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
set relativenumber
" smart case search
set ignorecase

" dont count in octal
set nrformats-=octal

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

" Jedi (python)
let g:python_host_prog = 'python'
let g:python3_host_prog = 'python3'

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

