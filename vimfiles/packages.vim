call plug#begin()

Plug 'cohama/agit.vim'

Plug 'elmcast/elm-vim' "{{{
  let g:elm_detailed_complete = 1
" }}}

Plug 'avh4/elm-format' "{{{
  let g:elm_format_autosave = 1
" }}}

" Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'vasconcelloslf/vim-interestingwords' "{{{
  nnoremap <silent> g1 :call WordNavigation(1)<CR>
  nnoremap <silent> g2 :call WordNavigation(0)<CR>
"}}}

Plug 'henrik/vim-indexed-search' "{{{
  " let g:indexed_search_colors=0
"}}}

Plug 'moll/vim-bbye'
Plug 'tpope/vim-capslock'
Plug 'mbbill/undotree'
Plug 'thinca/vim-quickrun'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-eunuch'
Plug 'rhysd/conflict-marker.vim'
Plug 'vim-scripts/UnconditionalPaste'

" conflicts with js conceal feature
Plug 'Yggdroot/indentLine' "{{{
  map <leader>il :IndentLinesToggle<CR>
"}}}

Plug 'chrisbra/NrrwRgn'
Plug 'tpope/vim-unimpaired'

" apply macro to a multiple files at once
Plug 'Olical/vim-enmasse'

Plug 'flowtype/vim-flow'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/CursorLineCurrentWindow'
Plug 'dkprice/vim-easygrep'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-abolish'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'justinj/vim-react-snippets'
" Plug 'mlaursen/vim-react-snippets'
" Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'dmitriyK1/ReactVimSnippets'


" ================================================================================
" Colorschemes:
" ================================================================================
Plug 'robertmeta/nofrils'
Plug 'trevordmiller/nova-vim'
" Plug 'grod/sublime-color-schemes.vim'
" Plug 'jyota/vimColors'
" Plug 'mkarmona/colorsbox'
" Plug 'nowk/genericdc'
" Plug 'stulzer/heroku-colorscheme'
Plug 'andreasvc/vim-256noir'
" Plug 'marciomazza/vim-brogrammer-theme'
" Plug 'cocopon/iceberg.vim'
" Plug 'ryanpcmcquen/true-monochrome_vim'
" Plug 'snowcrshd/cyberpunk.vim'
" Plug 'roosta/vim-srcery'
" Plug 'lifepillar/vim-solarized8'
Plug 'pbrisbin/vim-colors-off'
" Plug 'YorickPeterse/Autumn.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
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
Plug 'altercation/vim-colors-solarized'
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


" Plug 'xolox/vim-session'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-easytags'

Plug 'kana/vim-smartinput'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-line'
Plug 'glts/vim-textobj-comment'
Plug 'wellle/targets.vim'
Plug 'romainl/vim-qf'
Plug 'kana/vim-arpeggio'

Plug 'AndrewRadev/switch.vim' "{{{
  " let g:switch_mapping = ""
"}}}

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

Plug 'editorconfig/editorconfig-vim'
Plug 'ajh17/VimCompletesMe'
Plug 'haya14busa/incsearch.vim' "{{{
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
"}}}
Plug 'kana/vim-textobj-user'
Plug 'saaguero/vim-textobj-pastedtext'
Plug 'konfekt/fastfold'
Plug 'tpope/vim-dispatch'
Plug 'nazo/pt.vim'
Plug 'majutsushi/tagbar'
" Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'spolu/dwm.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'lfilho/cosco.vim'
" Plug 'powerman/vim-plugin-ruscmd'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/LargeFile'
Plug 'AndrewRadev/linediff.vim'
" Plug 'powerman/vim-plugin-autosess'
Plug 'tpope/vim-ragtag'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'vim-scripts/searchfold.vim'
Plug 'szw/vim-g'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align' "{{{
  " xmap gl <Plug>(EasyAlign)
  " nmap gl <Plug>(EasyAlign)
"}}}
Plug 'sjl/gundo.vim'
Plug 'frace/vim-bubbles'
Plug 'tmhedberg/SimpylFold'
Plug 'statianzo/vim-jade'
Plug 'vim-scripts/indentpython.vim'
" show git diff via sign column
" Plug 'mhinz/vim-signify'
" autodetect tabs/spaces of buffer
Plug 'tpope/vim-sleuth'
Plug 'klen/python-mode'
" readline keybindings
Plug 'tpope/vim-rsi'
Plug 'FelikZ/ctrlp-py-matcher'
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
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "{{{
    let g:nerdtree_tabs_open_on_gui_startup = 0
    let NERDTreeIgnore=['\.pyc$', '\~$']
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeWinSize = 24
    map - :NERDTreeToggle<CR>
"}}}
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin'            " not working for some reason
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-heroku'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion' "{{{
  map = <Plug>(easymotion-prefix)
"}}}
Plug 'vim-scripts/occur.vim'
Plug 'mileszs/ack.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/lightline-powerful'
" Plug 'airblade/vim-gitgutter'
" braces auto-closing
Plug 'Raimondi/delimitMate' "{{{
    let g:delimitMate_expand_cr=1
    let g:delimitMate_expand_space=1
"}}}

" js indentation support
" breaks gruvbox highlighting
Plug 'sheerun/vim-polyglot' "{{{
  let g:polyglot_disabled = ['elm', 'javascript']
"}}}

" Plug 'pangloss/vim-javascript'

Plug 'othree/yajs'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim' "{{{
  let g:used_javascript_libs = 'jquery, underscore, angularjs, angularui, react'
" }}}

" conceals language constructs
" Plug 'Olical/vim-syntax-expand'

" cycle through yanks (alt-p \ alt-shift-p)
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-speeddating'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'maksimr/vim-jsbeautify'
Plug 'heavenshell/vim-jsdoc'
" Plug 'waiting-for-dev/vim-www'

" use VimCompletesMe instead (faster)
Plug 'ervandew/supertab'

" Plug 'kien/rainbow_parentheses.vim'        // breaks syntax highlighting
" https://github.com/scrooloose/syntastic      // slow

" https://github.com/Valloric/YouCompleteMe
" https://github.com/SirVer/ultisnips
" https://github.com/Shutnik/jshint2.vim
" http://vimawesome.com
" http://spf13.com/post/the-15-best-vim-plugins
" Plug 'moll/vim-bbye'
" https://github.com/tpope/vim-dispatch

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

