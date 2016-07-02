
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
source ~/vimfiles/aucmds.vim

runtime macros/matchit.vim

filetype plugin indent on
syntax on

nohlsearch   " When sourcing this file, do not immediately turn on highlighting

execute "set titleold=".hostname()

command! Bclose call <SID>BufcloseCloseIt()   " Don't close window, when deleting a buffer

" ===============================================================================
" FUNCTIONS
" ===============================================================================

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

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

" --------------------------------------------------------------------------------

call ToggleHiddenAll()
call togglebg#map("<F12>")

let g:molokai_original=0      " use a darker background
colorscheme molokai

source ~/vimfiles/keybindings/map.vim
source ~/vimfiles/keybindings/leader.vim
source ~/vimfiles/highlight.vim
