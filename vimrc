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
" show cursor positon
set ruler

" dont count in octal
set nrformats-=octal

" syntax
syntax on
set nocompatible
filetype plugin indent on

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/node_modules/*,*/build/*

" research (vimwiki, vim-zettel)
let g:vimwiki_global_ext = 0  " dont make all md vimwiki
let g:vimwiki_list = [{'path': '~/research/zkn/',
  \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
" autowrap text in markdown (incl vimwiki markdown)
" autocmd FileType vimwiki setlocal formatoptions+=aw
" autocmd FileType markdown setlocal formatoptions+=aw
let g:pandoc#modules#disabled = ["folding"]


" vim-lsp
nmap <C-]> :LspDefinition<return>
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_settings_filetype_javascript = ['typescript-language-server', 'eslint-language-server']

" golang
" handled by vim-lsp
autocmd BufWritePre *.go LspDocumentFormatSync
au BufNewFile,BufRead *.go
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4

" Javascript
let g:prettier#autoformat = 0
if filereadable(findfile('.prettierrc', '.;'))
  autocmd BufWritePre *.js,*.jsx,*mjs,*.ts,*.tsx,*.graphql,*.vue PrettierAsync
endif

" Python
" handled by vim-lsp
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix
" project specific
" yapf files, then return cursor after writing
autocmd BufWritePre /home/daniel/src/edrolo/*.py 0,$!yapf
autocmd BufWritePost /home/daniel/src/edrolo/*.py normal! `^

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
