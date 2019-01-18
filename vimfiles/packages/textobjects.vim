" daf to Delete A Function
" vif to Visually select the code Inside a Function
" yaF to Yank A Function with leading or trailing blank lines
" viF to visually select a function without leading or trailing blank lines
Plug 'kana/vim-textobj-function'

Plug 'AndrewRadev/dsf.vim' "{{{
  let g:dsf_no_mappings = 1
  nmap dsf <Plug>DsfDelete
  nmap csf <Plug>DsfChange

  " omap af <Plug>DsfTextObjectA
  " xmap af <Plug>DsfTextObjectA
  " omap if <Plug>DsfTextObjectI
  " xmap if <Plug>DsfTextObjectI
" }}}

" heuristic syntax-based text-object for function
" requires kana/vim-textobj-function 0.1.0 or later
Plug 'haya14busa/vim-textobj-function-syntax'

" A text object to turn foo_bar_baz into foo_baz *and* quuxSpamEggs into quuxEggs *and* shine your shoes
" iv
" av
" requires kana/vim-textobj-user
Plug 'Julian/vim-textobj-variable-segment'

" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
Plug 'kana/vim-textobj-entire'

" ac selects a comment including the comment delimiters
" ic selects just the comment content
" aC selects a comment including trailing or leading whitespace
Plug 'glts/vim-textobj-comment'

" provides additional text objects
" Pair text objects
" Quote text objects
" Separator text objects
" Argument text objects
" https://github.com/wellle/targets.vim/blob/master/cheatsheet.md
Plug 'wellle/targets.vim'

" create your own text objects (dependency)
Plug 'kana/vim-textobj-user'

" vgb     select last pasted text
" dgb     delete last pasted text
" =gb     re-indent last pasted text
Plug 'saaguero/vim-textobj-pastedtext'

" plugin that defines a new text object representing lines of code at the same indent level
" <count>ai	An Indentation level and line above.
" <count>ii	Inner Indentation level (no line above).
" <count>aI	An Indentation level and lines above/below.
" <count>iI	Inner Indentation level (no lines above/below).
Plug 'michaeljsmith/vim-indent-object'

" Function argument-like text object for Vim
" daa
" daA
" dia
" diA
Plug 'b4winckler/vim-angry'

" val - select line (including whitespace)
" vil - select line
" Plug 'kana/vim-textobj-line'

" Vim plugin to provide text objects for numbers
" Plug 'tkhren/vim-textobj-numeral'
