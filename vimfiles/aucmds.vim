autocmd FileType netrw setl bufhidden=wipe

" Resize splits when the window is resized
au VimResized * :wincmd =

" Cursorline {{{
  " Only show cursorline in the current window and in normal mode.
  " augroup cline
      " au!
      "au WinLeave * set nocursorline
      "au WinEnter * set cursorline
      "au InsertEnter * set nocursorline
      "au InsertLeave * set cursorline
  " augroup END
" }}}

augroup file_types
    autocmd!
    autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=markdown
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.ts set ft=typescript syntax=typescript
    autocmd BufRead,BufNewFile *.es6 set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
    autocmd BufRead,BufNewFile *.twig set ft=htmldjango
    autocmd BufRead,BufNewFile *.rabl set ft=ruby
    autocmd BufRead,BufNewFile *.jade set ft=jade
augroup END

" Autosave {{{
  autocmd FocusLost,BufLeave * silent! wall
  autocmd InsertLeave,CursorHold,CursorHoldI * if expand('%') != '' | silent! update | endif

  " messes undotree history every time split is switched
  " autocmd FocusLost,BufLeave * silent! DeleteTrailingWhitespace
" }}}

" return to command mode when focus is lost
" au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

au filetype help set nonumber

" Line Return {{{
  " Make sure Vim returns to the same line when you reopen a file.
  augroup line_return
      au!
      au BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \     execute 'normal! g`"zvzz' |
          \ endif
  augroup END
" }}}

" Source the vimrc file after saving it
augroup reload_vimrc
  if has("autocmd")
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
  endif
augroup END

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Disable auto comments on a next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" show quickfix window on compile errors
autocmd QuickFixCmdPost * nested cwindow | redraw!

au BufRead,BufNewFile *.cson set ft=coffee

autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg

" -------------------------------------------------------------------------
"               Prevent cursor from moving when leaving insert mode
" -------------------------------------------------------------------------
"let CursorColumnI = 0 "the cursor column position in INSERT
"autocmd InsertEnter * let CursorColumnI = col('.')
"autocmd CursorMovedI * let CursorColumnI = col('.')
"autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
" -------------------------------------------------------------------------

" automatically open quickfix window on :grep
" https://github.com/tpope/vim-fugitive
autocmd QuickFixCmdPost *grep* cwindow

" NOTE: will break session plugins (better to use keybinding to change to current directory)
" cnoremap cd. lcd %:p:h
" nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
autocmd BufEnter * silent! lcd %:p:h

 " Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" https://github.com/prettier/prettier
autocmd FileType javascript set formatprg=prettier\ --stdin
