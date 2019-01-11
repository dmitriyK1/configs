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
