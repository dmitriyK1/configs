" <C-W>gr - resize split to visual selection (similar to :VSResize)
" <C-W>gss - split out visual selection (similar to :VSSplit)
" <C-W>gsa - split out visual selection above (similar to :VSSplitAbove)
" <C-W>gsb - split out visual selection below (similar to :VSSplitBelow)
" vip<C-W>gss
" <C-W>gssip
Plug 'wellle/visual-split.vim' "{{{
" Resize to/split out visual selection.
  xnoremap <silent> gV :VSResize<CR>
  xnoremap <silent> gA :VSSplitAbove<CR>
  xnoremap <silent> gB :VSSplitBelow<CR>
"}}}

" Plug 'RRethy/vim-tranquille'
" Plug 'svermeulen/vim-easyclip'
" Plug 'svermeulen/vim-cutlass'

" Plug 'svermeulen/vim-yoink' "{{{
"   nmap <c-n> <plug>(YoinkPostPasteSwapBack)
"   nmap <c-p> <plug>(YoinkPostPasteSwapForward)
"
"   nmap p <plug>(YoinkPaste_p)
"   nmap P <plug>(YoinkPaste_P)
"   let g:yoinkIncludeDeleteOperations = 1
" "}}}

" Plug 'svermeulen/vim-subversive'

" Plug 'https://github.com/chaoren/vim-wordmotion'
" let g:wordmotion_mappings = {
" \ 'w' : '<M-w>',
" \ 'b' : '<M-b>',
" \ 'e' : '<M-e>',
" \ 'ge' : 'g<M-e>',
" \ 'aw' : 'a<M-w>',
" \ 'iw' : 'i<M-w>',
" \ '<C-R><C-W>' : '<C-R><M-w>'
" \ }

" Vim plugin: Define your own operator easily
" For custom operators, needed for all vim-operator plugins.
Plug 'kana/vim-operator-user'

" Vim operator to search using Ag/Ack/CtrlSF/Ggrep/etc.
Plug 'rgrinberg/vim-operator-gsearch'
map g/ <Plug>(operator-ctrlsf)

" Vim plugin: Operator to replace text with register content
Plug 'kana/vim-operator-replace'
map gr <Plug>(operator-replace)

" BUGGY
" Plug 'rhysd/vim-textobj-anyblock'

" Fast within-file word replacement for Vim
Plug 'wincent/scalpel'
let g:ScalpelMap=0
vmap <leader>sc <Plug>(ScalpelVisual)
nmap <leader>sc <Plug>(Scalpel)

" Interactive, regex-based folding
" :Show \v(public|private|protected)
" :ShowAll
Plug 'ctechols/vim-HideShow'
