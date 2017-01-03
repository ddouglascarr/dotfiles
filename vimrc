call pathogen#infect()


" Put swp files in /tmp
set backupdir=/tmp
set directory=/tmp,.


map <leader>n :NERDTreeToggle<CR>

" Mouse mode
set mouse=a

" Splits
nmap <leader>es :sp <C-R>=expand('%:h').'./'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'./'<cr>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Tabs are 2 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

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

" uuid hotkeys
imap <C-u>1 464b1ebb-32c1-460c-8e9e-111111111111
imap <C-u>2 464b1ebb-32c1-460c-8e9e-222222222222
imap <C-u>3 464b1ebb-32c1-460c-8e9e-333333333333
imap <C-u>4 464b1ebb-32c1-460c-8e9e-444444444444
imap <C-u>5 464b1ebb-32c1-460c-8e9e-555555555555
imap <C-u>6 464b1ebb-32c1-460c-8e9e-666666666666
imap <C-u>7 464b1ebb-32c1-460c-8e9e-777777777777
imap <C-u>8 464b1ebb-32c1-460c-8e9e-888888888888
imap <C-u>9 464b1ebb-32c1-460c-8e9e-999999999999
imap <C-u>0 464b1ebb-32c1-460c-8e9e-000000000000
imap <C-u>a 464b1ebb-32c1-460c-8e9e-aaaaaaaaaaaa
imap <C-u>b 464b1ebb-32c1-460c-8e9e-bbbbbbbbbbbb
imap <C-u>c 464b1ebb-32c1-460c-8e9e-cccccccccccc
imap <C-u>d 464b1ebb-32c1-460c-8e9e-dddddddddddd
imap <C-u>e 464b1ebb-32c1-460c-8e9e-eeeeeeeeeeee
imap <C-u>f 464b1ebb-32c1-460c-8e9e-ffffffffffff



