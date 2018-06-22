" Lazy-loading example for filetypes:
" autocmd BufNewFile,BufRead *.gpg setf gpg
" Plug 'jamessan/vim-gnupg', { 'for': 'gpg' }

" Lazy-loading on <Plug> mappings:
" Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
" xmap ga <Plug>(EasyAlign)

" http://vimawesome.com
" http://spf13.com/post/the-15-best-vim-plugins

" vim-plug & plugins automatic installation
" TODO: change install location to ~/.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()

" ================================================================================
" Colorschemes:
" ================================================================================
Plug 'ashfinal/vim-colors-violet'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
" Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
" Plug 'nightsense/office'
" Plug 'nightsense/seagrey'
" Plug 'nightsense/forgotten'
" Plug 'nightsense/vrunchbang'
" Plug 'nightsense/carbonized'
" Plug 'arcticicestudio/nord-vim'
" Plug 'jacoborus/tender.vim'
" Plug 'Badacadabra/vim-archery'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'rakr/vim-one'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'trevordmiller/nova-vim'
" Plug 'dbb/vim-gummybears-colorscheme'
" Plug 'vim-scripts/Eddie.vim'
" Plug 'shinchu/lightline-gruvbox.vim'
" Plug 'AlessandroYorba/Sierra'
" Plug 'Blevs/vim-dzo'
" Plug 'robertmeta/nofrils'
" Plug 'andreasvc/vim-256noir'
" Plug 'pbrisbin/vim-colors-off'
" Plug 'kamwitsta/mythos'
" Plug 'kamwitsta/nordisk'
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
" Plug 'tomasr/molokai' "{{{
  " let g:molokai_original=0      " use a darker background
" }}}
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
" Function argument-like text object for Vim
" daa
" daA
" dia
" diA
Plug 'b4winckler/vim-angry'

" daf to Delete A Function
" vif to Visually select the code Inside a Function
" yaF to Yank A Function with leading or trailing blank lines
" viF to visually select a function without leading or trailing blank lines
Plug 'kana/vim-textobj-function'

" heuristic syntax-based text-object for function
" requires kana/vim-textobj-function 0.1.0 or later
Plug 'haya14busa/vim-textobj-function-syntax'

" A text object to turn foo_bar_baz into foo_baz *and* quuxSpamEggs into quuxEggs *and* shine your shoes
" iv
" av
" requires kana/vim-textobj-user
Plug 'Julian/vim-textobj-variable-segment'

" Language agnostic vim plugin for folding and motion based on indentation.
" Maps motion commands to [[, ]], [j, ]k
Plug 'pseewald/vim-anyfold' "{{{
  let anyfold_activate=1
"}}}

" Provides the ability to cycle open and closed folds and nested folds.
" normal <CR> Cycle open nested folds
" normal <BS> Cycle close nested folds
Plug 'arecarn/vim-fold-cycle'

" Asynchronous Lint Engine
Plug 'w0rp/ale' "{{{
  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \}
  let g:ale_linters = {
  \   'javascript': ['eslint'],
  \}
  let g:ale_fix_on_save = 1
  let g:ale_linters_explicit = 1
  let g:ale_set_highlights = 0
  " nmap <C-1> <Plug>ALEPrevious
  nmap <silent> <leader>n :ALENext<CR>
  " Write this in your vimrc file
  " let g:ale_set_loclist = 0
  " let g:ale_set_quickfix = 1

  " let g:ale_open_list = 1
  " Set this if you want to.
  " This can be useful if you are combining ALE with
  " some other plugin which sets quickfix errors, etc.
  " let g:ale_keep_list_window_open = 0
" }}}

" (Vit)ality is a plugin that makes (V)im play nicely with (i)Term 2 and (t)mux.
" Plug 'sjl/vitality.vim' "{{{
"  let g:vitality_always_assume_iterm = 1
" }}}

" A Vim plugin that always highlights the enclosing html/xml tags
Plug 'valloric/MatchTagAlways'

" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
" Then whenever you are in the insert mode and paste into your terminal
" emulator using command+v, shift+insert, ctrl+shift+v or middle-click, vim
" will automatically :set paste for you.
Plug 'ConradIrwin/vim-bracketed-paste'

" :substitute preview
Plug 'osyo-manga/vim-over' "{{{
  map <silent> <leader>% :OverCommandLine<CR>%s/
" }}}

" Delete buffers and close files in Vim without closing your windows or messing up your layout
" :Bdelete
Plug 'moll/vim-bbye', { 'on': 'Bdelete' } "{{{
  map <silent> <leader>ad :bufdo :Bdelete<CR>
  map <silent> <leader>d :Bdelete<CR>
" }}}

" Sane buffer/window deletion
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' } "{{{
  let g:sayonara_confirm_quit = 1
  map <silent> <leader>c :Sayonara<CR>
" }}}

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" toggling settings mappings
Plug 'tpope/vim-unimpaired' "{{{
  " Bubble single lines
  " map <M-k> [e
  " map <M-j> ]e
  " Bubble multiple lines
  " vmap <M-k> [egv
  " vmap <M-j> ]egv
" }}}

" highlight conflict markers.
" jump among conflict markers.
" jump within conflict block; beginning, separator and end of the block.
" resolve conflict with various strategies; themselves, ourselves, none and both strategies.
" [x and ]x mappings are defined as default
" This plugin defines mappings as default:
" ct for themselves
" co for ourselves
" cn for none
" cb for both
Plug 'rhysd/conflict-marker.vim'

" Force linewise or characterwise paste, regardless of how it was yanked.
" gcp - Paste characterwise (newline characters and indent are flattened to spaces) [count] times.
" glp - Paste linewise (even if yanked text is not a complete line) [count] times.
Plug 'vim-scripts/UnconditionalPaste'

" A Vim plugin for focussing on a selected region
" <Leader>nr       - Open the current visual selection in a new narrowed window
Plug 'chrisbra/NrrwRgn'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace' "{{{
  let g:strip_whitespace_on_save = 1
"}}}

" easily search for, substitute, and abbreviate multiple variants of a word
" MixedCase (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
Plug 'tpope/vim-abolish'

" A vim plugin that simplifies the transition between multiline and single-line code
  " gS to split a one-liner into multiple lines
  " gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
Plug 'AndrewRadev/splitjoin.vim'

" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
Plug 'kana/vim-textobj-entire'

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

" toggle true/false, && || etc
Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' } "{{{
  let g:switch_mapping = ""
  nnoremap <silent> g- :Switch<CR>
"}}}

" Use your favorite grep tool (ag, ack, git grep, ripgrep, pt, sift, findstr,
" grep) to start an asynchronous search. All matches will be put in a quickfix
" or location list.
Plug 'mhinz/vim-grepper' "{{{
  " let g:grepper = {
  "     \ 'tools':     ['ag', 'csearch', 'findstr'],
  "     \ 'dispatch':  1,
  "     \ 'open':      1,
  "     \ 'switch':    0,
  "     \ 'jump':      0,
  "     \ 'ag': {
  "     \   'grepprg': 'ag --nogroup --nocolor --column',
  "     \   'grepformat': '%f:%l:%c:%m'
  "     \ },
  "     \ 'csearch': {
  "     \   'grepprg': 'csearch -n',
  "     \   'grepformat': '%f:%l:%m'
  "     \ }}

  " nmap gs  <plug>(GrepperOperator)
  " xmap gs  <plug>(GrepperOperator)

  nmap <leader>vv <plug>(GrepperOperator)iw
  xmap <leader>vv <plug>(GrepperOperator)iw
"}}}

" vim search status (similar to indexedsearch)
Plug 'osyo-manga/vim-anzu' "{{{
  let g:anzu_enable_CursorMoved_AnzuUpdateSearchStatus = 1
" }}}

" incrementally highlights ALL pattern matches unlike default 'incsearch'
Plug 'haya14busa/incsearch.vim' "{{{
  let g:incsearch#auto_nohlsearch = 1
  let g:incsearch#do_not_save_error_message_history = 1
  let g:incsearch#separate_highlight = 1
  " let g:incsearch#magic = '\v' " very magic

  " search autocomplete
  augroup incsearch-keymap
      autocmd!
      autocmd VimEnter * call s:incsearch_keymap()
  augroup END
  function! s:incsearch_keymap()
      IncSearchNoreMap <Tab> <Over>(buffer-complete)
      IncSearchNoreMap <S-Tab> <Over>(buffer-complete-prev)
  endfunction

  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)

  " map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
  " map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
  map n <Plug>(incsearch-nohl)<Plug>(anzu-mode-n)
  map N <Plug>(incsearch-nohl)<Plug>(anzu-mode-N)

  " map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
  " map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
  " map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
  " map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
  "
  " map z*  <Plug>(incsearch-nohl0)<Plug>(asterisk-z*)
  " map gz* <Plug>(incsearch-nohl0)<Plug>(asterisk-gz*)
  " map z#  <Plug>(incsearch-nohl0)<Plug>(asterisk-z#)
  " map gz# <Plug>(incsearch-nohl0)<Plug>(asterisk-gz#)
"}}}

" vim-interestingwords allows you to highlight and navigate through (multiple) different words in a buffer
Plug 'vasconcelloslf/vim-interestingwords' "{{{
  let g:interestingWordsDefaultMappings = 0

  " temporary hack
  nnoremap µ <Plug>InterestingWords

  nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
  nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
  nnoremap <silent> <M-.> :call WordNavigation(1)<CR>
  nnoremap <silent> <M-,> :call WordNavigation(0)<CR>
"}}}

" create your own text objects (dependency)
Plug 'kana/vim-textobj-user'

" vgb     select last pasted text
" dgb     delete last pasted text
" =gb     re-indent last pasted text
Plug 'saaguero/vim-textobj-pastedtext'

" Speed up Vim by updating folds only when called-for
Plug 'konfekt/fastfold'

" start screen
Plug 'mhinz/vim-startify' "{{{
  let g:startify_custom_header = []
" }}}

" Plugin to toggle, display and navigate marks
" m<Space> Delete all marks from the current buffer
" m/ Open location list and display marks from current buffer
" ]` Jump to next mark
" [` Jump to prev mark
Plug 'kshenoy/vim-signature'

" Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors' "{{{
  let g:multi_cursor_use_default_mapping=0
  let g:multi_cursor_exit_from_insert_mode=0
  " let g:multi_cursor_quit_key='<Esc>'
  let g:multi_cursor_quit_key='<C-c>'
  let g:multi_cursor_next_key='<C-d>'

  nnoremap <silent> <C-c> :call multiple_cursors#quit()<CR>
" }}}

" colon and semicolon insertion plugin
Plug 'lfilho/cosco.vim' "{{{
  autocmd FileType javascript,css,sh nnoremap <silent> <C-s> :call cosco#commaOrSemiColon()<CR>
  autocmd FileType javascript,css,sh inoremap <silent> <C-s> <c-o>:call cosco#commaOrSemiColon()<CR>
" }}}

" snippets support
Plug 'SirVer/ultisnips' " {{{
  let g:UltiSnipsSnippetsDir = "~/vimfiles/UltiSnips"
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

  " new snippet template
  let@s="o40i-I# osnippetoendsnippetkkA  "

  map <leader>ee :UltiSnipsEdit<CR>
" }}}

" Edit large files quickly: its just an autocmd that disables certain features of vim in the interests of speed
Plug 'vim-scripts/LargeFile'

" <Leader>z    fold away lines not matching the last search pattern.
" <Leader>iz   fold away lines that do match the last search pattern (inverse folding).
" <Leader>Z    restore the previous fold settings
Plug 'vim-scripts/searchfold.vim'

" quoting/parenthesizing made simple
" ysiw(  surround an inner word with ( )
" yss(   surround a line with        ( )
Plug 'tpope/vim-surround'

" autodetect tabs/spaces of buffer
Plug 'tpope/vim-sleuth'

" readline mappings in insert/command line mode
Plug 'tpope/vim-rsi'

" CtrlP plugin: Filetype finder and setter
Plug 'endel/ctrlp-filetype.vim' "{{{
  silent! nnoremap <unique> <silent> <Leader>F :CtrlPFiletype<CR>
" }}}

" Fast vim CtrlP matcher based on python
Plug 'FelikZ/ctrlp-py-matcher'

" A simple function navigator for ctrlp.vim
Plug 'tacahiroy/ctrlp-funky' "{{{
  let g:ctrlp_funky_syntax_highlight = 1

  nnoremap <Leader>fu :CtrlPFunky<Cr>
  " narrow the list down with a word under cursor
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" }}}

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_extensions = ['filetype', 'funky']
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
  let g:ctrlp_user_command = 'fd --type file --hidden --follow --exclude .git'

  nnoremap <silent> <leader>b :CtrlPBuffer<cr>
  nnoremap <silent> <leader>l :CtrlPLine<cr>
  nnoremap <silent> <leader>r :CtrlPMRUFiles<cr>
"}}}

Plug 'fisadev/vim-ctrlp-cmdpalette' "{{{
  " let g:ctrlp_cmdpalette_execute=1
  nmap <silent> <leader>P :CtrlPCmdPalette<CR>
"}}}

" An extension to ctrlp.vim for deleting open buffers
" Open ctrlp in buffer mode (c-p c-b), filter as needed, navigate to a buffer you wish to close and press c-@ (c-2). The buffer will be deleted and will disappear from the list.
" You may also mark multiple buffers with c-z and then close them all at once with a single press of c-@.
Plug 'd11wtq/ctrlp_bdelete.vim'

" Git branch searching using CtrlP.vim
Plug 'imkmf/ctrlp-branches' "{{{
  nmap <silent> <leader>g :CtrlPBranches<CR>
"}}}

"  Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree,
"  vim-airline, unite, vim-startify and many more
Plug 'ryanoasis/vim-devicons' "{{{
  " enable open and close folder/directory glyph flags (disabled by default with 0)
  let g:DevIconsEnableFoldersOpenClose = 1
  " enable folder/directory glyph flag (disabled by default with 0)
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  " whether or not to show the nerdtree brackets around flags
  " let g:webdevicons_conceal_nerdtree_brackets = 1
  " the amount of space to use after the glyph character (default ' ')
  " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
  " Force extra padding in NERDTree so that the filetype icons line up vertically
  " let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

  if exists('g:loaded_webdevicons')
      call webdevicons#refresh()
  endif
" }}}

" Comment plugin
Plug 'tomtom/tcomment_vim'

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

Plug 'easymotion/vim-easymotion' "{{{
  map = <Plug>(easymotion-prefix)
  map <M-f> =f
  map <M-b> =F
"}}}

" Start a * or # search from a visual block
Plug 'bronson/vim-visual-star-search'

" auto-closer - insert or delete brackets, parens, quotes in pair
" Shortcuts:
"   <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"   <BS>  : Delete brackets in pair
"   <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"   <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"   <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"   <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
Plug 'jiangmiao/auto-pairs' " {{{
  let g:AutoPairsMultilineClose = 0
  let g:AutoPairsShortcutToggle = ''
  let g:AutoPairsShortcutJump = ''
" }}}

" jsx syntax highlight
Plug 'MaxMEllon/vim-jsx-pretty' "{{{
  let g:vim_jsx_pretty_colorful_config = 1
" }}}

" language pack
" :CoffeeMake \ :make
" :CoffeeWatch [vert[ical]] [WINDOW-SIZE]
Plug 'sheerun/vim-polyglot' "{{{
  let g:polyglot_disabled = ['jsx']
  " let g:jsx_ext_required = 0

  let g:javascript_plugin_jsdoc = 1
  let g:javascript_plugin_ngdoc = 1
  let g:javascript_plugin_flow = 1
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
" }}}

" autocompletion
Plug 'ervandew/supertab' " {{{
  set completeopt+=longest

  let g:SuperTabDefaultCompletionType = '<C-n>'
  let g:SuperTabLongestHighlight = 1
  let g:SuperTabLongestEnhanced = 1
" }}}

" autocomplete plugin - autoopen popup when 2 letters typed
Plug 'exvim/ex-autocomplpop' "{{{
  " prevents adding new line when choosing item from autocomplete dropdown
  inoremap <expr> <CR> pumvisible()
        \ ? "\<C-y>"
        \ : "\<C-g>u\<CR>"
" }}}

" allows to visually select increasingly larger regions of text using the same key combination
Plug 'terryma/vim-expand-region' "{{{
  map <M-s> <Plug>(expand_region_expand)
  map <M-d> <Plug>(expand_region_shrink)
  " vmap v <Plug>(expand_region_expand)
  " vmap <C-v> <Plug>(expand_region_shrink)
" }}}

" plugin that defines a new text object representing lines of code at the same indent level
" <count>ai	An Indentation level and line above.
" <count>ii	Inner Indentation level (no line above).
" <count>aI	An Indentation level and lines above/below.
" <count>iI	Inner Indentation level (no lines above/below).
Plug 'michaeljsmith/vim-indent-object'

" Easy text exchange operator for Vim
" nmap cx <Plug>(Exchange)
" vmap X <Plug>(Exchange)
" nmap cxc <Plug>(ExchangeClear)
" nmap cxx <Plug>(ExchangeLine)
Plug 'tommcdo/vim-exchange'

" cmdline-mode enhancement for Vim
" Plug 'gelguy/Cmd2.vim' "{{{
"   let g:Cmd2__complete_ignorecase = 1
  nnoremap <Space> :
"   cmap <F12> <Plug>(Cmd2Suggest)
"   nmap / /<F12>
"   nmap ? ?<F12>
"   nmap : :<F12>
"   nmap <Space> :<F12>
" }}}

  " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks
    " nmap [c <Plug>GitGutterPrevHunk
    " nmap ]c <Plug>GitGutterNextHunk
    " nmap <Leader>hs <Plug>GitGutterStageHunk
    " nmap <Leader>hu <Plug>GitGutterUndoHunk
    " nmap <Leader>hp <Plug>GitGutterPreviewHunk
  Plug 'airblade/vim-gitgutter' "{{{
    " let g:gitgutter_realtime = 0
    " let g:gitgutter_highlight_lines = 1

    nmap <silent> <C-g> :GitGutterToggle<CR>

    " double git gutter symbols for better visibility
    let g:gitgutter_sign_added = '✚✚'
    " let g:gitgutter_sign_modified = '••'
    let g:gitgutter_sign_modified = '✱✱'
    let g:gitgutter_sign_removed = '✘✘'
    " let g:gitgutter_sign_removed_first_line = '^^'
    let g:gitgutter_sign_removed_first_line = '▲▲'
    " let g:gitgutter_sign_modified_removed = '➜_'
    let g:gitgutter_sign_modified_removed = '✱_'

    " let g:gitgutter_sign_added = '✚'
    " let g:gitgutter_sign_modified = '➜'
    " let g:gitgutter_sign_removed = '✘'
    " let g:gitgutter_sign_removed_first_line = '^'
    " let g:gitgutter_sign_modified_removed = '➜_'

    " let g:gitgutter_sign_added = '✚'
    " let g:gitgutter_sign_modified = '✔'
    " let g:gitgutter_sign_removed = '✘'
    " let g:gitgutter_sign_removed_first_line = '^'
    " let g:gitgutter_sign_modified_removed = '~_'
  " }}}

" ================================================================================
" Unused:
" ================================================================================
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
" Python plugins start
" --------------------------------------------------------------------------------
" Python code folding for Vim
" Plug 'tmhedberg/SimpylFold', { 'for': 'python' } "{{{
  " let g:SimpylFold_docstring_preview=1

  " ensure SimpylFold init properly
  " autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
  " autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" }}}

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
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
" Plug 'klen/python-mode', { 'for': 'python' } "{{{
  " in case of glitches
  " au BufWriteCmd *.py write || :PymodeLint

  " NOTE: consider using
  " let g:pymode_rope = 0
  " https://github.com/davidhalter/jedi-vim
" }}}

" This indentation script for python tries to match more closely what is suggested in PEP 8
" Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }
" --------------------------------------------------------------------------------
" Python plugins end
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

" Ease your git worflow within vim
" Plug 'jreybert/vimagit' "{{{
  " let g:magit_default_fold_level = 2
  " let g:magit_refresh_gitgutter = 1
" }}}

" A Vim plugin for managing three-way merges
" Plug 'sjl/splice.vim'

" Argumentative aids with manipulating and moving between function arguments
" Plug 'PeterRincker/vim-argumentative' "{{{
  " nmap <; <Plug>Argumentative_MoveLeft
  " nmap >; <Plug>Argumentative_MoveRight
" }}}

" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers
" Plug 'junegunn/vim-peekaboo' "{{{
  " let g:peekaboo_ins_prefix = '<c-x>'
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

" val - select line (including whitespace)
" vil - select line
" Plug 'kana/vim-textobj-line'

" Mappings for simultaneously pressed keys
" Plug 'kana/vim-arpeggio'

" Vim plugin to provide text objects for numbers
" Plug 'tkhren/vim-textobj-numeral'

" a small collection of settings,
" commands and mappings put together to make working with the
" location/quickfix list/window smoother.
" Plug 'romainl/vim-qf' "{{{
  " nmap <silent> <F4> <Plug>QfCtoggle
  " nmap <silent> <F7> <Plug>QfLtoggle
" }}}

" improved */# search
" Plug 'haya14busa/vim-asterisk' "{{{
"   let g:asterisk#keeppos = 1
" }}}

" asynchronous build and test dispatcher
" Plug 'tpope/vim-dispatch'

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

" Git wrapper
" Plug 'tpope/vim-fugitive' "{{{
  " nnoremap <leader>ga :Git add %:p<CR><CR>
  " nnoremap <leader>gs :Gstatus<CR>
  " nnoremap <leader>gc :Gcommit -v -q<CR>
  " nnoremap <leader>gt :Gcommit -v -q %:p<CR>
  " nnoremap <leader>gd :Gdiff<CR>
  " nnoremap <leader>ge :Gedit<CR>
  " nnoremap <leader>gr :Gread<CR>
  " nnoremap <leader>gw :Gwrite<CR><CR>
  " nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
  " nnoremap <leader>gp :Ggrep<Space>
  " nnoremap <leader>gm :Gmove<Space>
  " nnoremap <leader>gb :Git branch<Space>
  " nnoremap <leader>go :Git checkout<Space>
  " nnoremap <leader>gps :Dispatch! git push<CR>
  " nnoremap <leader>gpl :Dispatch! git pull<CR>
" }}}

" git runtime files
" Plug 'tpope/vim-git'

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

" :Autoformat
" Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' } "{{{
  " To disable the fallback to vim's indent file, set the following variable to be 0.
  " let g:autoformat_autoindent = 0

  " noremap <F3> :Autoformat<cr>
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

" ================================================================================

call plug#end()
