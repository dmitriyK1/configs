" highlight clear SignColumn      " SignColumn should match background
" highlight clear LineNr          " Current line number row will have same background color in relative mode

highlight Cursor guifg=white guibg=green
highlight BadWhitespace ctermbg=red guibg=darkred

" highlight Conceal guibg=black guifg=red
highlight Conceal guibg=NONE guifg=red

" highlight trailing space
match ErrorMsg '\s\+$'
