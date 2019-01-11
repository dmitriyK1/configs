"================================================
" commands that should load after everything else
"================================================

nohlsearch   " When sourcing this file, do not immediately turn on highlighting

if filereadable(expand("~/.vimrc.after.local"))
  source ~/.vimrc.after.local
endif

call ctrlp_bdelete#init()

" should be in the end to override settings from plugins
if !has('gui_running')
  set t_Co=256
endif

" NOTE: must be here because causes errors if loaded earlier
" set split separators characters
" set fillchars=stl:―,stlnc:—,vert:│,fold:۰,diff:·
set fillchars=vert:│

set secure
