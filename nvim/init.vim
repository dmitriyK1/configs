if &compatible
  set nocompatible
endif

" ================ Plugins ==================== {{{
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('morhetz/gruvbox')
  call packager#add('dracula/vim')
  call packager#add('junegunn/fzf.vim')
  call packager#add('Shougo/deoplete.nvim')
  call packager#add('tpope/vim-unimpaired')
  call packager#add('mhinz/vim-startify')
  call packager#add('airblade/vim-gitgutter')
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! PackagerUpdate call PackagerInit() | call packager#update()
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

" ================ Nvim-specific Config ==================== {{{
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" }}}
" ================ General Config ==================== {{{
set clipboard^=unnamed,unnamedplus                                              "Copy to system clipboard
set termguicolors
set title                                                                       "change the terminal's title
set history=500                                                                 "Store lots of :cmdline history
set termguicolors
set noshowmode                                                                  "Hide showmode
set gdefault                                                                    "Set global flag for search and replace
set cursorline                                                                  "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=a                                                                     "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
"set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
set notimeout
set ttimeout
set ttimeoutlen=10
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
silent! colorscheme dracula

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
 set colorcolumn=80
 set foldmethod=syntax

" }}}
" ================ Auto commands ====================== {{{
augroup vimrc
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow                                       "Open quickfix window after grepping
  autocmd InsertEnter * set nocul                                             "Remove cursorline highlight
  autocmd InsertLeave * set cul                                               "Add cursorline highlight in normal mode
  autocmd FocusGained,BufEnter * checktime                                    "Refresh file when vim gets focus
augroup END

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
set scrolloff=8                                                                 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=5

" }}}
" ================ Custom mappings ======================== {{{
" Down is really the next line
nnoremap j gj
nnoremap k gk

" Map for Escape key
inoremap jj <Esc>
tnoremap <Leader>jj <C-\><C-n>

map <Space> :
map <leader><leader> :w<CR>

" Yank to the end of the line
nnoremap Y y$

"Disable ex mode mapping
map Q <Nop>

map <leader>pi :PackagerInstall<CR>
map <leader>pu :PackagerUpdate<CR>

" ================ Plugins setups ======================== {{{
let g:deoplete#enable_at_startup = 1                                            "Enable deoplete on startup
let g:startify_custom_header = []
