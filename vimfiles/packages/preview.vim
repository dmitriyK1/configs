" The missing preview window for vim
" PreviewClose - CTRL+W z
Plug 'skywind3000/vim-preview'

" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers
Plug 'junegunn/vim-peekaboo' "{{{
  let g:peekaboo_ins_prefix = '<c-x>'
" }}}

" :substitute preview
Plug 'osyo-manga/vim-over' "{{{
  map <silent> <leader>% :OverCommandLine<CR>%s/
" }}}
