
" TODO: add automatic text wrap for plain text files
"
" TODO: add colorschemes to vimfiles instead of plugins

" TODO: remove plugin-less autocompletion

" TODO: fix % not working on braces bug ( ) in html files

" TODO: add plugins lazy-loading
" https://github.com/saaguero/dotvim/blob/44c3bbc9b2996fcf7e86f624785a3a06ca978167/.vimrc#L60-L69

" TODO: ? try to make snail default keybindings work ?

" TODO: make vimcompletesme work

" TODO: add textobject plugins

" TODO: remove custom duplicated functionality, that already present in plugins

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://www.destroyallsoftware.com/talks    ( about regular expressions )
" https://www.amazon.com/Mastering-Regular-Expressions-Jeffrey-Friedl/dp/0596528124?ie=UTF8&*Version*=1&*entries*=0
" https://www.infoq.com/presentations/regex
" http://vimdoc.sourceforge.net/htmldoc/pattern.html

" http://blog.ezyang.com/2010/03/vim-textwidth/

" http://chibicode.com/vimrc/

" consider using
" let g:pymode_rope = 0
" https://github.com/davidhalter/jedi-vim

" Plug 'scrooloose/syntastic'
" let g:syntastic_check_on_open=1

" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               To remember                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search fold bindings:
"
" <leader>ig  toggle indent guides
"
" <Leader>z
" fold away lines not matching the last search pattern.

" <Leader>iz
" fold away lines that do match the last search pattern (inverse folding).

" <Leader>Z
" try hard to restore the previous fold settings"
"
"
"
" earlier 5m
" later 1m
" U         undo a change on one line

" gu        lowercase selection
" gU        uppercase selection
" g~ / ~    invert case of selection

" gi        go to last position of insert mode
" @:        repeat last colon command
" :CoffeeMake \ :make
" :CoffeeWatch [vert[ical]] [WINDOW-SIZE]
"
" Occur.vim:
  " <Leader>oc   - Occur (Search current buffer)
  " <Leader>mo   - Moccur (Search all buffers)
  " <Leader>*    - StarOccur (Search all buffers for occurrence of the word nearest to the cursor)
  " <Space> : Set current window height to highest.
  " x : Display the occurence the current line.
  " q : Quit the quickfix window.
"
" :grep <patter> <file name pattern>
" example: :grep colorscheme %          (search in current file)

" :Ack <pattern> <file>

" Ctrl-P
" Press <c-f> and <c-b> to cycle between modes.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.

" Open man page for word under cursor
" SHIFT+k

" :Wopen http://vim.org
" :Wsearch google how to learn vim
" <leader>ws searches WORD under cursor, while the same mapping in visual mode searches current visual selection

" https://github.com/tpope/vim-surround
" ysiw (     // surround an inner word with ()
" yss (      // surround a line with ()


" Python-mode
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Good configs list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tpope/tpope/blob/master/.vimrc
" https://github.com/paulirish/dotfiles/blob/master/.vimrc
" https://github.com/saaguero/dotvim/blob/master/.vimrc
" https://github.com/skwp/dotfiles/tree/master/vim/settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: add package-specific let\set settings to packages.vim

source ~/vimfiles/let.vim
source ~/vimfiles/set.vim
source ~/vimfiles/conditionals.vim
source ~/vimfiles/packages.vim




runtime macros/matchit.vim

autocmd FileType netrw setl bufhidden=wipe

filetype plugin indent on
syntax on

" When sourcing this file, do not immediately turn on highlighting.
nohlsearch

execute "set titleold=".hostname()

" -------------------------------------------------------------------------
"               Prevent cursor from moving when leaving insert mode
" -------------------------------------------------------------------------
"let CursorColumnI = 0 "the cursor column position in INSERT
"autocmd InsertEnter * let CursorColumnI = col('.')
"autocmd CursorMovedI * let CursorColumnI = col('.')
"autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
" -------------------------------------------------------------------------


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



" nnoremap <tab> %
" vnoremap <tab> %

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()

"-----------------------------------------------------------------------------



" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()





au filetype help set nonumber






" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif


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





" ===============================================================================
" FUNCTIONS
" ===============================================================================

function! ConcealToggle()
    if &conceallevel == 0
        setlocal conceallevel=1
    else
        setlocal conceallevel=0
    endif
endfunction

function! <SID>saveUndoHistory(cmdline, cmdpos)
    if len(g:oldcmdline) == 0 || a:cmdline != g:oldcmdline[0][0]
        call insert(g:oldcmdline, [ a:cmdline, a:cmdpos ], 0)
    else
        let g:oldcmdline[0][1] = a:cmdpos
    endif
    if len(g:oldcmdline) > 100
        call remove(g:oldcmdline, 100)
    endif
endfunction


function! <SID>KillLine()
    call <SID>saveUndoHistory(getcmdline(), getcmdpos())
    let l:cmd = getcmdline()
    let l:rem = strpart(l:cmd, getcmdpos() - 1)
    if ('' != l:rem)
        let @c = l:rem
    endif
    let l:ret = strpart(l:cmd, 0, getcmdpos() - 1)
    call <SID>saveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! <SID>KillWord()
    call <SID>saveUndoHistory(getcmdline(), getcmdpos())
    let l:loc = strpart(getcmdline(), 0, getcmdpos() - 1)
    let l:roc = strpart(getcmdline(), getcmdpos() - 1)
    if (l:roc =~ '\v^\s*\w')
        let l:rem = matchstr(l:roc, '\v^\s*\w+')
    elseif (l:roc =~ '\v^\s*[^[:alnum:]_[:blank:]]')
        let l:rem = matchstr(l:roc, '\v^\s*[^[:alnum:]_[:blank:]]+')
    elseif (l:roc =~ '\v^\s+$')
        let @c = l:roc
        return l:loc
    else
        return getcmdline()
    endif
    let @c = l:rem
    let l:ret = l:loc . strpart(l:roc, strlen(l:rem))
    call <SID>saveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction


function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! StripTrailingWhitespace()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! s:NumberTextObject(whole)
    normal! v

    while getline('.')[col('.')] =~# '\v[0-9]'
        normal! l
    endwhile

    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
            normal! h
        endwhile
    endif
endfunction


" -------------------------------------------------------------------------
"  autosave\autoload sessions
" -------------------------------------------------------------------------

" Creates a session
" !! should have $HOME/.vim/sessions folder to work properly on all OSes
" should create a session file if not present (<leader>m)
function! MakeSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessiondir = $HOME . "/.vim/sessions"
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:sessionfile = b:sessiondir . '/session.vim'
  exe "mksession! " . b:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessiondir = $HOME . "/.vim/sessions"
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe "mksession! " . b:sessionfile
    echo "updating session"
  endif
endfunction

" Loads a session if it exists
function! LoadSession()
  if argc() == 0
    " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
    let b:sessiondir = $HOME . "/.vim/sessions"
    let b:sessionfile = b:sessiondir . "/session.vim"
    if (filereadable(b:sessionfile))
      exe 'source ' b:sessionfile
    else
      echo "No session loaded."
    endif
  else
    let b:sessionfile = ""
    let b:sessiondir = ""
  endif
endfunction

au VimEnter * nested :call LoadSession()
au VimLeave * :call UpdateSession()

" -------------------------------------------------------------------------
"               Source the vimrc file after saving it
" -------------------------------------------------------------------------

augroup reload_vimrc
  if has("autocmd")
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
  endif
augroup END

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" autocmd FileType html,css EmmetInstall
" let g:user_emmet_install_global = 0
" let g:user_emmet_expandabbr_key = '<tab>'


" Disable auto comments on a next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


autocmd FileType javascript vnoremap <buffer>  <c-f> : call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f>        : call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f>         : call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f>        : call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f>         : call RangeCSSBeautify()<cr>

" show quickfix window on compile errors
autocmd QuickFixCmdPost * nested cwindow | redraw!



" Map the conceal characters to their expanded forms.
" inoremap <silent> @ <C-r>=syntax_expand#expand("@", "this")<CR>
" inoremap <silent> # <C-r>=syntax_expand#expand("#", ".prototype.")<CR>
" inoremap <silent> < <C-r>=syntax_expand#expand_head("<", "return")<CR>

" ================================================================================
" Rainbow parentheses options start
" ================================================================================

" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
"
" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0
"
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" ================================================================================
" Rainbow parentheses options end
" ================================================================================

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" ensure SimpylFold init properly
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" in case of glitches
" au BufWriteCmd *.py write || :PymodeLint


au BufRead,BufNewFile *.cson set ft=coffee




call togglebg#map("<F12>")


function! ToggleHiddenAll()
    if g:hidden_all  == 0
        let g:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let g:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

call ToggleHiddenAll()


source ~/vimfiles/keybindings/map.vim




" Leader mappings
source ~/vimfiles/keybindings/leader.vim

" Ctrl mappings

" Alt mappings




autocmd Colorscheme * highlight FoldColumn guifg=bg guibg=bg

" from http://ku1ik.com/
colorscheme monokai2

source ~/vimfiles/highlight.vim
