" Delete buffers and close files in Vim without closing your windows or messing up your layout
" :Bdelete
Plug 'moll/vim-bbye', { 'on': 'Bdelete' } "{{{
  map <silent> <leader>ad :bufdo :Bdelete<CR>
  map <silent> <leader>d :Bdelete<CR>
" }}}

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' } "{{{
  let g:sayonara_confirm_quit = 1
  map <silent> <leader>c :Sayonara<CR>
" }}}
