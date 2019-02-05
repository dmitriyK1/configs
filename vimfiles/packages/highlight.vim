" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" Vim plugin for selectively illuminating other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate' "{{{
 " Don't highlight word under cursor (default: 1)
  " let g:Illuminate_highlightUnderCursor = 0

  " disable for specified filetypes
  let g:Illuminate_ftblacklist = ['nerdtree']
"}}}

Plug 'ap/vim-css-color' " Highlight background of CSS colors.

" Disables search highlighting when you are done searching and re-enables it when you search again.
Plug 'romainl/vim-cool'

" A Vim plugin that always highlights the enclosing html/xml tags
Plug 'valloric/MatchTagAlways'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace' "{{{
  let g:strip_whitespace_on_save = 1
  let g:strip_whitespace_confirm = 0
  let g:better_whitespace_verbosity = 1

  nnoremap ]w :NextTrailingWhitespace<CR>
  nnoremap [w :PrevTrailingWhitespace<CR>
"}}}

" vim-interestingwords allows you to highlight and navigate through (multiple) different words in a buffer
Plug 'vasconcelloslf/vim-interestingwords' "{{{
  let g:interestingWordsDefaultMappings = 0

  nnoremap <silent> <leader>k :call InterestingWords('n')<CR>
  nnoremap <silent> <leader>K :call UncolorAllWords()<CR>

  " hack to allow word navigation (triggers navigation between search results otherwise)
  nnoremap µ <Plug>InterestingWords

  nnoremap <silent> <M-p> :call WordNavigation(0)<CR>
  nnoremap <silent> <M-n> :call WordNavigation(1)<CR>
"}}}

" vim match-up: even better % navigate and highlight matching words modern matchit and matchparen replacement
" i% the inside of an any block
" a% an any block.
Plug 'andymass/vim-matchup' "{{{
  let g:matchup_matchparen_status_offscreen = 1 " show opening/closing in status line
  let g:matchup_matchparen_deferred = 1
  let g:matchup_matchparen_hi_surround_always = 1
"}}}

" jsx syntax highlight
Plug 'MaxMEllon/vim-jsx-pretty' "{{{
  let g:vim_jsx_pretty_colorful_config = 1
" }}}

" language pack
" :CoffeeMake \ :make
" :CoffeeWatch [vert[ical]] [WINDOW-SIZE]
Plug 'sheerun/vim-polyglot' "{{{
  let g:polyglot_disabled = ['jsx']
  " let g:jsx_ext_required = 0

  let g:javascript_plugin_jsdoc = 1
  let g:javascript_plugin_ngdoc = 1
  let g:javascript_plugin_flow = 1
  let g:javascript_enable_domhtmlcss = 1
  " let g:javascript_conceal_function       = "ƒ"
  " let g:javascript_conceal_return         = "⇚"
  " let g:javascript_conceal_prototype      = "¶"
  " let g:javascript_conceal_null           = "ø"
  " let g:javascript_conceal_undefined      = "¿"
  " let g:javascript_conceal_NaN            = "ℕ"
  " let g:javascript_conceal_static         = "•"
  " let g:javascript_conceal_super          = "Ω"
  " let g:javascript_conceal_arrow_function = "⇒"
  "
  " let g:javascript_conceal_function       = "λ"
  " let g:javascript_conceal_this           = "@"
  " let g:javascript_conceal_return         = "<"
  " let g:javascript_conceal_prototype      = "#"
  " let g:javascript_conceal_infinity       = "∞"
" }}}
