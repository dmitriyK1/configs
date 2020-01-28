" Delete buffers and close files in Vim without closing your windows or messing up your layout
" :Bdelete
" Plug 'moll/vim-bbye', { 'on': 'Bdelete' } "{{{
  " map <silent> <leader>ad :bufdo :Bdelete<CR>
  " map <silent> <leader>d :Bdelete<CR>
" }}}

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' } "{{{
  let g:sayonara_confirm_quit = 1
  map <silent> <leader>c :Sayonara<CR>
" }}}

" CtrlP plugin: Filetype finder and setter
Plug 'endel/ctrlp-filetype.vim' "{{{
  silent! nnoremap <unique> <silent> <Leader>F :CtrlPFiletype<CR>
" }}}

" Fast vim CtrlP matcher based on python
Plug 'FelikZ/ctrlp-py-matcher'

" A CtrlP matcher, specialized for paths.
" requires `brew install boost-python` & ~/.vim/plugged/cpsm/install.sh
Plug 'nixprime/cpsm'

" Freaky fast fuzzy finder for (denite.nvim/CtrlP matcher) for vim/neovim
" Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}} "{{{
  " let g:fruzzy#usenative = 1
"}}}

" Fuzzy file, buffer, mru, tag, etc finder
" <c-v> - open file in vertical split
" <c-x> - open file in horizontal split
Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_extensions = ['filetype', 'funky', 'undo', 'dir']
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_open_multiple_files = '1jr'
  let g:ctrlp_max_files = 0
  let g:ctrlp_lazy_update = 50
  " let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  let g:ctrlp_match_func = { 'match': 'cpsm#CtrlPMatch' }
  " let g:ctrlp_match_func = {'match': 'fruzzy#ctrlp#matcher'}
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
  " let g:ctrlp_working_path_mode = 0
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
  let g:ctrlp_user_command = 'fd --type file --hidden --follow --exclude .git'

  nnoremap <silent> <leader>b :CtrlPBuffer<cr>
  nnoremap <silent> <leader>l :CtrlPLine<cr>
  nnoremap <silent> <leader>r :CtrlPMRUFiles<cr>
  nnoremap <silent> <C-q> :CtrlP .<cr>
"}}}

" NOTE: Broken
" Plug 'jasoncodes/ctrlp-modified.vim'

Plug 'fisadev/vim-ctrlp-cmdpalette' "{{{
  " let g:ctrlp_cmdpalette_execute=1
  " TODO: needs remapping
  nmap <silent> <leader>P :CtrlPCmdPalette<CR>
"}}}

" An extension to ctrlp.vim for deleting open buffers
" Open ctrlp in buffer mode (c-p c-b), filter as needed, navigate to a buffer you wish to close and press c-@ (c-2). The buffer will be deleted and will disappear from the list.
" You may also mark multiple buffers with c-z and then close them all at once with a single press of c-@.
Plug 'd11wtq/ctrlp_bdelete.vim'

" start screen
Plug 'mhinz/vim-startify' "{{{
  let g:startify_custom_header = []
  let g:startify_change_to_vcs_root = 1 " Change to VCS root on file load.

  let g:startify_session_autoload = 1 " load session file if it exists in a dir where Vim started
  let g:startify_session_persistence = 1 " automatically save session on exit
" }}}
