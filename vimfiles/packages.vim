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
source ~/vimfiles/packages/autoclosers.vim
source ~/vimfiles/packages/autocomplete.vim
source ~/vimfiles/packages/buffer.vim
source ~/vimfiles/packages/code_analysis.vim
source ~/vimfiles/packages/colorschemes.vim
source ~/vimfiles/packages/cosmetics.vim
source ~/vimfiles/packages/edit.vim
source ~/vimfiles/packages/folds.vim
source ~/vimfiles/packages/git.vim
source ~/vimfiles/packages/highlight.vim
source ~/vimfiles/packages/navigation.vim
source ~/vimfiles/packages/paste.vim
source ~/vimfiles/packages/preview.vim
source ~/vimfiles/packages/python.vim
source ~/vimfiles/packages/search.vim
source ~/vimfiles/packages/snippets.vim
source ~/vimfiles/packages/string_manipulation.vim
source ~/vimfiles/packages/textobjects.vim

call plug#end()
