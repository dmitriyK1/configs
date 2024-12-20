" autocompletion
Plug 'ervandew/supertab' " {{{
  set completeopt+=longest

  let g:SuperTabDefaultCompletionType = '<C-n>'
  let g:SuperTabLongestHighlight = 1
  let g:SuperTabLongestEnhanced = 1
" }}}

" Auto close (X)HTML tags
Plug 'alvan/vim-closetag' "{{{
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.ts,*.tsx,*.html.erb,*.md'
"}}}

" auto-closer - insert or delete brackets, parens, quotes in pair
" Shortcuts:
"   <CR>  : Insert new indented line after return if cursor in blank brackets or quotes.
"   <BS>  : Delete brackets in pair
"   <M-p> : Toggle Autopairs (g:AutoPairsShortcutToggle)
"   <M-e> : Fast Wrap (g:AutoPairsShortcutFastWrap)
"   <M-n> : Jump to next closed pair (g:AutoPairsShortcutJump)
"   <M-b> : BackInsert (g:AutoPairsShortcutBackInsert)
Plug 'jiangmiao/auto-pairs' " {{{
  let g:AutoPairsMultilineClose = 0
  let g:AutoPairsShortcutToggle = ''
  let g:AutoPairsShortcutJump = ''
" }}}

" snippets support
" Plug 'SirVer/ultisnips' " {{{
  " let g:UltiSnipsSnippetsDir = "~/vimfiles/UltiSnips"
  " let g:UltiSnipsExpandTrigger = "<tab>"
  " let g:UltiSnipsJumpForwardTrigger = "<tab>"
  " let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

  " new snippet template
  " let@s="o40i-I# osnippeto\endsnippetkkA  "

  " map <leader>ee :UltiSnipsEdit<CR>
" }}}

" Plug 'honza/vim-snippets'

" ================================================================================
" Dark deno-powered completion framework for neovim/Vim8
" Plug 'Shougo/ddc.vim'
" Plug 'vim-denops/denops.vim'

" Dark powered asynchronous completion framework for neovim/Vim8
" `pip3 install pynvim`
" Plug 'Shougo/deoplete.nvim' "{{{
"   let g:deoplete#enable_at_startup = 1
"}}}

" deoplete.nvim source for javascript
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" deoplete.nvim source for Python
" Plug 'zchee/deoplete-jedi'

" deoplete dependency
" Plug 'roxma/nvim-yarp'

" deoplete dependency
" Plug 'roxma/vim-hug-neovim-rpc'

" Plug "lighttiger2505/deoplete-vim-lsp"

 " You will also need the following for function argument completion:
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" ================================================================================

" Plug 'maralla/completor.vim'
" let g:completor_node_binary = '/usr/local/bin/node'

" Plug 'prabirshrestha/asyncomplete.vim'
" let g:asyncomplete_remove_duplicates = 1
" let g:asyncomplete_smart_completion = 1
" let g:asyncomplete_auto_popup = 1
