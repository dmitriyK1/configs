" A Vim plugin that provides text objects and motions for Python classes, methods, functions, and doc strings
Plug 'jeetsukumaran/vim-pythonsense'

" Vim plugin to sort python imports using https://github.com/timothycrosley/isort
" <C-i> for visual selection
Plug 'fisadev/vim-isort'

" :Autoformat
" requires `pip install --upgrade autopep8` (supports formatting ranges - based on visual selection)
Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' } "{{{
  " To disable the fallback to vim's indent file, set the following variable to be 0.
  let g:autoformat_autoindent = 0

  " noremap <F3> :Autoformat<cr>
  noremap <leader>A :Autoformat<CR>
" }}}

" Python code folding for Vim
Plug 'tmhedberg/SimpylFold', { 'for': 'python' } "{{{
  let g:SimpylFold_docstring_preview=1

  " ensure SimpylFold init properly
  autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
  autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" }}}

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" The interactive scratchpad for hackers.
" Codi [filetype] activates Codi for the current buffer, using the provided filetype or the buffer's filetype.
" Codi! deactivates Codi for the current buffer.
Plug 'metakirby5/codi.vim'

Plug 'python-mode/python-mode', { 'branch': 'develop' } "{{{
  " enable python3-syntax checking
  let g:pymode_python = 'python3'

  " in case of glitches
  au BufWriteCmd *.py write || :PymodeLint

  " NOTE: consider using
  " let g:pymode_rope = 0
  " https://github.com/davidhalter/jedi-vim
" }}}

" Plug 'davidhalter/jedi-vim'

" This indentation script for python tries to match more closely what is suggested in PEP 8
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
