" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

set browsedir=current

set noshowmode    " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Add ignorance of whitespace to diff
set diffopt+=iwhite

set grepprg=grep\ -nH\ $*                   " Make grep always print the file name.
set fileformats=unix,mac,dos                " Allows automatic line-end detection.

set nomodeline
set modelines=0

set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too

set ttyfast

set background=dark

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

" Hide the mouse pointer while typing
set mousehide

set sidescroll=1
set sidescrolloff=3
set noerrorbells
set printoptions=paper:letter


set nonumber
set norelativenumber
set wildmenu
set nohlsearch


set incsearch
set ignorecase
set smartcase
set hidden
set title
" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set titleold=""


" set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,nbsp:. " Highlight problematic whitespace

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" nnoremap / /\v
" vnoremap / /\v
set gdefault

" set formatoptions=qrn1
set formatoptions+=cqron1                   " Some useful formatting options


set shiftwidth=4
set shiftround
set tabstop=4
set expandtab
set softtabstop=4               " Let backspace delete indent
set history=1000


" Intuitive backspacing in insert mode
set backspace=indent,eol,start
set shortmess=atI

" prevent flashing
set novisualbell t_vb=
set cursorline
" set lazyredraw

set foldlevelstart=10
set foldnestmax=10


set foldmethod=indent
set foldlevel=99


set autoindent
set copyindent    " copy the previous indentation on autoindenting
set smartindent

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Better Completion
" set completeopt=longest,menuone,preview
set completeopt=menu


set wrapscan
set cmdheight=1

set laststatus=2

set guioptions=acg

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" get rid of the silly characters in separators
set fillchars = ""

" Copy to system clipboard
set clipboard^=unnamed,unnamedplus

" Automatically read a file that has changed on disk
set autoread

set synmaxcol=1000  " don't syntax-highlight long lines (default: 3000)

set pastetoggle=<F2>

" set mouse=a

" set fileformats="unix,dos,mac"
set nrformats=

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


set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator


set linespace=0                 " No extra spaces between rows
set winminheight=0              " Windows can be 0 line high

set scrolljump=0                " Lines to scroll when cursor leaves screen
set foldenable                  " Auto fold code
set scrolloff=999               " Minimum lines to keep above and below cursor; 999 - keep centered


set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set writebackup
set nobackup
set swapfile
set noundofile


set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.


" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo


set backupskip=/tmp/*,/private/tmp/*
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,globals,localoptions,tabpages
set sessionoptions+=unix,slash " for unix/windows compatibility


" set wrap
" set linebreak


" Wildmenu completion {{{

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.psd,*.min.js
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
" set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code

set wildignore+=*.orig                           " Merge resolution files

" Clojure/Leiningen
set wildignore+=classes
set wildignore+=lib

" }}}


" original settings:
"set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set guicursor=n-c:hor20-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor-blinkon0,r-cr:block-Cursor-blinkwait200-blinkoff300-blinkon300,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,v:block-Cursor-blinkon0


set foldcolumn=3


set conceallevel=1
set concealcursor=nvic


" for case-insensetive autocomplete
set infercase


set report=0       " Show all changes
set regexpengine=1 " Use the old regular expression engine (it's faster for certain language syntaxes)
" set showtabline=2  " Always show tab bar

set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll

set noequalalways " do not auto-resize windows when opening/closing them!
set confirm       " ask for confirmation by default (instead of silently failing)

set colorcolumn=0             " good value: 80

" show linebreak
set showbreak=>>>

" maximize vim window on startup:
" set lines=999 columns=999
" winpos 0 0

