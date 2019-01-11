" TODO: lazy-load what possible

" Lazy-loading example for filetypes:
" autocmd BufNewFile,BufRead *.gpg setf gpg
" Plug 'jamessan/vim-gnupg', { 'for': 'gpg' }

" Lazy-loading on <Plug> mappings:
" Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
" xmap ga <Plug>(EasyAlign)

" http://vimawesome.com
" http://spf13.com/post/the-15-best-vim-plugins

" vim-plug & plugins automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" location for plugins to be installed
call plug#begin('~/.vim/plugged')

" ================================================================================
source packages/colorschemes.vim
source packages/buffer.vim
source packages/textobjects.vim
source packages/folds.vim
source packages/python.vim
source packages/git.vim
source packages/highlight.vim

" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
"
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['javascript-typescript-stdio'],
"     \ }
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag' "{{{
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.ts,*.tsx,*.html.erb,*.md'
"}}}

" Peekaboo extends " and @ in normal mode and <CTRL-R> in insert mode so you can see the contents of the registers
Plug 'junegunn/vim-peekaboo' "{{{
  let g:peekaboo_ins_prefix = '<c-x>'
" }}}

Plug 'ludovicchabant/vim-gutentags' "{{{
  let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor", ".git", "node_modules", "*.vim/bundle/*"]
"}}}

" Plug 'jsfaint/gen_tags.vim'

" The missing preview window for vim
" PreviewClose - CTRL+W z
Plug 'skywind3000/vim-preview'

" Asynchronous Lint Engine
Plug 'w0rp/ale' "{{{
  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \}
  let g:ale_linters = {
  \   'python': ['flake8'],
  \   'javascript': ['eslint'],
  \}
  let g:ale_fix_on_save = 1
  let g:ale_linters_explicit = 1
  let g:ale_set_highlights = 0
  " nmap <C-1> <Plug>ALEPrevious
  nmap <silent> ]E :ALENextWrap<CR>
  nmap <silent> [E :ALEPreviousWrap<CR>
  " Write this in your vimrc file
  " let g:ale_set_loclist = 0
  " let g:ale_set_quickfix = 1

  " let g:ale_open_list = 1
  " Set this if you want to.
  " This can be useful if you are combining ALE with
  " some other plugin which sets quickfix errors, etc.
  " let g:ale_keep_list_window_open = 0
" }}}

" Have Vim automatically reload a file that has changed externally
Plug 'djoshea/vim-autoread'

" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
" Then whenever you are in the insert mode and paste into your terminal
" emulator using command+v, shift+insert, ctrl+shift+v or middle-click, vim
" will automatically :set paste for you.
Plug 'ConradIrwin/vim-bracketed-paste'

" :substitute preview
Plug 'osyo-manga/vim-over' "{{{
  map <silent> <leader>% :OverCommandLine<CR>%s/
" }}}

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" toggling settings mappings
Plug 'tpope/vim-unimpaired' "{{{
  autocmd VimEnter * nunmap ]x
  autocmd VimEnter * nunmap ]xx
  autocmd VimEnter * nunmap [x
  autocmd VimEnter * nunmap [xx
  autocmd VimEnter * xunmap ]x
  autocmd VimEnter * xunmap [x

  " Bubble single lines
  " map <M-k> [e
  " map <M-j> ]e
  " Bubble multiple lines
  " vmap <M-k> [egv
  " vmap <M-j> ]egv
" }}}

" Force linewise or characterwise paste, regardless of how it was yanked.
" gcp - Paste characterwise (newline characters and indent are flattened to spaces) [count] times.
" glp - Paste linewise (even if yanked text is not a complete line) [count] times.
" Plug 'vim-scripts/UnconditionalPaste'

" A Vim plugin for focussing on a selected region
" <Leader>nr       - Open the current visual selection in a new narrowed window
Plug 'chrisbra/NrrwRgn'

" easily search for, substitute, and abbreviate multiple variants of a word
" MixedCase (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
Plug 'tpope/vim-abolish'

" A vim plugin that simplifies the transition between multiline and single-line code
  " gS to split a one-liner into multiple lines
  " gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
Plug 'AndrewRadev/splitjoin.vim'

" toggle true/false, && || etc
Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' } "{{{
  let g:switch_mapping = ""
  nnoremap <silent> g- :Switch<CR>
"}}}

" Use your favorite grep tool (ag, ack, git grep, ripgrep, pt, sift, findstr,
" grep) to start an asynchronous search. All matches will be put in a quickfix
" or location list.
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] } "{{{
"  Useful examples are gsW, gsiw, or gsi".
  " In visual mode, it uses the current selection.
  nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)

  nmap <leader>vv <plug>(GrepperOperator)iw
  xmap <leader>vv <plug>(GrepperOperator)iw
"}}}

" improved */# search
Plug 'haya14busa/vim-asterisk' "{{{
  let g:asterisk#keeppos = 1
" }}}

" vim search status (similar to indexedsearch)
Plug 'osyo-manga/vim-anzu' "{{{
  let g:anzu_enable_CursorMoved_AnzuUpdateSearchStatus = 1
" }}}

Plug 'AndrewRadev/sideways.vim'
Plug 'kana/vim-submode'
Plug 'tek/vim-fieldtrip' "{{{
  let g:fieldtrip_start_map="<leader>sw"
"}}}

Plug 'haya14busa/is.vim' "{{{
  " map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
  " map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
  " map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
  " map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)

  map *  <Plug>(asterisk-*)<Plug>(is-nohl-1)
  map g* <Plug>(asterisk-g*)<Plug>(is-nohl-1)
  map #  <Plug>(asterisk-#)<Plug>(is-nohl-1)
  map g# <Plug>(asterisk-g#)<Plug>(is-nohl-1)
  map n <Plug>(is-nohl)<Plug>(anzu-mode-n)
  map N <Plug>(is-nohl)<Plug>(anzu-mode-N)
  "}}}

" incrementally highlights ALL pattern matches unlike default 'incsearch'
" Plug 'haya14busa/incsearch.vim' "{{{
"   let g:incsearch#auto_nohlsearch = 1
"   let g:incsearch#do_not_save_error_message_history = 1
"   let g:incsearch#separate_highlight = 1
"   " let g:incsearch#magic = '\v' " very magic
"
"   " search autocomplete
"   augroup incsearch-keymap
"       autocmd!
"       autocmd VimEnter * call s:incsearch_keymap()
"   augroup END
"   function! s:incsearch_keymap()
"       IncSearchNoreMap <Tab> <Over>(buffer-complete)
"       IncSearchNoreMap <S-Tab> <Over>(buffer-complete-prev)
"   endfunction
"
"   map /  <Plug>(incsearch-forward)
"   map ?  <Plug>(incsearch-backward)
"   map g/ <Plug>(incsearch-stay)
"
"   " map n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
"   " map N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
"   map n <Plug>(incsearch-nohl)<Plug>(anzu-mode-n)
"   map N <Plug>(incsearch-nohl)<Plug>(anzu-mode-N)
"
"   " map *  <Plug>(incsearch-nohl-*)
"   " map g* <Plug>(incsearch-nohl-g*)
"   " map #  <Plug>(incsearch-nohl-#)
"   " map g# <Plug>(incsearch-nohl-g#)
"
"   map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
"   map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
"   map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
"   map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
"
"   map z*  <Plug>(incsearch-nohl0)<Plug>(asterisk-z*)
"   map gz* <Plug>(incsearch-nohl0)<Plug>(asterisk-gz*)
"   map z#  <Plug>(incsearch-nohl0)<Plug>(asterisk-z#)
"   map gz# <Plug>(incsearch-nohl0)<Plug>(asterisk-gz#)
" "}}}

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
  autocmd FileType javascript,typescript,css,sh nnoremap <silent> <C-s> :call cosco#commaOrSemiColon()<CR>
  autocmd FileType javascript,typescript,css,sh inoremap <silent> <C-s> <c-o>:call cosco#commaOrSemiColon()<CR>
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

" quoting/parenthesizing made simple
" ysiw(  surround an inner word with ( )
" yss(   surround a line with        ( )
Plug 'tpope/vim-surround'

" autodetect tabs/spaces of buffer
Plug 'tpope/vim-sleuth'

" readline mappings in insert/command line mode
Plug 'tpope/vim-rsi'

" A vim script to provide CamelCase motion through words
Plug 'bkad/CamelCaseMotion'
map <silent> <leader>2 <Plug>CamelCaseMotion_w
map <silent> <leader>1 <Plug>CamelCaseMotion_b

" CtrlP plugin: Filetype finder and setter
Plug 'endel/ctrlp-filetype.vim' "{{{
  silent! nnoremap <unique> <silent> <Leader>F :CtrlPFiletype<CR>
" }}}

" Fast vim CtrlP matcher based on python
Plug 'FelikZ/ctrlp-py-matcher'

" Freaky fast fuzzy finder for (denite.nvim/CtrlP matcher) for vim/neovim
" Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}} "{{{
  " let g:fruzzy#usenative = 1
"}}}

" A simple function navigator for ctrlp.vim
Plug 'tacahiroy/ctrlp-funky' "{{{
  let g:ctrlp_funky_syntax_highlight = 1

  nnoremap <Leader>fu :CtrlPFunky<Cr>
  " narrow the list down with a word under cursor
  nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" }}}

" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim' "{{{
  let g:ctrlp_extensions = ['filetype', 'funky', 'undo', 'dir']
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_open_multiple_files = '1jr'
  let g:ctrlp_max_files = 0
  let g:ctrlp_lazy_update = 50
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  " let g:ctrlp_match_func = {'match': 'fruzzy#ctrlp#matcher'}
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
  " let g:ctrlp_working_path_mode = 0
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
  let g:ctrlp_user_command = 'fd --type file --hidden --follow --exclude .git'

  nnoremap <silent> <leader>b :CtrlPBuffer<cr>
  nnoremap <silent> <leader>l :CtrlPLine<cr>
  nnoremap <silent> <leader>r :CtrlPMRUFiles<cr>
  nnoremap <silent> <C-q> :CtrlP .<cr>
"}}}

" NOTE: Broken
" Plug 'jasoncodes/ctrlp-modified.vim'

Plug 'fisadev/vim-ctrlp-cmdpalette' "{{{
  " let g:ctrlp_cmdpalette_execute=1
  " TODO: needs remapping
  nmap <silent> <leader>P :CtrlPCmdPalette<CR>
"}}}

" An extension to ctrlp.vim for deleting open buffers
" Open ctrlp in buffer mode (c-p c-b), filter as needed, navigate to a buffer you wish to close and press c-@ (c-2). The buffer will be deleted and will disappear from the list.
" You may also mark multiple buffers with c-z and then close them all at once with a single press of c-@.
Plug 'd11wtq/ctrlp_bdelete.vim'

" Git branch searching using CtrlP.vim
Plug 'imkmf/ctrlp-branches' "{{{
  nmap <silent> <leader>gb :CtrlPBranches<CR>
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

  let g:webdevicons_enable_nerdtree = 0

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

" Easy text exchange operator for Vim
" nmap cx <Plug>(Exchange)
" vmap X <Plug>(Exchange)
" nmap cxc <Plug>(ExchangeClear)
" nmap cxx <Plug>(ExchangeLine)
Plug 'tommcdo/vim-exchange'

" cmdline-mode enhancement for Vim
" Plug 'gelguy/Cmd2.vim' "{{{
"   let g:Cmd2__complete_ignorecase = 1
  " nnoremap <Space> :
"   cmap <F12> <Plug>(Cmd2Suggest)
"   nmap / /<F12>
"   nmap ? ?<F12>
"   nmap : :<F12>
"   nmap <Space> :<F12>
" }}}

Plug 'dyng/ctrlsf.vim' "{{{
  map <leader>sf :CtrlSF <Right>
"}}}

" asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'

call plug#end()
