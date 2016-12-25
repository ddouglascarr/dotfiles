call pathogen#infect()


" Put swp files in /tmp
set backupdir=/tmp
set directory=/tmp,.


map <leader>n :NERDTreeToggle<CR>

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
