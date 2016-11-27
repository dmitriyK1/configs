let g:is_nvim=has('nvim')

let g:oldcmdline = [ ]
let mapleader=","
let maplocalleader=","

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

" To disable the fallback to vim's indent file, set the following variable to be 0.
let g:autoformat_autoindent = 0

let g:jsx_ext_required = 0
let g:javascript_enable_domhtmlcss = 1

" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_return         = "⇚"
" let g:javascript_conceal_prototype      = "¶"
" let g:javascript_conceal_null           = "ø"
" let g:javascript_conceal_undefined      = "¿"
" let g:javascript_conceal_NaN            = "ℕ"
" let g:javascript_conceal_static         = "•"
" let g:javascript_conceal_super          = "Ω"
" let g:javascript_conceal_arrow_function = "⇒"
"
" let g:javascript_conceal_function       = "λ"
" let g:javascript_conceal_this           = "@"
" let g:javascript_conceal_return         = "<"
" let g:javascript_conceal_prototype      = "#"
" let g:javascript_conceal_infinity       = "∞"

let g:jsdoc_allow_input_prompt=1
let g:jsdoc_return_description=0
let g:jsdoc_enable_es6=1

let g:www_default_search_engine = 'google'

let g:SimpylFold_docstring_preview=1


" enable all Python syntax highlighting features
let python_highlight_all = 1

let g:bubbles_leader = '<M>'


let g:indent_guides_color_change_percent = 5
" let g:indent_guides_enable_on_vim_startup = 1

let g:hidden_all = 0


" let g:multi_cursor_exit_from_insert_mode=0
" let g:multi_cursor_quit_key='<C-c>'
let g:multi_cursor_next_key='<C-d>'

" let g:user_emmet_install_global = 0
" let g:user_emmet_expandabbr_key = '<tab>'

let g:molokai_original=0      " use a darker background

let g:startify_custom_header = []

let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

let g:flow#enable = 0
let g:flow#errjmp = 1

let@s="isnippetendsnippetkkA  "
