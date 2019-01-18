" Handles bracketed-paste-mode in vim (aka. automatic `:set paste`)
" Then whenever you are in the insert mode and paste into your terminal
" emulator using command+v, shift+insert, ctrl+shift+v or middle-click, vim
" will automatically :set paste for you.
Plug 'ConradIrwin/vim-bracketed-paste'

" Force linewise or characterwise paste, regardless of how it was yanked.
" gcp - Paste characterwise (newline characters and indent are flattened to spaces) [count] times.
" glp - Paste linewise (even if yanked text is not a complete line) [count] times.
" Plug 'vim-scripts/UnconditionalPaste'

" Pasting in Vim with indentation adjusted to destination context
Plug 'sickill/vim-pasta'

" Automatically adjust number of blank lines when pasting
Plug 'AndrewRadev/whitespaste.vim'
