" CamelCase motion
Plug 'chaoren/vim-wordmotion' " {{{
  " let g:wordmotion_prefix = '\'
"}}}

" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim' "{{{
  map ; <Plug>(clever-f-repeat-forward)
  map , <Plug>(clever-f-repeat-back)
"}}}

Plug 'easymotion/vim-easymotion' "{{{
  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_enter_jump_first = 1
  map = <Plug>(easymotion-prefix)
  map <M-f> =f
  map <M-b> =F
"}}}

" Plugin to toggle, display and navigate marks
" m<Space> Delete all marks from the current buffer
" m/ Open location list and display marks from current buffer
" ]` Jump to next mark
" [` Jump to prev mark
Plug 'kshenoy/vim-signature'

" A simple function navigator for ctrlp.vim
Plug 'tacahiroy/ctrlp-funky' "{{{
  let g:ctrlp_funky_syntax_highlight = 1

  nnoremap <Leader>fu :CtrlPFunky<Cr>
  " narrow the list down with a word under cursor
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" }}}

" readline mappings in insert/command line mode
Plug 'tpope/vim-rsi'

" Directory viewer for Vim
" nmap - <Plug>(dirvish_up)
Plug 'justinmk/vim-dirvish' "{{{
  " show dirs at top, hidden first
  let g:dirvish_mode = ':sort | sort ,^.*/,'

  " override :Explore :Sexplore :Vexplore
  let g:loaded_netrwPlugin = 1
  command! -nargs=? -complete=dir Explore Dirvish <args>
  command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
  command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
"}}}

" Smooth scrolling for Vim done right
Plug 'psliwka/vim-smoothie'

" Plug 'yuttie/comfortable-motion.vim'


"A lightweight Vim/Neovim plugin to display buffers and tabs in the tabline
Plug 'pacha/vem-tabline' "{{{
  let g:vem_tabline_show=2
" }}}

" Lightning fast left-right movement in Vim
" Plug 'unblevable/quick-scope'

" DOESN'T WORK
" Plug 'kristijanhusak/vim-dirvish-git'

" Ranger integration in vim and neovim
" Plug 'francoiscabrol/ranger.vim' "{{{
  " let g:ranger_map_keys = 0
  " let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
" }}}

" The BClose Vim plugin for deleting a buffer without closing the window
" (ranger.vim dependency to close buffer while opening directory in ranger)
" Plug 'rbgrouleff/bclose.vim' "{{{
  " let g:bclose_no_plugin_maps = 1
"}}}
