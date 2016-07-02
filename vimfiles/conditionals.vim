if has("unix")
  " Do Linux stuff here
  let g:os    = "unix"
  set shell=/bin/bash

  if has("mac") || has("macunix")
    " Do Mac stuff here
  endif
elseif has("win32") || has("win16") || has("win64")
  let g:os    = "windows"
  " Do Windows stuff here
  if has("win32unix")
    " Cygwin
    set shell=bash
    set shellpipe=2>&1\|tee
    set shellslash
  endif
endif

" --------------------------------------------------------------------------------

if has("gui_running")
  set ballooneval

  if has('win32')
      set guifont=Consolas:h12   " Win32.
      " set guifont=DejaVu\ Sans\ Mono:h11   " Win32.
      " set guifont=Source\ Code\ Pro:h11   " Win32.
  elseif has('gui_macvim')
      set guifont=Monaco:h14     " OSX.
  else
      set guifont=Monospace\ 12  " Linux.
  endif

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

" --------------------------------------------------------------------------------

if !has('gui_running')
  set t_Co=256
  let &t_Co=256
  set term=xterm
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
  set noerrorbells novisualbell t_vb=
  set t_ut= " setting for looking properly in tmux
endif

" --------------------------------------------------------------------------------

if exists('+macmeta')
  set macmeta
endif

" --------------------------------------------------------------------------------

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and " Selected characters/lines in visual mode
endif

" --------------------------------------------------------------------------------

if has('statusline')
    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" --------------------------------------------------------------------------------

" if filereadable($HOME . "/.vimrc.local")
"   execute "source " . $HOME . "/.vimrc.local"
" endif

" Use local vimrc if available
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

" --------------------------------------------------------------------------------

" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif

" --------------------------------------------------------------------------------

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif

" --------------------------------------------------------------------------------

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

" --------------------------------------------------------------------------------

 " Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" --------------------------------------------------------------------------------

if exists("&wildignorecase")
    set wildignorecase
endif

" --------------------------------------------------------------------------------

" Use Ag instead of ack and grep if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c:%m
  command! -nargs=+ -bang Ag silent! grep <args> | redraw! | botright copen
endif