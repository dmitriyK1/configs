" Language agnostic vim plugin for folding and motion based on indentation.
" Maps motion commands to [[, ]], [j, ]k
Plug 'pseewald/vim-anyfold' "{{{
"}}}

" Provides the ability to cycle open and closed folds and nested folds.
" normal <CR> Cycle open nested folds
" normal <BS> Cycle close nested folds
Plug 'arecarn/vim-fold-cycle'

" Speed up Vim by updating folds only when called-for
Plug 'konfekt/fastfold'

" <Leader>z    fold away lines not matching the last search pattern.
" <Leader>iz   fold away lines that do match the last search pattern (inverse folding).
" <Leader>Z    restore the previous fold settings
Plug 'vim-scripts/searchfold.vim'

" A Vim plugin for focussing on a selected region
" <Leader>nr - Open the current visual selection in a new narrowed window
Plug 'chrisbra/NrrwRgn'
