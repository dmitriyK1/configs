"=================================================
" commands that should load before everything else
"=================================================

filetype plugin indent on
syntax on

runtime macros/matchit.vim

if filereadable(expand("~/.vimrc.before.local"))
  source ~/.vimrc.before.local
endif
