let mapleader = ' '

call pathogen#infect()


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

" fzf
set rtp+=~/.fzf  " fzf

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
let NERDTreeShowHidden=1
map <leader>h :History<CR>

" Clipboard
vmap <C-c> y:call system("wl-copy", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
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


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'a'

" Ale
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'jsx': ['eslint']
  \ }

" research (vimwiki, vim-zettel)
autocmd FileType vimwiki nnoremap <leader>zn :ZettelNew<CR>
autocmd FileType vimwiki nnoremap <leader>zi :ZettelInbox<CR>
let g:vimwiki_global_ext = 0  " dont make all md vimwiki
let g:vimwiki_list = [{'path': '~/research/zkn/',
  \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_conceal_onechar_markers = 0
autocmd FileType markdown setlocal formatoptions=tacqw
autocmd FileType vimwiki setlocal formatoptions=tacqw
" allow links to titles of 80 char on one line
autocmd bufreadpre /home/daniel/research/zkn/index.md setlocal textwidth=96

" bibtex-fzf  copy-pasted from readme: https://github.com/msprev/fzf-bibtex
function! s:bibtex_markdown_sink(lines)
    let r=system("bibtex-markdown ", a:lines)
    execute ':normal! a' . r
endfunction

function! s:bibtex_cite_sink_insert(lines)
    let r=system("bibtex-cite ", a:lines)
    execute ':normal! a' . r
    call feedkeys('a', 'n')
endfunction

" <leader>c for inserting biliography item
nnoremap <silent> <leader>c :call fzf#run({
  \ 'source': 'bibtex-ls',
  \ 'sink*': function('<sid>bibtex_markdown_sink'),
  \ 'up': '40%',
  \ 'options': '--ansi --layout=reverse-list --multi --prompt "Markdown> "'})<CR>

" @@ in insert mode will search the bibliography, and insert a reference like
" @bollmerKnowledgeWeHave2018
inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
  \ 'source': 'bibtex-ls',
  \ 'sink*': function('<sid>bibtex_cite_sink_insert'),
  \ 'up': '40%',
  \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>

" vim-lsp
nmap <C-]> :LspDefinition<return>
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_settings_filetype_javascript = ['typescript-language-server']
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('/tmp/vim-lsp.log')
" let g:asyncomplete_log_file = expand('/tmp/vim-lsp-asyncomplete.log')
" code actions showing up all over the place
let g:lsp_document_code_action_signs_enabled = 0

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
