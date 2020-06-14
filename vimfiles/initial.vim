"=================================================
" commands that should load before everything else
"=================================================

" force python 3 usage
" https://robertbasic.com/blog/force-python-version-in-vim
if has('python3')
endif

filetype plugin indent on
syntax on

runtime macros/matchit.vim

if filereadable(expand("~/.vimrc.before.local"))
  source ~/.vimrc.before.local
endif
