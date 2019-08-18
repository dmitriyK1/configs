" highlight conflict markers.
" jump among conflict markers.
" jump within conflict block; beginning, separator and end of the block.
" resolve conflict with various strategies; themselves, ourselves, none and both strategies.
" [x and ]x mappings are defined as default
" This plugin defines mappings as default:
" ct for themselves
" co for ourselves
" cn for none
" cb for both
Plug 'rhysd/conflict-marker.vim' "{{{
  nmap <buffer><Up> <Plug>(conflict-marker-prev-hunk)
  nmap <buffer><Down> <Plug>(conflict-marker-next-hunk)
"}}}

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks
  " nmap [c <Plug>GitGutterPrevHunk
  " nmap ]c <Plug>GitGutterNextHunk
  " nmap <Leader>hs <Plug>GitGutterStageHunk
  " nmap <Leader>hu <Plug>GitGutterUndoHunk
  " nmap <Leader>hp <Plug>GitGutterPreviewHunk
Plug 'airblade/vim-gitgutter' "{{{
  " let g:gitgutter_realtime = 0
  " let g:gitgutter_highlight_lines = 1

  nmap <silent> <C-g> :GitGutterToggle<CR>
  nnoremap <silent> <leader>gf :GitGutterFold<CR>
  xmap ih <Plug>GitGutterTextObjectInnerVisual
  xmap ah <Plug>GitGutterTextObjectOuterVisual

  " double git gutter symbols for better visibility
  let g:gitgutter_sign_added = '✚✚'
  " let g:gitgutter_sign_modified = '••'
  let g:gitgutter_sign_modified = '✱✱'
  let g:gitgutter_sign_removed = '✘✘'
  " let g:gitgutter_sign_removed_first_line = '^^'
  let g:gitgutter_sign_removed_first_line = '▲▲'
  " let g:gitgutter_sign_modified_removed = '➜_'
  let g:gitgutter_sign_modified_removed = '✱_'

  " let g:gitgutter_sign_added = '✚'
  " let g:gitgutter_sign_modified = '➜'
  " let g:gitgutter_sign_removed = '✘'
  " let g:gitgutter_sign_removed_first_line = '^'
  " let g:gitgutter_sign_modified_removed = '➜_'

  " let g:gitgutter_sign_added = '✚'
  " let g:gitgutter_sign_modified = '✔'
  " let g:gitgutter_sign_removed = '✘'
  " let g:gitgutter_sign_removed_first_line = '^'
  " let g:gitgutter_sign_modified_removed = '~_'
" }}}

" Ease your git worflow within vim
" <leader>M Open Magit buffer
Plug 'jreybert/vimagit' "{{{
  let g:magit_default_fold_level = 2
  let g:magit_refresh_gitgutter = 1
" }}}

" Git wrapper
Plug 'tpope/vim-fugitive' "{{{
  nnoremap <leader>ga :Git add %<CR><CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gc :Gcommit -v -q<CR>
  nnoremap <leader>gC :Gcommit -v -q --no-verify<CR>
  nnoremap <leader>go :Git checkout %<CR>
  " nnoremap <leader>gt :Gcommit -v -q %:p<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>gD :Git diff --staged<CR>
  nnoremap <leader>ge :Gedit <Right>
  nnoremap <leader>gv :Gvsplit <Right>
  " nnoremap <leader>gr :Gread<CR>
  nnoremap <leader>gre :Git reset %<CR>
  " nnoremap <leader>gw :Gwrite<CR><CR>
  " nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
  nnoremap <leader>gl :Git log -p --stat --no-merges<CR>
  nnoremap <leader>gh :Git show<CR>
  nnoremap <leader>gw :Git show<CR>
  " nnoremap <leader>gp :Ggrep<Space>
  " nnoremap <leader>gm :Gmove<Space>
  " nnoremap <leader>gb :Git branch<Space>
  " nnoremap <leader>go :Git checkout<Space>
  nnoremap <leader>gps :Dispatch! git push<CR>
  nnoremap <leader>gpS :Dispatch! git push --no-verify<CR>
  nnoremap <leader>gpl :Dispatch! git pull<CR>
" }}}

" git runtime files
Plug 'tpope/vim-git'

" gitk for Vim
Plug 'gregsexton/gitv'

" asynchronous build and test dispatcher
" (used for fugitive :Dispatch)
Plug 'tpope/vim-dispatch'

" Git branch searching using CtrlP.vim
Plug 'imkmf/ctrlp-branches' "{{{
  nmap <silent> <leader>gb :CtrlPBranches<CR>
"}}}

" A Vim plugin for more pleasant editing on commit messages
Plug 'rhysd/committia.vim'

" Vim and Neovim plugin to reveal the commit messages under the cursor
" <Leader>gm
Plug 'rhysd/git-messenger.vim'
