 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               To remember                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" earlier 5m
" later 1m
" U         undo a change on one line

" gu        lowercase selection
" gU        uppercase selection
" g~ / ~    invert case of selection

" gi        go to last position of insert mode
" @:        repeat last colon command
" :CoffeeMake \ :make
" :CoffeeWatch [vert[ical]] [WINDOW-SIZE]
"
" Occur.vim:
  " <Leader>oc   - Occur (Search current buffer) 
  " <Leader>mo   - Moccur (Search all buffers)
  " <Leader>*    - StarOccur (Search all buffers for occurrence of the word nearest to the cursor)
  " <Space> : Set current window height to highest.
  " x : Display the occurence the current line.
  " q : Quit the quickfix window.
"
" :grep <patter> <file name pattern>         
" example: :grep colorscheme %          (search in current file)

" :Ack <pattern> <file>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Nice configs list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tpope/tpope/blob/master/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

if has("unix")
  " Do Linux stuff here
  let s:os    = "unix"

  if has("mac") || has("macunix")
    " Do Mac stuff here
  endif
elseif has("win32") || has("win16") || has("win64")
  let s:os    = "windows"
  " Do Windows stuff here
  if has("win32unix")
    " Cygwin
    set shell=bash
    set shellpipe=2>&1\|tee
    set shellslash
  endif
endif


if has("gui_running")
  if has('win32')
      set guifont=Consolas:h10   " Win32.
  elseif has('gui_macvim')
      set guifont=Monaco:h14     " OSX.
  else
      set guifont=Monospace\ 12  " Linux.
  endif

  set t_Co=256
  " colorscheme onedark
  " colorscheme molokai
  " colorscheme monokai2
  set lines=40                " 40 lines of text instead of 24

  set guioptions-=T
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
endif



"==============================================================
" VUNDLE CONFIG START 
"==============================================================
filetype off                  " required for Vundle


if s:os == "unix"
  set shell=/bin/bash
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#begin()
elseif s:os == "windows"
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
  call vundle#begin('$HOME/vimfiles/bundle/')
endif



" Plugins Start
Plugin 'VundleVim/Vundle.vim'
" git plugin
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/vim-easy-align'
Plugin 'sjl/gundo.vim'
" show git diff via sign column
" Plugin 'mhinz/vim-signify'
" autodetect tabs/spaces of buffer
Plugin 'tpope/vim-sleuth'
" readline keybindings
Plugin 'tpope/vim-rsi'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-heroku'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-repeat'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/occur.vim'
Plugin 'mileszs/ack.vim'
" custom status line
Plugin 'itchyny/lightline.vim'
" Plugin 'airblade/vim-gitgutter'
" braces auto-closing
Plugin 'Raimondi/delimitMate'
" js indentation support
Plugin 'sheerun/vim-polyglot'
Plugin 'Olical/vim-syntax-expand'
" cycle through yanks (alt-p \ alt-shift-p)
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'tpope/vim-speeddating'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'heavenshell/vim-jsdoc'

" Plugin 'kien/rainbow_parentheses.vim'        // breaks syntax highlighting
" https://github.com/scrooloose/syntastic      // slow
" Plugins End

" https://github.com/Valloric/YouCompleteMe
" https://github.com/SirVer/ultisnips
" https://github.com/Shutnik/jshint2.vim
" http://vimawesome.com
" http://spf13.com/post/the-15-best-vim-plugins
" Plugin 'moll/vim-bbye'
" https://github.com/tpope/vim-dispatch

call vundle#end()            
filetype plugin indent on    
"==============================================================
" VUNDLE CONFIG END
"==============================================================







runtime macros/matchit.vim


" ==============================================================================
" LET VARIABLES START
" ==============================================================================
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

let s:oldcmdline = [ ]
let mapleader=","

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

set browsedir=current

map <leader>x :Vex<CR>

autocmd FileType netrw setl bufhidden=wipe
"map - :Vex<CR>
map - :NERDTreeToggle<CR>
"map = <C-l><C-w>o

" ==============================================================================
" LET VARIABLES END
" ==============================================================================
" using colon as a separator to easier read regular expressions; 
" using \v key to make vim regular expressions work as common regexps
map <leader>% :%s:\v::g<Left><Left><Left>

" find and replace with confirmation
map <leader>; :%s:\v::cg<Left><Left><Left><Left>

 " make regexp search not suck by default
nnoremap / /\v
vnoremap / /\v
" copy
vnoremap <C-c> "*y

map gi gi<Esc>

 " These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Add ignorance of whitespace to diff
set diffopt+=iwhite

set grepprg=grep\ -nH\ $*                   " Make grep always print the file name.
set fileformats=unix,mac,dos                " Allows automatic line-end detection.

set nomodeline
set modelines=0

set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too

if exists('+macmeta')
  set macmeta
endif

set ttyfast

set background=dark

filetype plugin indent on
syntax on
nmap <Space> :
set wildchar=<Tab> wildmenu
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set wildcharm=<C-Z>
set showmatch     " set show matching parenthesis
set matchtime=0
set nowrap        " don't wrap lines
set undolevels=1000      " use many muchos levels of undo

" Don't show the current command in the lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Hide the mouse pointer while typing
set mousehide

set sidescroll=1
set sidescrolloff=3
set noerrorbells
set printoptions=paper:letter
nnoremap <F10> :b <C-Z>
nmap ! :!
set number
set relativenumber
set wildmenu
set hlsearch
" When sourcing this file, do not immediately turn on highlighting.
nohlsearch
set incsearch
set ignorecase
set smartcase
set hidden
set title
" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set titleold=""
execute "set titleold=".hostname()

" clear hlsearch
nmap <leader><space> :nohlsearch<cr>

" toggle hlsearch
nnoremap <leader>/ :set invhlsearch<cr>

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

noremap <leader>w :update<CR>
noremap <leader>, :update<CR>

map = <Plug>(easymotion-prefix)

nnoremap <F5> :buffers<CR>:buffer<Space>
map gn :bn<CR>
map gp :bp<CR>
" map gc :bd<CR>
" map gd :bd<CR>
map <leader>d :bd<CR>

" set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:. " Highlight problematic whitespace

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" nnoremap / /\v
" vnoremap / /\v
set gdefault

" set formatoptions=qrn1
set formatoptions+=cqron1                   " Some useful formatting options

nmap <leader>l :set list!<CR>

nmap vv ggVG

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
nnoremap <leader>v V`]

noremap <leader>r :set relativenumber!<CR>
nnoremap <leader>n :setlocal number!<CR>
nmap <silent> <leader>se :e $MYVIMRC<CR>
noremap <leader>ss :source $MYVIMRC<CR>
"
" Source current file
noremap <leader>so :so%<CR>
" nnoremap <leader>m :mksession<CR>
nnoremap <leader>p :set paste!<CR>
set shiftwidth=4
set shiftround
set tabstop=4
set expandtab
set softtabstop=4               " Let backspace delete indent
set history=1000
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set shortmess=atI

" prevent flashing
set novisualbell t_vb=
set cursorline
" set lazyredraw

set foldlevelstart=10
set foldnestmax=10
" nnoremap <space> za
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap L $

" -------------------------------------------------------------------------
"               Prevent cursor from moving when leaving insert mode
" -------------------------------------------------------------------------
"let CursorColumnI = 0 "the cursor column position in INSERT
"autocmd InsertEnter * let CursorColumnI = col('.')
"autocmd CursorMovedI * let CursorColumnI = col('.')
"autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
" -------------------------------------------------------------------------

inoremap jj <ESC>

" add semicolon at the end of the line in insert mode
map <C-s> A;<Esc>
imap <C-s> <end>;<Esc>

" highlight last inserted text
nnoremap gV `[v`]


cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
cnoremap <C-b>  <Left>
cnoremap <C-p>  <Up>
cnoremap <C-n>  <Down>
cnoremap <C-f>  <Right>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <C-g>  <Delete>
" cnoremap <C-g>  <C-c>



cnoremap <C-K> <C-\>e<SID>KillLine()<CR>



cnoremap <Esc>d <C-\>e<SID>KillWord()<CR>
cmap <M-D> <Esc>d



set autoindent
set copyindent    " copy the previous indentation on autoindenting
set smartindent

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Better Completion
set completeopt=longest,menuone,preview

" Resize splits when the window is resized
au VimResized * :wincmd =

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    "au WinLeave * set nocursorline
    "au WinEnter * set cursorline
    "au InsertEnter * set nocursorline
    "au InsertLeave * set cursorline
augroup END
" }}}

augroup file_types
    autocmd!
    autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=markdown
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.ts set ft=typescript syntax=typescript
    autocmd BufRead,BufNewFile *.es6 set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
    autocmd BufRead,BufNewFile *.twig set ft=htmldjango
    autocmd BufRead,BufNewFile *.rabl set ft=ruby
    autocmd BufRead,BufNewFile *.jade set ft=jade
augroup END


set wrapscan
set ch=2

set laststatus=2

set guioptions=acg

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" When completing by tag, show the whole tag, not just the function name
set showfulltag

set textwidth=0

" get rid of the silly characters in separators
set fillchars = ""

" Copy to system clipboard
set clipboard^=unnamed,unnamedplus

" Automatically read a file that has changed on disk
set autoread

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set pastetoggle=<F2>

" set mouse=a

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split previously opened file in a split window
nnoremap <leader>- :split<cr><C-w>j
nnoremap <leader>\ :vsplit<cr><C-w>l

" set fileformats="unix,dos,mac"
set nrformats=

set colorcolumn=85

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * silent! wa
" au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")

set termencoding=utf-8
set encoding=utf-8 nobomb                   " set default encoding
set nottybuiltin
set t_ut=                                   " http://sunaku.github.io/vim-256color-bce.html
set textwidth=0
set wrapmargin=0
set autowriteall


set switchbuf=useopen           " reveal already opened files from the
                                " quickfix window instead of opening new
                                " buffers

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" Quote current selection
vnoremap <leader>" <esc>a"<esc>gvo<esc>i"<esc>gvo<esc>ll
vnoremap <leader>' <esc>a'<esc>gvo<esc>i'<esc>gvo<esc>ll

nnoremap <tab> %
vnoremap <tab> %

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.html :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

"-----------------------------------------------------------------------------

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" TODO: fix; doesn't work now
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()





au filetype help set nonumber
set splitbelow " Split windows, ie Help, make more sense to me below
set splitright
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)






" Change directory to the current buffer when opening files.
set autochdir


set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

set nospell                           " Spell checking on
" Disable capitalization check in spellcheck.
set spellcapcheck=""

" Toggle spell check
map <F6> :setlocal spell! spelllang=en_us<CR>

set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator

" highlight clear SignColumn      " SignColumn should match background
" highlight clear LineNr          " Current line number row will have same background color in relative mode

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and " Selected characters/lines in visual mode
endif

if has('statusline')
    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set linespace=0                 " No extra spaces between rows
set winminheight=0              " Windows can be 0 line high

set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code


" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif



" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>


" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" repeat last colon command
" nmap :: @:
nmap \\ @:

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Easier horizontal scrolling
map zl zL
map zh zH

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" Get to home dir easier
nmap <leader>h :cd ~/ <CR>


" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>


" Easier formatting
" nnoremap <silent> <leader>q gwip



"-----------------------------------------------------------------------------
" Local system overrides
"-----------------------------------------------------------------------------
" if filereadable($HOME . "/.vimrc.local")
"   execute "source " . $HOME . "/.vimrc.local"
" endif

" Use local vimrc if available {
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
" }



" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup
set swapfile
set writebackup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if has('persistent_undo')
    " set undofile                " So is persistent undo ...
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

    if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif
    set undodir=./.vim-undo//
    set undodir+=~/.vim/undo//
endif

set backupskip=/tmp/*,/private/tmp/*
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap <M-,> :bp<cr>
nmap <M-.> :bn<cr>

" set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,globals,localoptions,tabpages


"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
nmap <M-j> ddp
nmap <M-k> ddkP

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
vmap <M-j> xp`[V`]
vmap <M-k> xkP`[V`]

" Prevent cursor jumps while joining lines
nnoremap J mzJ`z

" center the window automatically around the cursor after jumping to a location
" nnoremap n nzz
nnoremap } }zz
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz


" set wrap
" set linebreak


" Wildmenu completion {{{

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib

" }}}


" Line Return {{{

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" }}}

" System clipboard interaction.
noremap <leader>y "*y
vnoremap <leader>y "*ygv

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z


" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

" Cmdheight switching
nnoremap <leader>1 :set cmdheight=1<cr>
nnoremap <leader>2 :set cmdheight=2<cr>

"nnoremap / /\v
"vnoremap / /\v



" Fix linewise visual selection of various text objects
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV

let &scrolloff=999-&scrolloff
" Toggle 'keep current line in the center of the screen' mode
nnoremap <leader>C :let &scrolloff=999-&scrolloff<cr>

map <leader>c :set cursorline!<cr>

" Numbers {{{

" Motion for numbers.  Great for CSS.  Lets you do things like this:
"
" margin-top: 200px; -> daN -> margin-top: px;
"              ^                          ^
" TODO: Handle floats.

onoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
xnoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
onoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
onoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>



" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>


"Go to last edit location with ,.
nnoremap <leader>. `.

nmap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

 " Delete empty lines
nmap ,del :g/^$/d<cr>

" study later: https://github.com/skwp/dotfiles/tree/master/vim/settings

" TODO: split to files ( leader-commands etc. ) and source from here

" TODO: fix visual selection not showing up instantly

" This mapping will change the behavior of the <Enter> key when the popup menu is visible. In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does.
" inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '\<C-g>u\<CR>'

" TODO: make it work
" inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '<Plug>delimitMateCR'

"  What this accomplishes is it keeps a menu item always highlighted. This way you can keep typing characters to narrow the matches
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" original settings:
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set guicursor=n-c:hor20-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor-blinkon0,r-cr:block-Cursor-blinkwait200-blinkoff300-blinkon300,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,v:block-Cursor-blinkon0 

" from http://ku1ik.com/
" colorscheme monokai2
colorscheme molokai


" repeat last search and replace operation with confirmation
" TODO: currently replaces only first occurence on each line
noremap & :%sgc<cr>

" always use the command editing window
nnoremap / q/i\v
nnoremap ? q?i\v
nnoremap : q:i

map <silent> <leader>t :call ConcealToggle()<CR>

" ===============================================================================
" FUNCTIONS
" ===============================================================================

function! ConcealToggle()
    if &conceallevel == 0
        setlocal conceallevel=1
    else
        setlocal conceallevel=0
    endif
endfunction

function! <SID>saveUndoHistory(cmdline, cmdpos)
    if len(s:oldcmdline) == 0 || a:cmdline != s:oldcmdline[0][0]
        call insert(s:oldcmdline, [ a:cmdline, a:cmdpos ], 0)
    else
        let s:oldcmdline[0][1] = a:cmdpos
    endif
    if len(s:oldcmdline) > 100
        call remove(s:oldcmdline, 100)
    endif
endfunction


function! <SID>KillLine()
    call <SID>saveUndoHistory(getcmdline(), getcmdpos())
    let l:cmd = getcmdline()
    let l:rem = strpart(l:cmd, getcmdpos() - 1)
    if ('' != l:rem)
        let @c = l:rem
    endif
    let l:ret = strpart(l:cmd, 0, getcmdpos() - 1)
    call <SID>saveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! <SID>KillWord()
    call <SID>saveUndoHistory(getcmdline(), getcmdpos())
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
    call <SID>saveUndoHistory(l:ret, getcmdpos())
    return l:ret
endfunction


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction


function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction


function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! StripTrailingWhitespace()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! s:NumberTextObject(whole)
    normal! v

    while getline('.')[col('.')] =~# '\v[0-9]'
        normal! l
    endwhile

    if a:whole
        normal! o

        while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
            normal! h
        endwhile
    endif
endfunction

 " Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" -------------------------------------------------------------------------
"  autosave\autoload sessions
" -------------------------------------------------------------------------

" Creates a session
" !! should have $HOME/.vim/sessions folder to work properly on all OSes
" should create a session file if not present (<leader>m)
function! MakeSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessiondir = $HOME . "/.vim/sessions"
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:sessionfile = b:sessiondir . '/session.vim'
  exe "mksession! " . b:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
  " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessiondir = $HOME . "/.vim/sessions"
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe "mksession! " . b:sessionfile
    echo "updating session"
  endif
endfunction

" Loads a session if it exists
function! LoadSession()
  if argc() == 0
    " let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
    let b:sessiondir = $HOME . "/.vim/sessions"
    let b:sessionfile = b:sessiondir . "/session.vim"
    if (filereadable(b:sessionfile))
      exe 'source ' b:sessionfile
    else
      echo "No session loaded."
    endif
  else
    let b:sessionfile = ""
    let b:sessiondir = ""
  endif
endfunction

au VimEnter * nested :call LoadSession()
au VimLeave * :call UpdateSession()
map <leader>m :call MakeSession()<CR>

" -------------------------------------------------------------------------
 " fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
" -------------------------------------------------------------------------
"               Source the vimrc file after saving it
" -------------------------------------------------------------------------

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif


autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

noremap <F3> :Autoformat<CR>
" Or to have your code be formatted upon saving your file, you could use something like this:
" au BufWrite * :Autoformat

 " To disable the fallback to vim's indent file, set the following variable to be 0.
let g:autoformat_autoindent = 0

autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<tab>'

highlight Cursor guifg=white guibg=green

"==============================================================
" PLUGIN SETTINGS START
"==============================================================

" Tabular
" from https://github.com/AntJanus/my-dotfiles/blob/master/.vimrc
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>a: :Tabularize /:<CR>
nnoremap <leader>a- :Tabularize /-<CR>
vnoremap <leader>a- :Tabularize /-<CR>

"==============================================================
" PLUGIN SETTINGS END
"==============================================================

" Disable auto comments on a next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


autocmd FileType javascript vnoremap <buffer>  <c-f> : call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f>        : call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f>         : call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f>        : call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f>         : call RangeCSSBeautify()<cr>

" show quickfix window on compile errors
autocmd QuickFixCmdPost * nested cwindow | redraw!

let g:jsx_ext_required = 0
let g:javascript_enable_domhtmlcss = 1

set conceallevel=1
set concealcursor=nvic

" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_this           = "@"
" let g:javascript_conceal_return         = "⇚"
" let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

let g:javascript_conceal_function       = "λ"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "<"
let g:javascript_conceal_prototype      = "#"
let g:javascript_conceal_infinity       = "∞"

hi Conceal guibg=black guifg=red

" Map the conceal characters to their expanded forms.
inoremap <silent> @ <C-r>=syntax_expand#expand("@", "this")<CR>
inoremap <silent> # <C-r>=syntax_expand#expand("#", ".prototype.")<CR>
inoremap <silent> < <C-r>=syntax_expand#expand_head("<", "return")<CR>

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

nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)

let g:jsdoc_allow_input_prompt=1
let g:jsdoc_return_description=0
let g:jsdoc_enable_es6=1

nmap <C-k> A, <Esc>
nmap <C-k> A, <Esc>

nmap <silent> dJ dG
nmap <silent> dK dgg

map <silent> <leader>G :GundoToggle<CR>
