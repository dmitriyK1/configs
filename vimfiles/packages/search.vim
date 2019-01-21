" Use your favorite grep tool (ag, ack, git grep, ripgrep, pt, sift, findstr,
" grep) to start an asynchronous search. All matches will be put in a quickfix
" or location list.
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] } "{{{
"  Useful examples are gsW, gsiw, or gsi".
  " In visual mode, it uses the current selection.
  nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)

  nmap <leader>vv <plug>(GrepperOperator)iw
  xmap <leader>vv <plug>(GrepperOperator)iw
"}}}

Plug 'dyng/ctrlsf.vim' "{{{
  map <leader>sf :CtrlSF <Right>
"}}}

" improved */# search
Plug 'haya14busa/vim-asterisk' "{{{
  let g:asterisk#keeppos = 1
" }}}

" vim search status (similar to indexedsearch)
Plug 'osyo-manga/vim-anzu' "{{{
  let g:anzu_enable_CursorMoved_AnzuUpdateSearchStatus = 1
" }}}

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
map <leader>/ <Plug>(incsearch-fuzzy-/)
map <leader>? <Plug>(incsearch-fuzzy-?)
map <leader>g/ <Plug>(incsearch-fuzzy-stay)

Plug 'haya14busa/is.vim' "{{{
  " star (*) without cursor move:
  " map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
  " map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
  " map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
  " map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)

  map *  <Plug>(asterisk-*)<Plug>(is-nohl-1)
  map g* <Plug>(asterisk-g*)<Plug>(is-nohl-1)
  map #  <Plug>(asterisk-#)<Plug>(is-nohl-1)
  map g# <Plug>(asterisk-g#)<Plug>(is-nohl-1)
  map n <Plug>(is-nohl)<Plug>(anzu-mode-n)
  map N <Plug>(is-nohl)<Plug>(anzu-mode-N)
  "}}}

" incrementally highlights ALL pattern matches unlike default 'incsearch'
" Plug 'haya14busa/incsearch.vim' "{{{
"   let g:incsearch#auto_nohlsearch = 1
"   let g:incsearch#do_not_save_error_message_history = 1
"   let g:incsearch#separate_highlight = 1
"   " let g:incsearch#magic = '\v' " very magic
"
"   " search autocomplete
"   augroup incsearch-keymap
"       autocmd!
"       autocmd VimEnter * call s:incsearch_keymap()
"   augroup END
"   function! s:incsearch_keymap()
"       IncSearchNoreMap <Tab> <Over>(buffer-complete)
"       IncSearchNoreMap <S-Tab> <Over>(buffer-complete-prev)
"   endfunction
"
"   map /  <Plug>(incsearch-forward)
"   map ?  <Plug>(incsearch-backward)
"   map g/ <Plug>(incsearch-stay)
"
"   " map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
"   " map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
"   map n <Plug>(incsearch-nohl)<Plug>(anzu-mode-n)
"   map N <Plug>(incsearch-nohl)<Plug>(anzu-mode-N)
"
"   " map *  <Plug>(incsearch-nohl-*)
"   " map g* <Plug>(incsearch-nohl-g*)
"   " map #  <Plug>(incsearch-nohl-#)
"   " map g# <Plug>(incsearch-nohl-g#)
"
"   map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
"   map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
"   map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
"   map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
"
"   map z*  <Plug>(incsearch-nohl0)<Plug>(asterisk-z*)
"   map gz* <Plug>(incsearch-nohl0)<Plug>(asterisk-gz*)
"   map z#  <Plug>(incsearch-nohl0)<Plug>(asterisk-z#)
"   map gz# <Plug>(incsearch-nohl0)<Plug>(asterisk-gz#)
" "}}}
