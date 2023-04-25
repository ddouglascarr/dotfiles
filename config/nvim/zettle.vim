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
