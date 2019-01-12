" allows to visually select increasingly larger regions of text using the same key combination
Plug 'terryma/vim-expand-region' "{{{
  map <M-s> <Plug>(expand_region_expand)
  map <M-d> <Plug>(expand_region_shrink)
  " vmap v <Plug>(expand_region_expand)
  " vmap <C-v> <Plug>(expand_region_shrink)
" }}}

" A Vim plugin to move function arguments (and other delimited-by-something items) left and right
Plug 'AndrewRadev/sideways.vim'

" Vim plugin: Create your own submodes
" (vim-fieldtrip dependency)
Plug 'kana/vim-submode'

" fieldtrip is a combination of the plugins submode and sideways
" By pressing fieldtrip_start_map, vim enters a sideways submode.
" `h` and `l` are then temporarily mapped to :SidewaysLeft and :SidewaysRight, `h` and `l` will cycle through the fields
" `d` will delete the motion <Plug>SidewaysArgumentTextobjA, `x` deletes the "inner" variant <Plug>SidewaysArgumentTextobjI
" By default, <esc> exits the submode
Plug 'tek/vim-fieldtrip' "{{{
  let g:fieldtrip_start_map="<leader>sw"
"}}}

" toggling settings mappings
Plug 'tpope/vim-unimpaired' "{{{
  autocmd VimEnter * nunmap ]x
  autocmd VimEnter * nunmap ]xx
  autocmd VimEnter * nunmap [x
  autocmd VimEnter * nunmap [xx
  autocmd VimEnter * xunmap ]x
  autocmd VimEnter * xunmap [x

  " Bubble single lines
  " map <M-k> [e
  " map <M-j> ]e
  " Bubble multiple lines
  " vmap <M-k> [egv
  " vmap <M-j> ]egv
" }}}

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" easily search for, substitute, and abbreviate multiple variants of a word
" MixedCase (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
Plug 'tpope/vim-abolish'

" A vim plugin that simplifies the transition between multiline and single-line code
  " gS to split a one-liner into multiple lines
  " gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
Plug 'AndrewRadev/splitjoin.vim'

" toggle true/false, && || etc
Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' } "{{{
  let g:switch_mapping = ""
  nnoremap <silent> g- :Switch<CR>
"}}}

" Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors' "{{{
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_exit_from_insert_mode=0
  " let g:multi_cursor_quit_key='<Esc>'
  let g:multi_cursor_quit_key='<C-c>'
  let g:multi_cursor_next_key='<C-d>'

  nnoremap <silent> <C-c> :call multiple_cursors#quit()<CR>
" }}}

" colon and semicolon insertion plugin
Plug 'lfilho/cosco.vim' "{{{
  autocmd FileType javascript,typescript,css,sh nnoremap <silent> <C-s> :call cosco#commaOrSemiColon()<CR>
  autocmd FileType javascript,typescript,css,sh inoremap <silent> <C-s> <c-o>:call cosco#commaOrSemiColon()<CR>
" }}}

" quoting/parenthesizing made simple
" ysiw(  surround an inner word with ( )
" yss(   surround a line with        ( )
Plug 'tpope/vim-surround'

" Comment plugin
Plug 'tomtom/tcomment_vim'

" Easy text exchange operator for Vim
" nmap cx <Plug>(Exchange)
" vmap X <Plug>(Exchange)
" nmap cxc <Plug>(ExchangeClear)
" nmap cxx <Plug>(ExchangeLine)
Plug 'tommcdo/vim-exchange'
