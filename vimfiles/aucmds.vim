autocmd FileType netrw setl bufhidden=wipe

autocmd FileType javascript,css,sh nnoremap <silent> <C-s> :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,sh inoremap <silent> <C-s> <c-o>:call cosco#commaOrSemiColon()<CR>


" Resize splits when the window is resized
au VimResized * :wincmd =

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    "au WinLeave * set nocursorline
    "au WinEnter * set cursorline
    "au InsertEnter * set nocursorline
    "au InsertLeave * set cursorline
augroup END
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


au FocusLost * silent! wa
" au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

au filetype help set nonumber

" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}

au VimEnter * nested :call LoadSession()
au VimLeave * :call UpdateSession()



" Source the vimrc file after saving it

augroup reload_vimrc
  if has("autocmd")
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
  endif
augroup END

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" autocmd FileType html,css EmmetInstall

" Disable auto comments on a next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


autocmd FileType javascript vnoremap <buffer>  <c-f> : call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f>        : call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f>         : call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f>        : call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f>         : call RangeCSSBeautify()<cr>

" show quickfix window on compile errors
autocmd QuickFixCmdPost * nested cwindow | redraw!

" ensure SimpylFold init properly
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" in case of glitches
" au BufWriteCmd *.py write || :PymodeLint


au BufRead,BufNewFile *.cson set ft=coffee

autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg
autocmd Colorscheme * highlight Conceal guibg=black guifg=red

" -------------------------------------------------------------------------
"               Prevent cursor from moving when leaving insert mode
" -------------------------------------------------------------------------
"let CursorColumnI = 0 "the cursor column position in INSERT
"autocmd InsertEnter * let CursorColumnI = col('.')
"autocmd CursorMovedI * let CursorColumnI = col('.')
"autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
" -------------------------------------------------------------------------

" autocmd FileType javascript inoremap <silent> <buffer> @ <C-r>=syntax_expand#expand("@", "this")<CR>
" autocmd FileType javascript inoremap <silent> <buffer> # <C-r>=syntax_expand#expand("#", ".prototype.")<CR>
" autocmd FileType javascript inoremap <silent> <buffer> < <C-r>=syntax_expand#expand_head("<", "return")<CR>

" automatically open quickfix window on :grep
" https://github.com/tpope/vim-fugitive
autocmd QuickFixCmdPost *grep* cwindow
