" Automatically create any non-existent directories before writing the buffer.
Plug 'pbrisbin/vim-mkdir'

" autodetect tabs/spaces of buffer
Plug 'tpope/vim-sleuth'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Edit large files quickly: its just an autocmd that disables certain features of vim in the interests of speed
Plug 'vim-scripts/LargeFile'

"  Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree,
"  vim-airline, unite, vim-startify and many more
Plug 'ryanoasis/vim-devicons' "{{{
  " enable open and close folder/directory glyph flags (disabled by default with 0)
  let g:DevIconsEnableFoldersOpenClose = 1
  " enable folder/directory glyph flag (disabled by default with 0)
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  " whether or not to show the nerdtree brackets around flags
  " let g:webdevicons_conceal_nerdtree_brackets = 1
  " the amount of space to use after the glyph character (default ' ')
  " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
  " Force extra padding in NERDTree so that the filetype icons line up vertically
  " let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

  let g:webdevicons_enable_nerdtree = 0

  if exists('g:loaded_webdevicons')
      call webdevicons#refresh()
  endif
" }}}

" Enhanced terminal integration for Vim
Plug 'wincent/terminus'

" Have Vim automatically reload a file that has changed externally
" Plug 'djoshea/vim-autoread'
