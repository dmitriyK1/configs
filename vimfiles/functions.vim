" for command line shortcuts <C-k>
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

" for command line shortcuts <M-d>
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

" for KillLine \ KillWord
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

" gv in visual mode to vimgrep selection
" <leader>r in visual mode to search & replace selection
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" for VisualSelection
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" change current conceallevel
function! ConcealToggle()
    if &conceallevel == 0
        setlocal conceallevel=1
    else
        setlocal conceallevel=0
    endif
endfunction

" used in vimrc.local to hide all interface elements on startup
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
