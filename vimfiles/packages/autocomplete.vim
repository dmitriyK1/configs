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

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag' "{{{
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.ts,*.tsx,*.html.erb,*.md'
"}}}

" auto-closer - insert or delete brackets, parens, quotes in pair
" Shortcuts:
"   <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"   <BS>  : Delete brackets in pair
"   <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"   <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"   <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"   <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
Plug 'jiangmiao/auto-pairs' " {{{
  let g:AutoPairsMultilineClose = 0
  let g:AutoPairsShortcutToggle = ''
  let g:AutoPairsShortcutJump = ''
" }}}
