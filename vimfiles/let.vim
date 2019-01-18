" --------------------------------------------------------------------------------
" Netrw settings start
" --------------------------------------------------------------------------------
" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1
" absolute width of netrw window
let g:netrw_winsize = -28

" do not display info on the top of window
let g:netrw_banner = 0

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" hide vim swap files
let g:netrw_list_hide='.*\.swp$'

" open files in left window by default
let g:netrw_chgwin=1

let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

let g:netrw_dirhistmax=100
let g:netrw_altfile=1
let g:netrw_chgwin = winnr()
let g:netrw_retmap = 1
let g:netrw_home = $HOME."/.cache"
let g:netrw_liststyle=0
" --------------------------------------------------------------------------------
" Netrw settings end
" --------------------------------------------------------------------------------

let g:is_nvim=has('nvim')

let g:oldcmdline = [ ]

" let mapleader=","
" let maplocalleader=","

let mapleader=" "
let maplocalleader=" "

" for ToggleHiddenAll
let g:hidden_all = 1

" Disable some built in plugins.
" As dicussed in https://www.reddit.com/r/vim/comments/7anxss
" https://github.com/rbtnn/vim-gloaded
let g:loaded_getscript         = 1 "$VIMRUNTIME/autoload/getscript.vim
let g:loaded_getscriptPlugin   = 1 "$VIMRUNTIME/plugin/getscriptPlugin.vim
let g:loaded_vimball           = 1 "$VIMRUNTIME/autoload/vimball.vim
let g:loaded_vimballPlugin     = 1 "$VIMRUNTIME/plugin/vimballPlugin.vim
