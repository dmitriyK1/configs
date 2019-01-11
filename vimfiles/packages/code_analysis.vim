" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
"
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ }
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>

Plug 'ludovicchabant/vim-gutentags' "{{{
  let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor", ".git", "node_modules", "*.vim/bundle/*"]
"}}}

" Plug 'jsfaint/gen_tags.vim'

" Asynchronous Lint Engine
Plug 'w0rp/ale' "{{{
  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \}
  let g:ale_linters = {
  \   'python': ['flake8'],
  \   'javascript': ['eslint'],
  \}
  let g:ale_fix_on_save = 1
  let g:ale_linters_explicit = 1
  let g:ale_set_highlights = 0
  " nmap <C-1> <Plug>ALEPrevious
  nmap <silent> ]E :ALENextWrap<CR>
  nmap <silent> [E :ALEPreviousWrap<CR>
  " Write this in your vimrc file
  " let g:ale_set_loclist = 0
  " let g:ale_set_quickfix = 1

  " let g:ale_open_list = 1
  " Set this if you want to.
  " This can be useful if you are combining ALE with
  " some other plugin which sets quickfix errors, etc.
  " let g:ale_keep_list_window_open = 0
" }}}
