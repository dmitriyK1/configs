" autocompletion
Plug 'ervandew/supertab' " {{{
  set completeopt+=longest

  let g:SuperTabDefaultCompletionType = '<C-n>'
  let g:SuperTabLongestHighlight = 1
  let g:SuperTabLongestEnhanced = 1
" }}}

" autocomplete plugin - autoopen popup when 2 letters typed
Plug 'exvim/ex-autocomplpop' "{{{
  " prevents adding new line when choosing item from autocomplete dropdown
  inoremap <expr> <CR> pumvisible()
        \ ? "\<C-y>"
        \ : "\<C-g>u\<CR>"
" }}}
