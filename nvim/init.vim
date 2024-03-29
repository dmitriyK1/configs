" unified vim/nvim config example
" https://github.com/threkk/dotfiles/tree/master/dotfiles/config/nvim
" https://threkk.medium.com/how-to-have-a-neovim-configuration-compatible-with-vim-b5a46723145e

set viminfo='100,n$HOME/.vim/files/info/viminfo

source ~/nvim/packages.vim

" ================ Nvim-specific Config ==================== {{{
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" }}}
" ================ General Config ==================== {{{
let mapleader=" "
let maplocalleader=" "
set guicursor=n-c:hor20,v-r-cr:block,i-ci-ve:ver25,o:hor50                     "set cursor shape
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set clipboard^=unnamed,unnamedplus                                              "Copy to system clipboard
" set hlsearch
set termguicolors
set title                                                                       "change the terminal's title
set history=500                                                                 "Store lots of :cmdline history
set noshowmode                                                                  "Hide showmode
set gdefault                                                                    "Set global flag for search and replace
set nocursorline                                                                "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=a                                                                     "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set shell=/bin/sh                                                               "Set shell
set nostartofline                                                               "Jump to first non-blank character
"set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
set notimeout
set ttimeout
set ttimeoutlen=10
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set fileencoding=utf-8                                                          "Set utf-8 encoding on write
set wrap                                                                        "Enable word wrap
set linebreak                                                                   "Wrap lines at convenient points
set listchars=tab:\ \ ,trail:·                                                  "Set trails for tabs and spaces
set list                                                                        "Enable listchars
set lazyredraw                                                                  "Do not redraw on registers and macros
set background=dark                                                             "Set background to dark
set hidden                                                                      "Hide buffers in background
set conceallevel=2 concealcursor=i                                              "neosnippets conceal marker
set splitright                                                                  "Set up new vertical splits positions
set splitbelow                                                                  "Set up new horizontal splits positions
set path+=**                                                                    "Allow recursive search
set inccommand=nosplit                                                          "Show substitute changes immidiately in separate split
set fillchars+=vert:\│                                                          "Make vertical split separator full line
set pumheight=15                                                                "Maximum number of entries in autocomplete popup
set exrc                                                                        "Allow using local vimrc
set secure                                                                      "Forbid autocmd in local vimrc
set grepprg=rg\ --vimgrep                                                       "Use ripgrep for grepping
set tagcase=smart                                                               "Use smarcase for tags
set updatetime=500                                                              "Cursor hold timeout
set synmaxcol=300                                                               "Use syntax highlighting only for 300 columns
set shortmess+=c                                                                "Disable completion menu messages in command line
set undofile                                                                    "Keep undo history across sessions, by storing in file
set completeopt-=preview                                                        "Disable preview window for autocompletion

filetype plugin indent on
syntax on
" silent! colorscheme dracula
set helpheight=99999 " maximize help window

" }}}
" ================ Turn Off Swap Files ============== {{{
 set noswapfile
 set nobackup
 set nowritebackup

" }}}
" ================ Indentation ====================== {{{
 set shiftwidth=2
 set softtabstop=2
 set tabstop=2
 set expandtab
 set breakindent
 set smartindent
 set nofoldenable
"  set colorcolumn=80
 set colorcolumn=0
 set foldmethod=syntax

" }}}
" ================ Auto commands ====================== {{{
augroup vimrc
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow                                       "Open quickfix window after grepping
  autocmd InsertEnter * set nocul                                             "Remove cursorline highlight
  autocmd InsertLeave * set cul                                               "Add cursorline highlight in normal mode
  autocmd FocusGained,BufEnter * checktime                                    "Refresh file when vim gets focus
  autocmd FileType help nmap <buffer> q :q<CR>                                "Bind `q` to exit in a help buffer
  autocmd BufEnter * silent! lcd %:p:h                                        "Set the current directory for the current window.  The current directory for other windows or tabs is not changed.
augroup END

" Autosave {{{
  autocmd FocusLost,BufLeave * silent! wall
" }}}

autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')

" recall last file position {{{
  autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" }}}
" }}}
" ================ Completion ======================= {{{
set wildmode=list:full
set wildignore=*.o,*.obj,*~                                                     "stuff to ignore when tab completing
set wildignore+=*.git*
set wildignore+=*.meteor*
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*mypy_cache*
set wildignore+=*__pycache__*
set wildignore+=*cache*
set wildignore+=*logs*
set wildignore+=*node_modules/**
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" }}}
" ================ Scrolling ======================== {{{
" set scrolloff=8                                                                 "Start scrolling when we're 8 lines away from margins
set scrolloff=999
set sidescrolloff=15
set sidescroll=5

" }}}
" ================ Custom mappings ======================== {{{
" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Map for Escape key
inoremap jj <Esc>
tnoremap <Leader>jj <C-\><C-n>

" map <Space> :
noremap <Leader>; :
map Q :
map <leader><leader> :w<CR>

" Yank to the end of the line
nnoremap Y y$

"Disable ex mode mapping
" map Q <Nop>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pu :PlugUpgrade<CR>:PlugUpdate<CR>

nnoremap <leader>se :e $MYVIMRC<CR>
nnoremap <leader>sl :e $HOME/init.local.vim<CR>
nnoremap <leader>ss :source $MYVIMRC<CR>
nnoremap <leader>sp :e $HOME/configs/nvim/packages.vim<CR>

" nnoremap <silent> <leader>, :bp<CR>
" nnoremap <silent> <leader>. :bp<CR>
" nnoremap <silent> <M-,> :bp<CR>
" nnoremap <silent> <M-.> :bp<CR>

" Split previously opened file in a split window
nnoremap <leader>- :new<cr><C-w>j
nnoremap <leader>\ :vnew<cr><C-w>l

nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
" ================ Plugins settings ======================== {{{
let g:jedi#completions_enabled = 0
let g:deoplete#enable_at_startup = 1                                            "Enable deoplete on startup
let g:startify_custom_header = []

" CtrlP settings "{{{
  let g:ctrlp_extensions = ['undo', 'dir']
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_open_multiple_files = '1jr'
  let g:ctrlp_max_files = 0
  let g:ctrlp_lazy_update = 50
  let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
  let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
        \ 'file': '\.pyc$\|\.pyo$',
        \ }
  let g:ctrlp_user_command = 'fd --type file --hidden --follow --exclude .git'

  nnoremap <silent> <leader>b :CtrlPBuffer<CR>
  nnoremap <silent> <leader>r :CtrlPMRUFiles<CR>
  nnoremap <silent> <C-q> :CtrlP .<CR>
" }}}

nnoremap <leader>c :Sayonara<CR>
nnoremap <leader>d :Bdelete<CR>

" InterestingWords settings "{{{
  " hack to allow word navigation (triggers navigation between search results otherwise)
  nnoremap µ <Plug>InterestingWords
  nnoremap <silent> <leader>k :call InterestingWords('n')<CR>
  nnoremap <silent> <leader>K :call UncolorAllWords()<CR>
  nnoremap <silent> <M-p> :call WordNavigation(0)<CR>
  nnoremap <silent> <M-n> :call WordNavigation(1)<CR>
" }}}

" unimpaired settings "{{{
  autocmd VimEnter * nunmap ]x
  autocmd VimEnter * nunmap ]xx
  autocmd VimEnter * nunmap [x
  autocmd VimEnter * nunmap [xx
  autocmd VimEnter * xunmap ]x
  autocmd VimEnter * xunmap [x
" }}}

" vim-over settings {{{
  map <silent> <leader>% :%s/
" }}}

" conflict-marker settings {{{
  nmap <buffer><Up> <Plug>(conflict-marker-prev-hunk)
  nmap <buffer><Down> <Plug>(conflict-marker-next-hunk)
"}}}
"

" Highlighted yank {{{
  " let g:highlightedyank_highlight_duration = 300
" }}}

" vim-gitgutter "{{{
  nmap <silent> <C-g> :GitGutterToggle<CR>
  nnoremap <silent> <leader>gf :GitGutterFold<CR>
" }}}

" fugitive {{{
  nnoremap <leader>ga :Git add %<CR><CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gc :Gcommit -v -q<CR>
  nnoremap <leader>gC :Gcommit -v -q --no-verify<CR>
  nnoremap <leader>go :Git checkout %<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>gD :Git diff --staged<CR>
  nnoremap <leader>ge :Gedit <Right>
  nnoremap <leader>gv :Gvsplit <Right>
  nnoremap <leader>gre :Git reset %<CR>
  nnoremap <leader>gl :Git log -p --stat --no-merges<CR>
  nnoremap <leader>gh :Git show<CR>
  nnoremap <leader>gw :Git show<CR>
  nnoremap <leader>gps :Dispatch! git push<CR>
  nnoremap <leader>gpS :Dispatch! git push --no-verify<CR>
  nnoremap <leader>gpl :Dispatch! git pull<CR>
" }}}

" incsearch {{{
  map <leader>/ <Plug>(incsearch-fuzzy-/)
  map <leader>? <Plug>(incsearch-fuzzy-?)
  map <leader>g/ <Plug>(incsearch-fuzzy-stay)

  let g:incsearch#auto_nohlsearch = 1
  map n  <Plug>(incsearch-nohl-n)
  map N  <Plug>(incsearch-nohl-N)
  map *  <Plug>(incsearch-nohl-*)
  map #  <Plug>(incsearch-nohl-#)
"}}}

" fzf {{{
  " Insert mode completion
  " imap <c-x><c-k> <plug>(fzf-complete-word)
  imap <c-x><c-f> <plug>(fzf-complete-path)
  imap <c-x><c-j> <plug>(fzf-complete-file-ag)
  imap <c-x><c-l> <plug>(fzf-complete-line)

  " Replace the default dictionary completion with fzf-based fuzzy completion
  inoremap <expr> <c-x><c-k> fzf#vim#complete('cat /usr/share/dict/words')

  " https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
  nnoremap \f :GFiles<CR>
  nnoremap \F :Files<CR>
  nnoremap \b :Buffers<CR>
  nnoremap \h :History<CR>
  nnoremap \t :BTags<CR>
  nnoremap \T :Tags<CR>
  nnoremap \l :BLines<CR>
  nnoremap \L :Lines<CR>
  nnoremap \' :Marks<CR>
  nnoremap \a :Ag<Space>
  nnoremap \H :Helptags!<CR>
  nnoremap \C :Commands<CR>
  nnoremap \: :History:<CR>
  nnoremap \/ :History/<CR>
  nnoremap \M :Maps<CR>
  nnoremap \s :Filetypes<CR>

  nnoremap <leader><Tab> :Buffers<CR>

  " Open files in horizontal split
  nnoremap <silent> <leader>S :call fzf#run({
  \   'down': '40%',
  \   'sink': 'botright split' })<CR>

  " Open files in vertical horizontal split
  nnoremap <silent> <leader>v :call fzf#run({
  \   'right': winwidth('.') / 2,
  \   'sink':  'vertical botright split' })<CR>
"}}}

" lightline-bufferline {{{
  " let g:lightline#bufferline#shorten_path = 0
  let g:lightline#bufferline#enable_devicons = 1
  let g:lightline#bufferline#unicode_symbols = 1
  let g:lightline#bufferline#min_buffer_count = 2

  let g:lightline#bufferline#unnamed = '[No Name]'
  " let g:lightline.tabline            = {'left': [['buffers']], 'right': [['close']]}
  let g:lightline.tabline            = {'left': [['buffers']], 'right': [[]]}
  let g:lightline.component_expand   = {'buffers': 'lightline#bufferline#buffers'}
  let g:lightline.component_type     = {'buffers': 'tabsel'}

  let g:lightline#bufferline#show_number  = 2

  let g:lightline#bufferline#number_map = {
  \ 0: '0 ', 1: '1 ', 2: '2 ', 3: '3 ', 4: '4 ',
  \ 5: '5 ', 6: '6 ', 7: '7 ', 8: '8 ', 9: '9 '}

  " show file name without a path
  let g:lightline#bufferline#filename_modifier = ':t'

  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)
  nmap <Leader>7 <Plug>lightline#bufferline#go(7)
  nmap <Leader>8 <Plug>lightline#bufferline#go(8)
  nmap <Leader>9 <Plug>lightline#bufferline#go(9)
  nmap <Leader>0 <Plug>lightline#bufferline#go(10)
" }}}
"}}} =======================================================

" Use local init.vim if available
if filereadable(expand("~/init.local.vim"))
  source ~/init.local.vim
endif

" highlight settings =======================================
" transparent terminal background
" never move above `colorscheme` option
hi Normal guibg=NONE ctermbg=NONE

" fix jsx highlighting of end xml tags
hi link xmlEndTag xmlTag

set background=dark
" ==========================================================
