" BREAKS BRACES % NAVIGATION
" A Vim plugin to provide %-style motion for single / double quotation marks, backticks and pipe
" Plug 'airblade/vim-matchquote'

" CONFLICTS WITH TAB COMPLETION
" wisely add "end" in ruby, endfunction/endif/more in vim script, etc http://www.vim.org/scripts/script.php…
" Plug 'tpope/vim-endwise'

" Plug 'wincent/command-t', {'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' } "{{{
"   let g:CommandTWildIgnore=&wildignore . ",*/bower_components". ",*/node_modules"
"
  " inoremap <C-t> <C-c>:CommandT<CR>
  " vnoremap <C-t> <C-c>:CommandT<CR>
  " nnoremap <C-t> :CommandT<CR>
" "}}}

" USE :vimgrep <pattern> % / :CtrlPLine (,l) instead
" Show all lines in the buffer containing word (grep buffer)
" <Leader>oc   - Occur       Search current buffer
" <Leader>mo   - Moccur      Search all buffers
" <Leader>*    - StarOccur    Search all buffers for occurrence of the word nearest to the cursor
" <Space>      : Set current window height to highest.
" x            : Display the occurence the current line.
" q            : Quit the quickfix window.
" Plug 'vim-scripts/occur.vim'

" USE UNIMPAIRED INSTEAD
" text bubbling feature
" Plug 'frace/vim-bubbles' "{{{
"   let g:bubbles_leader = '<M>'
" }}}

" Semantic highlight
" Plug 'jaxbot/semantic-highlight.vim'

" Plug 'unblevable/quick-scope' "{{{
  " let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" }}}

" Plug 'junegunn/limelight.vim' "{{{
  " autocmd VimEnter * Limelight
" }}}

" Plug 'junegunn/goyo.vim' "{{{
"   autocmd! User GoyoEnter Limelight
"   autocmd! User GoyoLeave Limelight!
" }}}

" Cursor line number color = Airline mode color
" Plug 'ntpeters/vim-airline-colornum'

" status line
" Plug 'itchyny/lightline.vim' "{{{
"   " from https://github.com/itchyny/lightline.vim
"   let g:lightline = {
"         \ 'component': {
"         \   'lineinfo': ' %3l:%-2v',
"         \ },
"         \ 'active': {
"         \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
"         \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
"         \ },
"         \ 'component_function': {
"         \   'fugitive': 'LightlineFugitive',
"         \   'readonly': 'LightlineReadonly',
"         \   'modified': 'LightlineModified',
"         \   'filename': 'LightlineFilename',
"         \   'fileformat': 'LightlineFileformat',
"         \   'filetype': 'LightlineFiletype',
"         \   'fileencoding': 'LightlineFileencoding',
"         \   'mode': 'LightlineMode',
"         \   'ctrlpmark': 'CtrlPMark'
"         \ },
"         \ 'component_expand': {
"         \   'syntastic': 'SyntasticStatuslineFlag',
"         \ },
"         \ 'component_type': {
"         \   'syntastic': 'error',
"         \ },
"         \ 'separator': { 'left': '', 'right': '' },
"         \ 'subseparator': { 'left': '', 'right': '' }
"         \ }
"
"   function! LightlineModified()
"   return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
"   endfunction
"
"   function! LightlineFugitive()
"   try
"       if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
"       let mark = ''
"       let branch = fugitive#head()
"       return branch !=# '' ? mark.branch : ''
"       endif
"   catch
"   endtry
"   return ''
"   endfunction
"
"   function! LightlineReadonly()
"   return &ft !~? 'help' && &readonly ? '' : ''
"   endfunction
"
"   function! LightlineFilename()
"       let fname = expand('%:t')
"       return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
"                   \ fname == '__Tagbar__' ? g:lightline.fname :
"                   \ fname =~ '__Gundo\|NERD_tree' ? '' :
"                   \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
"                   \ &ft == 'unite' ? unite#get_status_string() :
"                   \ &ft == 'vimshell' ? vimshell#get_status_string() :
"                   \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
"                   \ ('' != fname ? fname : '[No Name]') .
"                   \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
"   endfunction
"
"   function! LightlineFileformat()
"   return winwidth(0) > 70 ? &fileformat : ''
"   endfunction
"
"   function! LightlineFiletype()
"   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
"   endfunction
"
"   function! LightlineFileencoding()
"   return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
"   endfunction
"
"   function! LightlineMode()
"   let fname = expand('%:t')
"   return fname == '__Tagbar__' ? 'Tagbar' :
"           \ fname == 'ControlP' ? 'CtrlP' :
"           \ fname == '__Gundo__' ? 'Gundo' :
"           \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
"           \ fname =~ 'NERD_tree' ? 'NERDTree' :
"           \ &ft == 'unite' ? 'Unite' :
"           \ &ft == 'vimfiler' ? 'VimFiler' :
"           \ &ft == 'vimshell' ? 'VimShell' :
"           \ winwidth(0) > 60 ? lightline#mode() : ''
"   endfunction
"
"   function! CtrlPMark()
"   if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
"       call lightline#link('iR'[g:lightline.ctrlp_regex])
"       return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
"           \ , g:lightline.ctrlp_next], 0)
"   else
"       return ''
"   endif
"   endfunction
"
"   let g:ctrlp_status_func = {
"   \ 'main': 'CtrlPStatusFunc_1',
"   \ 'prog': 'CtrlPStatusFunc_2',
"   \ }
"
"   function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
"   let g:lightline.ctrlp_regex = a:regex
"   let g:lightline.ctrlp_prev = a:prev
"   let g:lightline.ctrlp_item = a:item
"   let g:lightline.ctrlp_next = a:next
"   return lightline#statusline(0)
"   endfunction
"
"   function! CtrlPStatusFunc_2(str)
"   return lightline#statusline(0)
"   endfunction
"
"   let g:tagbar_status_func = 'TagbarStatusFunc'
"
"   function! TagbarStatusFunc(current, sort, fname, ...) abort
"       let g:lightline.fname = a:fname
"   return lightline#statusline(0)
"   endfunction
"
"   augroup AutoSyntastic
"   autocmd!
"   autocmd BufWritePost *.c,*.cpp call s:syntastic()
"   augroup END
"   function! s:syntastic()
"   SyntasticCheck
"   call lightline#update()
"   endfunction
"
"   let g:unite_force_overwrite_statusline = 0
"   let g:vimfiler_force_overwrite_statusline = 0
"   let g:vimshell_force_overwrite_statusline = 0
" }}}

" Powerful settings for lightline.vim
" Plug 'itchyny/lightline-powerful'

" Forget Vim tabs – now you can have buffer tabs
" Plug 'ap/vim-buftabline'

"  Powerful shell implemented by vim
" :VimShell
" Plug 'Shougo/vimshell.vim'

" adds autocomplete functionality (dependency for vimshell)
" Plug 'Shougo/unite.vim'

" cycle through yanks (alt-p \ alt-shift-p)
" Plug 'maxbrunsfeld/vim-yankstack'

" --------------------------------------------------------------------------------

" Google lookup from Vim
" Plug 'szw/vim-g', { 'on': 'Google' }

" colorscheme switcher
" Plug 'xolox/vim-colorscheme-switcher', { 'on': 'NextColorScheme' } "{{{
"   let g:colorscheme_switcher_define_mappings = 0
"}}}

" Git log viewer
" Plug 'cohama/agit.vim', { 'on': 'Agit' }

" expand html snippets
" <c-e> completes (insert mode)
" <c-n> cycles throught empty elements (insert mode)
" Plug 'rstacruz/sparkup', { 'rtp': 'vim/', 'for': ['html', 'php'] }

" jade highlighting support
" Plug 'statianzo/vim-jade'

" Vim plugin for the_platinum_searcher, 'pt', a replacement for the Perl module/CLI script 'ack'
" Plug 'nazo/pt.vim'

" Show "Match 123 of 456 /search term/" in Vim searches
" Plug 'henrik/vim-indexed-search' "{{{
  " let g:indexed_search_colors=0
"}}}

" Toolbox to open & search URLs from vim
" Plug 'waiting-for-dev/vim-www' "{{{
"   let g:www_default_search_engine = 'google'
  " :Wopen http://vim.org
  " :Wsearch google how to learn vim
  " <leader>ws searches WORD under cursor, while the same mapping in visual mode searches current visual selection
" }}}

" Map the conceal characters to their expanded forms.
" Plug 'Olical/vim-syntax-expand' "{{{
  " autocmd FileType javascript inoremap <silent> <buffer> @ <C-r>=syntax_expand#expand("@", "this")<CR>
  " autocmd FileType javascript inoremap <silent> <buffer> # <C-r>=syntax_expand#expand("#", ".prototype.")<CR>
  " autocmd FileType javascript inoremap <silent> <buffer> < <C-r>=syntax_expand#expand_head("<", "return")<CR>
" }}}

" show git diff via sign column
" Plug 'mhinz/vim-signify'

" auto save/load sessions
" Plug 'powerman/vim-plugin-autosess'

" support command mode in Russian keyboard layout
" Plug 'powerman/vim-plugin-ruscmd'

" Tiled Window Management for Vim
" Plug 'spolu/dwm.vim'

" Sneak is a minimalist, versatile motion to reach any location specified by two characters.
" Plug 'justinmk/vim-sneak' "{{{
  " nmap f <Plug>Sneak_f
  " nmap F <Plug>Sneak_F
  " xmap f <Plug>Sneak_f
  " xmap F <Plug>Sneak_F
  " omap f <Plug>Sneak_f
  " omap F <Plug>Sneak_F
  " xmap \ <Plug>Sneak_,
  " omap \ <Plug>Sneak_,
  " nmap \ <Plug>Sneak_,
  "
  " autocmd VimEnter * nunmap s
  " autocmd VimEnter * nunmap S

  " nmap f <Plug>Sneak_s
  " nmap f <Plug>Sneak_s
  " nmap F <Plug>Sneak_S
  " xmap f <Plug>Sneak_s
  " xmap F <Plug>Sneak_S
  " omap f <Plug>Sneak_s
  " omap F <Plug>Sneak_S
" }}}

" Extended session management for Vim (:mksession on steroids)
" :SaveSession
" :OpenSession
" :RestartVim
" :CloseSession
" :DeleteSession
" Plug 'xolox/vim-session'

" Easy note taking in Vim
" :Note
" Plug 'xolox/vim-notes'
" Visualize your undo tree
" Plug 'sjl/gundo.vim'

" execute current buffer and show output
" Plug 'thinca/vim-quickrun'


" Syntax check
" Plug 'scrooloose/syntastic' "{{{
"   let g:syntastic_check_on_open=1
" }}}

" alternative for vim-easygrep
" Plug 'skwp/greplace.vim'

" tabs / buffers / files management
" fast fuzzy searching powered by Go
" workspaces (sessions)
" bookmarks for your favorite projects
" Plug 'vim-ctrlspace/vim-ctrlspace'

" Plug 'luochen1990/rainbow'
" let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" let g:rainbow_conf = {
" \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
" \   'operators': '_,_',
" \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" \   'separately': {
" \       '*': {},
" \       'tex': {
" \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" \       },
" \       'lisp': {
" \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
" \       },
" \       'vim': {
" \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
" \       },
" \       'html': {
" \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
" \       },
" \       'css': 0,
" \   }
" \}

" Async completion framework made ease.
" Plug 'maralla/completor.vim' "{{{
"   let g:completor_auto_trigger = 0
"}}}

" jinja plugins for vim (syntax and indent)
" Plug 'niftylettuce/vim-jinja'

" Vim bundle for http://styled-components.com based javascript files.
" Plug 'styled-components/vim-styled-components'

" A Vim plugin for managing three-way merges
" Plug 'sjl/splice.vim'

" Argumentative aids with manipulating and moving between function arguments
" Plug 'PeterRincker/vim-argumentative' "{{{
  " nmap <; <Plug>Argumentative_MoveLeft
  " nmap >; <Plug>Argumentative_MoveRight
" }}}

" lean & mean status/tabline for vim that's light as air
" Plug 'vim-airline/vim-airline' "{{{
  " let g:airline_powerline_fonts = 1
  " let g:airline#extensions#tabline#enabled = 1
  " let g:airline#extensions#tabline#buffer_min_count = 2
  " let g:airline#extensions#tabline#enabled = 1
  " let g:airline#extensions#syntastic#enabled = 1
" }}}

" a collection of themes for vim-airline
" Plug 'vim-airline/vim-airline-themes'

" FIXME: seems not to be working
" super simple vim plugin to show the list of buffers in the command bar
" Plug 'bling/vim-bufferline' "{{{
  " let g:bufferline_echo = 0
  " let g:bufferline_active_buffer_left = ''
  " let g:bufferline_active_buffer_right = ''
" }}}

" plugin provides commands that fold away lines that don't match a specific
" search pattern.
" This pattern can be the word under the cursor, the last search pattern,
" a regular expression or spelling errors.
" Plug 'embear/vim-foldsearch'

" Interactive command execution in Vim (dependency)
" If you use vim-plug, you can update and build vimproc automatically:
"    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Shougo/vimproc.vim'

" plugin to dim inactive windows
" Plug 'blueyed/vim-diminactive' "{{{
  " let g:diminactive_filetype_blacklist = ['startify', 'git']
  " let g:diminactive_enable_focus = 1
" }}}

" gitk for Vim
" Plug 'gregsexton/gitv', { 'on': 'Gitv' } "{{{
  " map <silent> <F10> :Gitv<CR>
  " vmap <silent> <F10> :Gitv<CR>
" }}}

" Press <C-G>c in insert mode to toggle a temporary software caps lock, or gC
" in normal mode to toggle a slightly more permanent one.
" Plug 'tpope/vim-capslock'

" :UndotreeToggle
" Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' } "{{{
  " nnoremap <silent> <F2> :UndotreeToggle<cr>:UndotreeFocus<cr>
  " nnoremap <silent> <M-u> :UndotreeToggle<cr>:UndotreeFocus<cr>
" }}}

" This plugin provides the following mappings which allow you to move between Vim panes and tmux splits seamlessly:
"   <ctrl-h> => Left
"   <ctrl-j> => Down
"   <ctrl-k> => Up
"   <ctrl-l> => Right
"   <ctrl-\> => Previous split
" Plug 'christoomey/vim-tmux-navigator'

" Vim sugar for the UNIX shell commands
  " Remove: Delete a buffer and the file on disk simultaneously.
  " Unlink: Like :Remove, but keeps the now empty buffer.
  " Move: Rename a buffer and the file on disk simultaneously.
  " Rename: Like :Move, but relative to the current file's containing directory.
  " Chmod: Change the permissions of the current file.
  " Mkdir: Create a directory, defaulting to the parent of the current file.
  " Find: Run find and load the results into the quickfix list.
  " Locate: Run locate and load the results into the quickfix list.
  " Wall: Write every open window. Handy for kicking off tools like guard.
  " SudoWrite: Write a privileged file with sudo.
  " SudoEdit: Edit a privileged file with sudo.
" Plug 'tpope/vim-eunuch'

" apply macro to a multiple files at once
" Plug 'Olical/vim-enmasse'

" A vim plugin for Flow
" Plug 'flowtype/vim-flow' "{{{
  " let g:flow#enable = 0
  " let g:flow#errjmp = 1

  " nmap <leader>fl :FlowToggle<cr>
" }}}

" Delete unwanted whitespace at the end of lines
" Plug 'vim-scripts/DeleteTrailingWhitespace' "{{{
"   let g:DeleteTrailingWhitespace = 1
"   let g:DeleteTrailingWhitespace_Action = 'delete'
" }}}

" Only highlight the screen line of the cursor in the currently active window.
" Plug 'vim-scripts/CursorLineCurrentWindow'

" Fast and Easy Find and Replace Across Multiple Files
" Plug 'dkprice/vim-easygrep'

" Personal Wiki for Vim
" Plug 'vimwiki/vimwiki'

" Miscellaneous auto-load Vim scripts(dependency)
" Plug 'xolox/vim-misc'

" Improved integration between Vim and its environment (fullscreen, open URL, background command execution)
" Plug 'xolox/vim-shell'

" Automated tag file generation and syntax highlighting of tags in Vim
" <C-]>   Jump to the definition of the keyword under the cursor.
" Plug 'xolox/vim-easytags'

" Mappings for simultaneously pressed keys
" Plug 'kana/vim-arpeggio'

" a small collection of settings,
" commands and mappings put together to make working with the
" location/quickfix list/window smoother.
" Plug 'romainl/vim-qf' "{{{
  " nmap <silent> <F4> <Plug>QfCtoggle
  " nmap <silent> <F7> <Plug>QfLtoggle
" }}}

" Vim plugin that displays tags in a window, ordered by scope
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } "{{{
" Plug 'majutsushi/tagbar'  "{{{
  " nmap <F8> :TagbarToggle<cr>
" }}}

" A vim plugin to perform diffs on blocks of code
" :Linediff
" Plug 'AndrewRadev/linediff.vim', { 'on': 'Linediff' }

" HTML abbreviations (similar to emmet)
" <C-X><Space>  <foo>^</foo>
" <C-X><CR>     <foo>\n^\n</foo>
" <C-X>/        Last HTML tag closed
" <C-X>!        <!DOCTYPE...>/<?xml ...?>
" <C-X>@        <link rel="stylesheet" ...> (mnemonic: @ is used for importing in a CSS file)
" <C-X>#        <meta http-equiv="Content-Type" ... />
" <C-X>$        <script src="/javascripts/^.js"></script>
" Plug 'tpope/vim-ragtag' "{{{
  " let g:ragtag_global_maps = 1
" }}}

" alignment plugin
" Plug 'godlygeek/tabular', { 'on': 'Tabularize' } "{{{
  " from https://github.com/AntJanus/my-dotfiles/blob/master/.vimrc
  " nnoremap <leader>a= :Tabularize /=<CR>
  " vnoremap <leader>a= :Tabularize /=<CR>
  "
  " nnoremap <leader>a: :Tabularize /:<CR>
  " vnoremap <leader>a: :Tabularize /:<CR>
  "
  " nnoremap <leader>a- :Tabularize /-<CR>
  " vnoremap <leader>a- :Tabularize /-<CR>
  "
  " nnoremap <leader>a> :Tabularize /><CR>
  " vnoremap <leader>a> :Tabularize /><CR>
  "
  " nnoremap <leader>a[ :Tabularize /[<CR>
  " vnoremap <leader>a[ :Tabularize /[<CR>
  "
  " nnoremap <leader>a{ :Tabularize /{<CR>
  " vnoremap <leader>a{ :Tabularize /{<CR>
  "
  " nnoremap <leader>a( :Tabularize /(<CR>
  " vnoremap <leader>a( :Tabularize /(<CR>
  "
  " nnoremap <leader>a" :Tabularize /"<CR>
  " vnoremap <leader>a" :Tabularize /"<CR>
  "
  " nnoremap <leader>a' :Tabularize /'<CR>
  " vnoremap <leader>a' :Tabularize /'<CR>
  "
  " nnoremap <leader>af :Tabularize /from<CR>
  " vnoremap <leader>af :Tabularize /from<CR>
" }}}

" alignment plugin
" Plug 'junegunn/vim-easy-align' "{{{
 " Start interactive EasyAlign in visual mode (e.g. vipga)
  " xmap ga <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  " nmap ga <Plug>(EasyAlign)
"}}}

" Plug 'scrooloose/nerdtree' "{{{
"   let g:NERDTreeMapMenu='M'
"   let g:nerdtree_tabs_open_on_gui_startup = 0
"   let NERDTreeIgnore=['\.pyc$', '\~$']
"   let g:NERDTreeMinimalUI = 1
"   let g:NERDTreeWinSize = 24
"   let g:NERDTreeHijackNetrw = 1
"   " let g:NERDTreeDirArrowExpandable = '▸'
"   " let g:NERDTreeDirArrowCollapsible = '▾'
"   let NERDTreeDirArrowExpandable = " "
"   let NERDTreeDirArrowCollapsible = " "
"
"   nnoremap <silent> <F1> :call NERDTreeFindToggle()<CR>
"   inoremap <silent> <F1> <Esc>:call NERDTreeFindToggle()<CR>
"   vnoremap <silent> <F1> <Esc>:call NERDTreeFindToggle()<CR>
"
"   function! NERDTreeFindToggle()
"     if IsNERDTreeOpen()
"       NERDTreeTabsClose
"     else
"       NERDTreeFind
"     endif
"   endfunction
"
"   function! IsNERDTreeOpen()
"     return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"   endfunction
" "}}}

" Extra syntax and highlight for nerdtree files
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "{{{
  " let g:NERDTreeFileExtensionHighlightFullName = 1
" }}}

" Vim plugin for the Perl module / CLI script 'ack'
" Plug 'mileszs/ack.vim'

" NERDtree + ack.vim
" press Ms on a directory
" Plug 'tyok/nerdtree-ack'

" This plugin aims at making NERDTree feel like a true panel, independent of tabs.
" Just one NERDTree, always and ever. It will always look the same in all tabs,
" including expanded/collapsed nodes, scroll position etc.
" :NERDTreeTabsToggle
" Plug 'jistr/vim-nerdtree-tabs' "{{{
"   nnoremap <silent> <M-t> :NERDTreeTabsToggle<CR>
"   inoremap <silent> <M-t> <Esc>:NERDTreeTabsToggle<CR>
"   vnoremap <silent> <M-t> <Esc>:NERDTreeTabsToggle<CR>
" }}}

" NERDTree git status support
" Plug 'Xuyuanp/nerdtree-git-plugin' " {{{
"   let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ "Unknown"   : "?"
"     \ }
" }}}

" html & css abbreviations
" <c-e>,
" Plug 'mattn/emmet-vim' "{{{
  " let g:user_emmet_install_global = 0
  " let g:user_emmet_leader_key = '<C-e>'

  " autocmd FileType html,css,scss,javascript,jsx EmmetInstall
" }}}

" A Vim plugin for interacting with Heroku
" :Hk
" Plug 'tpope/vim-heroku'

" go language support
" Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }

" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'jsx', 'html', 'typescript', 'php'] } "{{{
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'jsx', 'typescript'] } "{{{
  " let g:used_javascript_libs = 'lodash, react'
" }}}

" Maintains a history of previous yanks, changes and deletes
" :YRSearch
" Plug 'vim-scripts/YankRing.vim' "{{{
"   let g:yankring_replace_n_pkey = '<M-p>'
"   let g:yankring_replace_n_nkey = '<M-n>'
"   nnoremap <silent> <F9> :YRShow<CR>
" }}}

" use CTRL-A/CTRL-X to increment dates, times, and more
" Plug 'tpope/vim-speeddating'

" This extension allows you to use jsbeautifier inside vim to quickly format
" javascript, html and css files.
" Plug 'maksimr/vim-jsbeautify' "{{{
"   map <leader>B :call JsBeautify()<cr>
"
"   autocmd FileType javascript vnoremap <buffer>  <c-f> : call RangeJsBeautify()<cr>
"   autocmd FileType json vnoremap <buffer> <c-f>        : call RangeJsonBeautify()<cr>
"   autocmd FileType jsx vnoremap <buffer> <c-f>         : call RangeJsxBeautify()<cr>
"   autocmd FileType html vnoremap <buffer> <c-f>        : call RangeHtmlBeautify()<cr>
"   autocmd FileType css vnoremap <buffer> <c-f>         : call RangeCSSBeautify()<cr>
" }}}

" Generate JSDoc to your JavaScript code
" Plug 'heavenshell/vim-jsdoc' " {{{
"  let g:jsdoc_input_description=1
"  let g:jsdoc_additional_descriptions=1
"  let g:jsdoc_enable_es6=1
"  let g:jsdoc_underscore_private=1
"  let g:jsdoc_allow_input_prompt=1
"  let g:jsdoc_return_description=1
"  map <leader>js :JsDoc<CR>

  " REMAP NEEDED
  " nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)
" }}}

" After you open a .js file, and save it, it will run eslint on the file and
" report errors in the location window.
" :ESLint
" requires .eslintrc in project directory
" Plug 'bigfish/vim-eslint', { 'on': 'ESLint' }

" file browser
" open by pressing -
" Plug 'tpope/vim-vinegar'

" A vim plugin to display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine' "{{{
  " let g:indentLine_enabled = 1
  " map <leader>il :IndentLinesToggle<CR>
"}}}

" if check prevents these plugins to be installed
" if !exists('g:is_home_env')

  " A Vim plugin for visually displaying indent levels in code
  " Plug 'nathanaelkane/vim-indent-guides' "{{{
    " let g:indent_guides_guide_size = 1
    " let g:indent_guides_start_level = 2
    " let g:indent_guides_color_change_percent = 5
    " let g:indent_guides_enable_on_vim_startup = 1
  " }}}

  " Syntax checking hacks for vim
  " Plug 'vim-syntastic/syntastic' "{{{
    " set statusline+=%#warningmsg#
    " set statusline+=%{SyntasticStatuslineFlag()}
    " set statusline+=%*

    " let g:syntastic_always_populate_loc_list = 1
    " let g:syntastic_auto_loc_list = 1
    " let g:syntastic_check_on_open = 1
    " let g:syntastic_check_on_wq = 0
    " let g:syntastic_javascript_checkers = ['jshint']
    " let g:syntastic_javascript_checkers = ['eslint']
  " }}}

" endif

" helps to isolate a particular fold into its own context
" q - quit temporary buffer
" Plug 'vasconcelloslf/vim-foldfocus' "{{{
  " nmap <CR> :call FoldFocus('e')<CR>
  " nmap <S-CR> :call FoldFocus('e')<CR>

  " nmap <Leader><CR> :call FoldFocus('vnew')<CR>
" }}}

" helps Vim use the non-ASCII keys of a terminal emulator, permitting mapping of several classes of characters, including:
" Alt-lowercase letters (<M-a> - <M-z>).
" Alt-uppercase letters (<M-A> - <M-Z>), except <M-O> due to keycode ambiguity).
" Function keys with no modifiers or combinations of shift, control, and alt: <F1> - <F12>, <S-F1> - <S-F12>, ..., <M-C-S-F1> - <M-C-S-F12>. Note not all combination of terminal and environment send all of these.
" Arrow keys with no modifiers or combinations of shift, control, and alt: <Up>, <Down>, <Left>, <Right>, <S-Up>, <S-Down>, <S-Left>, <S-Right>, ..., <M-C-S-Up>, <M-C-S-Down>, <M-C-S-Left>, <M-C-S-Right>.
" Home and End keys with no modifiers or combinations of shift, control, and alt: <Home>, <End>, <S-Home>, <S-End>, ..., <M-C-S-Home>, <M-C-S-End>.
" <S-Enter> (few terminals).
" <M-Enter> (not all terminals).
" Plug 'drmikehenry/vim-fixkey'

" NOTE: use vim-asterisk instead
" Start a * or # search from a visual block
" Plug 'bronson/vim-visual-star-search'

" (Vit)ality is a plugin that makes (V)im play nicely with (i)Term 2 and (t)mux.
" Plug 'sjl/vitality.vim' "{{{
"  let g:vitality_always_assume_iterm = 1
" }}}
"
" Vim plugin that allows use of vifm as a file picker
" Plug 'vifm/vifm.vim'
" ================================================================================
