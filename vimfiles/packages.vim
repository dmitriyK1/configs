" http://vimawesome.com
" http://spf13.com/post/the-15-best-vim-plugins

call plug#begin()

" ================================================================================
" Colorschemes:
" ================================================================================
Plug 'altercation/vim-colors-solarized'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'kamwitsta/mythos'
Plug 'kamwitsta/nordisk'
Plug 'AlessandroYorba/Sierra'
Plug 'Blevs/vim-dzo'
Plug 'robertmeta/nofrils'
Plug 'trevordmiller/nova-vim'
Plug 'andreasvc/vim-256noir'
Plug 'pbrisbin/vim-colors-off'
" Plug 'grod/sublime-color-schemes.vim'
" Plug 'jyota/vimColors'
" Plug 'mkarmona/colorsbox'
" Plug 'nowk/genericdc'
" Plug 'stulzer/heroku-colorscheme'
" Plug 'marciomazza/vim-brogrammer-theme'
" Plug 'cocopon/iceberg.vim'
" Plug 'ryanpcmcquen/true-monochrome_vim'
" Plug 'snowcrshd/cyberpunk.vim'
" Plug 'roosta/vim-srcery'
" Plug 'lifepillar/vim-solarized8'
" Plug 'YorickPeterse/Autumn.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'morhetz/gruvbox'
" Plug 'w0ng/vim-hybrid'
" Plug 'cocopon/lightline-hybrid.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'GertjanReynaert/cobalt2-vim-theme'
" Plug 'mbbill/desertEx'
" Plug 'brafales/vim-desert256'
" Plug 'vim-scripts/werks.vim'
" Plug 'vim-scripts/sonoma.vim'
" Plug 'rainux/vim-desert-warm-256'
" Plug 'toupeira/vim-desertink'
" Plug 'vim-scripts/reloaded.vim'
" Plug 'vim-scripts/revolutions.vim'
" Plug 'jaromero/vim-monokai-refined'
" Plug 'sickill/vim-monokai'
" Plug 'tomasr/molokai'
" Plug 'michalbachowski/vim-wombat256mod'
" Plug 'dracula/vim'
" Plug 'ciaranm/inkpot'
" Plug 'jnurmine/Zenburn'
" Plug 'vim-scripts/Wombat'
" Plug 'sickill/vim-sunburst'
" Plug 'vim-scripts/vibrantink'
" Plug 'lisposter/vim-blackboard'
" Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
" Plug 'romainl/Apprentice'
" Plug 'vim-scripts/Sorcerer'
" Plug 'penicolas/simplon.vim'
" Plug 'whatyouhide/vim-gotham'
" Plug 'thomd/vim-wasabi-colorscheme'
" Plug 'nanotech/jellybeans.vim'
" Plug 'junegunn/seoul256.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'noahfrederick/vim-hemisu'
" Plug 'mdlerch/tungsten.vim'
" Plug 'reedes/vim-colors-pencil'
" Plug 'blueshirts/darcula'
" Plug 'bounceme/highwayman'
" Plug 'gummesson/stereokai.vim'
" Plug 'amadeus/vim-evokai'
" Plug 'vim-scripts/greenvision'
" Plug 'oguzbilgic/sexy-railscasts-theme'
" Plug 'juanedi/predawn.vim'
" Plug 'jdkanani/vim-material-theme'
" Plug 'ajh17/Spacegray.vim'
" Plug 'shaond/vim-guru'
" Plug 'vim-scripts/obsidian2.vim'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'sjl/badwolf'
" Plug 'endel/vim-github-colorscheme'
" Plug 'changyuheng/color-scheme-holokai-for-vim'
" Plug 'pR0Ps/molokai-dark'
" Plug 'zeekay/vice-colorful'
" ================================================================================
" Colorschemes end
" ================================================================================

" gitk for Vim
Plug 'gregsexton/gitv', { 'on': 'Gitv' }

" alternative for vim-easygrep
" Plug 'skwp/greplace.vim'

" Git log viewer
Plug 'cohama/agit.vim', { 'on': 'Agit' }

" tabs / buffers / files management
" fast fuzzy searching powered by Go
" workspaces (sessions)
" bookmarks for your favorite projects
" Plug 'vim-ctrlspace/vim-ctrlspace'

" vim-interestingwords allows you to highlight and navigate through (multiple) different words in a buffer
Plug 'vasconcelloslf/vim-interestingwords' "{{{
  nnoremap <silent> g1 :call WordNavigation(1)<CR>
  nnoremap <silent> g2 :call WordNavigation(0)<CR>
"}}}

" Show "Match 123 of 456 /search term/" in Vim searches
Plug 'henrik/vim-indexed-search' "{{{
  " let g:indexed_search_colors=0
"}}}

" Delete buffers and close files in Vim without closing your windows or messing up your layout
" :Bdelete
Plug 'moll/vim-bbye', { 'on': 'Bdelete' }

" Press <C-G>c in insert mode to toggle a temporary software caps lock, or gC
" in normal mode to toggle a slightly more permanent one.
Plug 'tpope/vim-capslock'

" :UndotreeToggle
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Visualize your undo tree
" Plug 'sjl/gundo.vim'

" execute current buffer and show output
" Plug 'thinca/vim-quickrun'

" This plugin provides the following mappings which allow you to move between Vim panes and tmux splits seamlessly:
"   <ctrl-h> => Left
"   <ctrl-j> => Down
"   <ctrl-k> => Up
"   <ctrl-l> => Right
"   <ctrl-\> => Previous split
Plug 'christoomey/vim-tmux-navigator'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

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
Plug 'tpope/vim-eunuch'


" highlight conflict markers.
" jump among conflict markers.
" jump within conflict block; beginning, separator and end of the block.
" resolve conflict with various strategies; themselves, ourselves, none and both strategies.
" [x and ]x mappings are defined as default
" This plugin defines mappings as default, ct for themselves, co for ourselves, cn for none and cb for both.
Plug 'rhysd/conflict-marker.vim'

" Force linewise or characterwise paste, regardless of how it was yanked.
Plug 'vim-scripts/UnconditionalPaste'

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine' "{{{
  map <leader>il :IndentLinesToggle<CR>
"}}}

" A Vim plugin for focussing on a selected region
" <Leader>nr       - Open the current visual selection in a new narrowed window
Plug 'chrisbra/NrrwRgn'

" toggling settings mappings
Plug 'tpope/vim-unimpaired'

" apply macro to a multiple files at once
Plug 'Olical/vim-enmasse'

" A vim plugin for Flow
Plug 'flowtype/vim-flow'

" Better whitespace highlighting for Vim
" TODO: possibly remove DeleteTrailingWhitespace
Plug 'ntpeters/vim-better-whitespace'

" Delete unwanted whitespace at the end of lines
Plug 'vim-scripts/DeleteTrailingWhitespace'

" Only highlight the screen line of the cursor in the currently active window.
Plug 'vim-scripts/CursorLineCurrentWindow'

" Fast and Easy Find and Replace Across Multiple Files
Plug 'dkprice/vim-easygrep'

" Personal Wiki for Vim
Plug 'vimwiki/vimwiki'

" easily search for, substitute, and abbreviate multiple variants of a word
" MixedCase (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
Plug 'tpope/vim-abolish'

" A vim plugin that simplifies the transition between multiline and single-line code
  " gS to split a one-liner into multiple lines
  " gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
Plug 'AndrewRadev/splitjoin.vim'

" Extended session management for Vim (:mksession on steroids)
" :SaveSession
" :OpenSession
" :RestartVim
" :CloseSession
" :DeleteSession
" Plug 'xolox/vim-session'

" colorscheme switcher
Plug 'xolox/vim-colorscheme-switcher', { 'on': 'NextColorScheme' } "{{{
  let g:colorscheme_switcher_define_mappings = 0
"}}}

" Miscellaneous auto-load Vim scripts(dependency)
Plug 'xolox/vim-misc'

" Easy note taking in Vim
" :Note
" Plug 'xolox/vim-notes'

" Improved integration between Vim and its environment (fullscreen, open URL, background command execution)
Plug 'xolox/vim-shell'

" Automated tag file generation and syntax highlighting of tags in Vim
" <C-]>   Jump to the definition of the keyword under the cursor.
Plug 'xolox/vim-easytags'

" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
Plug 'kana/vim-textobj-entire'

" daf to Delete A Function
" vif to Visually select the code Inside a Function
" yaF to Yank A Function with leading or trailing blank lines
" viF to visually select a function without leading or trailing blank lines
Plug 'kana/vim-textobj-function'

" val - select line (including whitespace)
" vil - select line
Plug 'kana/vim-textobj-line'

" Mappings for simultaneously pressed keys
Plug 'kana/vim-arpeggio'

" ac selects a comment including the comment delimiters
" ic selects just the comment content
" aC selects a comment including trailing or leading whitespace
Plug 'glts/vim-textobj-comment'

" provides additional text objects
" Pair text objects
" Quote text objects
" Separator text objects
" Argument text objects
" https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
Plug 'wellle/targets.vim'

" a small collection of settings,
" commands and mappings put together to make working with the
" location/quickfix list/window smoother.
Plug 'romainl/vim-qf'

" toggle true/false, && || etc
Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' } "{{{
  " let g:switch_mapping = ""
"}}}

" Use your favorite grep tool (ag, ack, git grep, ripgrep, pt, sift, findstr,
" grep) to start an asynchronous search. All matches will be put in a quickfix
" or location list.
Plug 'mhinz/vim-grepper' "{{{
  let g:grepper = {
      \ 'tools':     ['ag', 'csearch', 'findstr'],
      \ 'dispatch':  1,
      \ 'open':      1,
      \ 'switch':    0,
      \ 'jump':      0,
      \ 'ag': {
      \   'grepprg': 'ag --nogroup --nocolor --column',
      \   'grepformat': '%f:%l:%c:%m'
      \ },
      \ 'csearch': {
      \   'grepprg': 'csearch -n',
      \   'grepformat': '%f:%l:%m'
      \ }}

  " nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)
"}}}

" incrementally highlights ALL pattern matches unlike default 'incsearch'
Plug 'haya14busa/incsearch.vim' "{{{
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
"}}}

" create your own text objects (dependency)
Plug 'kana/vim-textobj-user'

" vgb     select last pasted text
" dgb     delete last pasted text
" =gb     re-indent last pasted text
Plug 'saaguero/vim-textobj-pastedtext'

" Speed up Vim by updating folds only when called-for
Plug 'konfekt/fastfold'

" asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'

" Vim plugin for the_platinum_searcher, 'pt', a replacement for the Perl module/CLI script 'ack'
Plug 'nazo/pt.vim'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" Sneak is a minimalist, versatile motion to reach any location specified by two characters.
" Plug 'justinmk/vim-sneak'

" start screen
Plug 'mhinz/vim-startify'

" Plugin to toggle, display and navigate marks
Plug 'kshenoy/vim-signature'

" A Vim plugin for visually displaying indent levels in code
" Plug 'nathanaelkane/vim-indent-guides'

" Tiled Window Management for Vim
" Plug 'spolu/dwm.vim'

" Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" colon and semicolon insertion plugin
Plug 'lfilho/cosco.vim'

" support command mode in Russian keyboard layout
" Plug 'powerman/vim-plugin-ruscmd'

" snippets support
Plug 'SirVer/ultisnips' " {{{
  let g:UltiSnipsSnippetsDir = "~/vimfiles/UltiSnips"
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" }}}

" Edit large files quickly: its just an autocmd that disables certain features of vim in the interests of speed
Plug 'vim-scripts/LargeFile'

" A vim plugin to perform diffs on blocks of code
" :Linediff
Plug 'AndrewRadev/linediff.vim', { 'on': 'Linediff' }

" auto save/load sessions
" Plug 'powerman/vim-plugin-autosess'

" HTML abbreviations (similar to emmet)
" <C-X><Space>  <foo>^</foo>
" <C-X><CR>     <foo>\n^\n</foo>
" <C-X>/        Last HTML tag closed
" <C-X>!        <!DOCTYPE...>/<?xml ...?>
" <C-X>@        <link rel="stylesheet" ...> (mnemonic: @ is used for importing in a CSS file)
" <C-X>#        <meta http-equiv="Content-Type" ... />
" <C-X>$        <script src="/javascripts/^.js"></script>
Plug 'tpope/vim-ragtag'

" <Leader>z    fold away lines not matching the last search pattern.
" <Leader>iz   fold away lines that do match the last search pattern (inverse folding).
" <Leader>Z    restore the previous fold settings
Plug 'vim-scripts/searchfold.vim'

" Google lookup from Vim
Plug 'szw/vim-g', { 'on': 'Google' }

" Git wrapper
Plug 'tpope/vim-fugitive'

" git runtime files
Plug 'tpope/vim-git'

" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" alignment plugin
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }

" alignment plugin
Plug 'junegunn/vim-easy-align' "{{{
  " xmap gl <Plug>(EasyAlign)
  " nmap gl <Plug>(EasyAlign)
"}}}

" text bubbling feature
Plug 'frace/vim-bubbles'

" autodetect tabs/spaces of buffer
Plug 'tpope/vim-sleuth'

" Python code folding for Vim
Plug 'tmhedberg/SimpylFold'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
Plug 'klen/python-mode'

" This indentation script for python tries to match more closely what is suggested in PEP 8
Plug 'vim-scripts/indentpython.vim'

" readline mappings in insert/command line mode
Plug 'tpope/vim-rsi'

" Fast vim CtrlP matcher based on python
Plug 'FelikZ/ctrlp-py-matcher'

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_open_multiple_files = '1jr'
  let g:ctrlp_max_files = 0
  let g:ctrlp_lazy_update = 50
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
"}}}

" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "{{{
Plug 'scrooloose/nerdtree' "{{{
    let g:nerdtree_tabs_open_on_gui_startup = 0
    let NERDTreeIgnore=['\.pyc$', '\~$']
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeWinSize = 24
    let g:NERDTreeHijackNetrw = 1
    " map - :NERDTreeToggle<CR>
    map g- :NERDTreeFind<CR>
"}}}

" Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeToggle' }

" This plugin aims at making NERDTree feel like a true panel, independent of tabs.
" Just one NERDTree, always and ever. It will always look the same in all tabs,
" including expanded/collapsed nodes, scroll position etc.
" :NERDTreeTabsToggle
Plug 'jistr/vim-nerdtree-tabs' "{{{
  map <silent> <leader>T :NERDTreeTabsToggle<CR>
" }}}

" NERDTree git status support
Plug 'Xuyuanp/nerdtree-git-plugin' " {{{
  let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" }}}

" expand html snippets
" <c-e> in insert mode
" <c-n> cycle throught empty elements
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" <c-y>,
Plug 'mattn/emmet-vim'

" :Autoformat
Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' }

" A Vim plugin for interacting with Heroku
" :Hk
Plug 'tpope/vim-heroku'

" Comment plugin
Plug 'tomtom/tcomment_vim'

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

Plug 'easymotion/vim-easymotion' "{{{
  map = <Plug>(easymotion-prefix)
"}}}

" Show all lines in the buffer containing word (grep buffer)
" <Leader>oc   - Occur       Search current buffer
" <Leader>mo   - Moccur      Search all buffers
" <Leader>*    - StarOccur    Search all buffers for occurrence of the word nearest to the cursor:
Plug 'vim-scripts/occur.vim'

" Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'

" status line
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline-powerful'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks
" Plug 'airblade/vim-gitgutter'

" show git diff via sign column
" Plug 'mhinz/vim-signify'

" auto-closer - insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs' " {{{
  let g:AutoPairsMultilineClose = 0

  " prevents adding new line when choosing item from autocomplete dropdown
  inoremap <expr> <CR> pumvisible()
        \ ? "\<C-y><C-y>"
        \ : "\<C-g>u\<CR>"
" }}}

" jade highlighting support
Plug 'statianzo/vim-jade'

" go language support
Plug 'fatih/vim-go'

" language pack
Plug 'sheerun/vim-polyglot'

Plug 'othree/javascript-libraries-syntax.vim' "{{{
  let g:used_javascript_libs = 'jquery, underscore, angularjs, angularui, react'
" }}}

" conceals language constructs
" Plug 'Olical/vim-syntax-expand'

" cycle through yanks (alt-p \ alt-shift-p)
Plug 'maxbrunsfeld/vim-yankstack'

" use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-speeddating'

" This extension allows you to use jsbeautifier inside vim to quickly format
" javascript, html and css files.
Plug 'maksimr/vim-jsbeautify'

" Generate JSDoc to your JavaScript code
Plug 'heavenshell/vim-jsdoc' " {{{
  let g:jsdoc_input_description=1
  let g:jsdoc_additional_descriptions=1
  let g:jsdoc_enable_es6=1
  let g:jsdoc_underscore_private=1
  map <leader>js :JsDoc<CR>
" }}}

" Toolbox to open & search URLs from vim
" Plug 'waiting-for-dev/vim-www'

" autocompletion
Plug 'ervandew/supertab' " {{{
  set completeopt+=longest

  let g:SuperTabDefaultCompletionType = '<C-n>'
  let g:SuperTabLongestHighlight = 1
  let g:SuperTabLongestEnhanced = 1
" }}}

" autocomplete plugin - autoopen popup when 2 letters typed
Plug 'vim-scripts/AutoComplPop'

" Plug 'kien/rainbow_parentheses.vim'        // breaks syntax highlighting

" After you open a .js file, and save it, it will run eslint on the file and
" report errors in the location window.
" :ESLint
" requires .eslintrc in project directory
Plug 'bigfish/vim-eslint', { 'on': 'ESLint' }

" file browser
Plug 'tpope/vim-vinegar'

call plug#end()

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
