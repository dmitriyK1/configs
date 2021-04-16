" Only highlight the screen line of the cursor in the currently active window.
" Plug 'vim-scripts/CursorLineCurrentWindow'

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
Plug 'wincent/terminus' "{{{
  let g:TerminusNormalCursorShape=2  " underline
  let g:TerminusInsertCursorShape=1  " vertical bar
  let g:TerminusReplaceCursorShape=0 " block
"}}}

" Have Vim automatically reload a file that has changed externally
" Plug 'djoshea/vim-autoread'

" Vim sugar for the UNIX shell commands
  " Remove: Delete a buffer and the file on disk simultaneously.
  " Unlink: Like :Remove, but keeps the now empty buffer.
  " Move: Rename a buffer and the file on disk simultaneously.
  " Rename: Like :Move, but relative to the current file's containing directory.
  " Chmod: Change the permissions of the current file.
  " Mkdir: Create a directory, defaulting to the parent of the current file.
  " Find: Run find and load the results into the quickfix list.
  " Locate: Run locate and load the results into the quickfix list.
  " Wall: Write every open window. Handy for kicking off tools like guard.
  " SudoWrite: Write a privileged file with sudo.
  " SudoEdit: Edit a privileged file with sudo.
Plug 'tpope/vim-eunuch' "{{{
   nnoremap <leader>R :Rename <C-R>=expand('%:t')<CR>
"}}}

" Make Vim persist editing state without fuss
Plug 'zhimsel/vim-stay' "{{{
  set viewoptions=cursor,folds,slash,unix
"}}}

" An eye friendly plugin that fades your inactive buffers and preserves your syntax highlighting!
Plug 'TaDaa/vimade'

" Highlight npm-debug.log and .npmrc for human readability
Plug 'rhysd/npm-filetypes.vim'

" Another elegant statusline for vim
Plug 'liuchengxu/eleline.vim'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace' "{{{
  let g:strip_whitespace_on_save = 1
  let g:strip_whitespace_confirm = 0

  nnoremap ]w :NextTrailingWhitespace<CR>
  nnoremap [w :PrevTrailingWhitespace<CR>
"}}}

" Toggles between hybrid and absolute line numbers automatically
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" A Vim Window Animation Library (lens.vim optional dependency)
Plug 'camspiers/animate.vim'

" A Vim Automatic Window Resizing Plugin
Plug 'camspiers/lens.vim'

" Land on window you chose like tmux's 'display-pane'
Plug 't9md/vim-choosewin' "{{{
  let g:choosewin_overlay_enable = 1
  nmap  <C-w>-  <Plug>(choosewin)
"}}}

" Change an HTML(ish) opening tag and take the closing one along as well
Plug 'AndrewRadev/tagalong.vim'

" very simple vim plugin for easy resizing of your vim windows
Plug 'simeji/winresizer'

" Intelligently reopen files at your last edit position in Vim
" Plug 'farmergreg/vim-lastplace'
