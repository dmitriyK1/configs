
" http://vim.wikia.com/wiki/Using_vim_as_an_IDE_all_in_one

" TODO: prevent jumping on whitespace trim

" TODO: add automatic text wrap for plain text files

" TODO: add colorschemes to vimfiles instead of plugins

" TODO: remove plugin-less autocompletion

" TODO: fix % not working on braces bug ( ) in html files

" TODO: add plugins lazy-loading
" https://github.com/saaguero/dotvim/blob/44c3bbc9b2996fcf7e86f624785a3a06ca978167/.vimrc#L60-L69

" TODO: ? try to make sneak default keybindings work ?

" TODO: make vimcompletesme work

" TODO: add textobject plugins

" TODO: remove custom duplicated functionality, that already present in plugins

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://www.destroyallsoftware.com/talks    ( about regular expressions )
" https://www.amazon.com/Mastering-Regular-Expressions-Jeffrey-Friedl/dp/0596528124?ie=UTF8&*Version*=1&*entries*=0
" https://www.infoq.com/presentations/regex
" http://vimdoc.sourceforge.net/htmldoc/pattern.html

" http://blog.ezyang.com/2010/03/vim-textwidth/

" http://chibicode.com/vimrc/

" consider using
" let g:pymode_rope = 0
" https://github.com/davidhalter/jedi-vim

" Plug 'scrooloose/syntastic'
" let g:syntastic_check_on_open=1

" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               To remember                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search fold bindings:
"
" <leader>ig  toggle indent guides
"
" <Leader>z
" fold away lines not matching the last search pattern.

" <Leader>iz
" fold away lines that do match the last search pattern (inverse folding).

" <Leader>Z
" try hard to restore the previous fold settings"
"
"
"
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

" Ctrl-P
" Press <c-f> and <c-b> to cycle between modes.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.

" Open man page for word under cursor
" SHIFT+k

" :Wopen http://vim.org
" :Wsearch google how to learn vim
" <leader>ws searches WORD under cursor, while the same mapping in visual mode searches current visual selection

" https://github.com/tpope/vim-surround
" ysiw (     // surround an inner word with ()
" yss (      // surround a line with ()


" Python-mode
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Good configs list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/tpope/tpope/blob/master/.vimrc
" https://github.com/paulirish/dotfiles/blob/master/.vimrc
" https://github.com/saaguero/dotvim/blob/master/.vimrc
" https://github.com/skwp/dotfiles/tree/master/vim/settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: add package-specific let\set settings to packages.vim

" TODO: remove unnecessary keybindings

" TODO: check if all let mappings were transferred

" TODO: remove unnecessary functions (find similar plugins instead)

" TODO: prevent jumping on space trim

" TODO: https://github.com/csscomb/vim-csscomb



filetype plugin indent on
syntax on

runtime macros/matchit.vim

source ~/vimfiles/let.vim
source ~/vimfiles/set.vim
source ~/vimfiles/conditionals.vim
source ~/vimfiles/packages.vim
source ~/vimfiles/functions.vim
source ~/vimfiles/aucmds.vim
source ~/vimfiles/keybindings/map.vim
source ~/vimfiles/keybindings/leader.vim

colorscheme molokai

source ~/vimfiles/highlight.vim

execute "set titleold=".hostname()
call ToggleHiddenAll()

nohlsearch   " When sourcing this file, do not immediately turn on highlighting
