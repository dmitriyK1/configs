function! ConcealToggle()
    if &conceallevel == 0
        setlocal conceallevel=1
    else
        setlocal conceallevel=0
    endif
endfunction

function! SaveUndoHistory(cmdline, cmdpos)
    if len(g:oldcmdline) == 0 || a:cmdline != g:oldcmdline[0][0]
        call insert(g:oldcmdline, [ a:cmdline, a:cmdpos ], 0)
    else
        let g:oldcmdline[0][1] = a:cmdpos
    endif
    if len(g:oldcmdline) > 100
        call remove(g:oldcmdline, 100)
    endif
endfunction


function! KillLine()
    call SaveUndoHistory(getcmdline(), getcmdpos())
    let l:cmd = getcmdline()
    let l:rem = strpart(l:cmd, getcmdpos() - 1)
    if ('' != l:rem)
        let @c = l:rem
    endif
    let l:ret = strpart(l:cmd, 0, getcmdpos() - 1)
    call SaveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! KillWord()
    call SaveUndoHistory(getcmdline(), getcmdpos())
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
    call SaveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction


function! BufcloseCloseIt()
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

function! NumberTextObject(whole)
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
