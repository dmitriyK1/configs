
" http://vim.wikia.com/wiki/Using_vim_as_an_IDE_all_in_one

" TODO: try to integrate indexed search & incremental search (or change anzu settings)

" TODO: remove redundant keybindings ( delete keybindings provided by unimpaired first )
" TODO: replace custom functions etc. (find similar plugins instead)

" TODO: add automatic text wrap for plain text files (string splitting)

" TODO: add plugins lazy-loading
" https://github.com/saaguero/dotvim/blob/44c3bbc9b2996fcf7e86f624785a3a06ca978167/.vimrc#L60-L69

" TODO: ? try to make sneak default keybindings work ?

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://www.destroyallsoftware.com/talks    ( about regular expressions )
" https://www.amazon.com/Mastering-Regular-Expressions-Jeffrey-Friedl/dp/0596528124?ie=UTF8&*Version*=1&*entries*=0
" https://www.infoq.com/presentations/regex
" http://vimdoc.sourceforge.net/htmldoc/pattern.html

" http://blog.ezyang.com/2010/03/vim-textwidth/

" http://chibicode.com/vimrc/

" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/

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
"
" :grep <pattern> <file name pattern>
" example: :grep colorscheme %          (search in current file)

" :Ack <pattern> <file>

" Ctrl-P
" Press <c-f> and <c-b> to cycle between modes.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.

" Open help page for word under cursor
" SHIFT+k

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Good configs list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tpope/tpope/blob/master/.vimrc
" https://github.com/paulirish/dotfiles/blob/master/.vimrc
" https://github.com/saaguero/dotvim/blob/master/.vimrc
" https://github.com/skwp/dotfiles/tree/master/vim/settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
syntax on

runtime macros/matchit.vim

source ~/vimfiles/let.vim
source ~/vimfiles/set.vim
source ~/vimfiles/packages.vim
source ~/vimfiles/functions.vim
source ~/vimfiles/aucmds.vim
source ~/vimfiles/keybindings/map.vim
source ~/vimfiles/keybindings/leader.vim
source ~/vimfiles/conditionals.vim
source ~/vimfiles/highlight.vim

execute "set titleold=".hostname()

nohlsearch   " When sourcing this file, do not immediately turn on highlighting
