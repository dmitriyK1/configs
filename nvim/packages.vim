if &compatible
  set nocompatible
endif

function! LightLineFilename()
  return expand('%:p')
endfunction

" TODO: lazy-load what possible

" ================ Plugins ==================== {{{
" install vim-plug automatically if missing
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" location for plugins to be installed
call plug#begin('~/.local/share/nvim/plugged')

" Utilites around neovim's `:terminal`
" :Term Opens a new terminal buffer using :new (splits horizontally)
" :VTerm Opens a new terminal buffer using :vnew (splits vertically)
" :TTerm Opens a new terminal buffer using :tabnew (new tab)
Plug 'vimlab/split-term.vim' "{{{
  let g:split_term_default_shell = "fish"
  let g:split_term_vertical = 1 " force the :Term command to always use a vertical buffer (using :vnew)
"}}}

Plug 'ryanoasis/vim-devicons'
Plug 'rhysd/clever-f.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'junegunn/vim-after-object'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'morhetz/gruvbox'
Plug 'flrnprz/candid.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug '/usr/local/opt/fzf'

" :Helptags - fuzzy search through help
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
Plug 'machakann/vim-highlightedyank'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-unimpaired'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'imkmf/ctrlp-branches' "{{{
  nmap <silent> <leader>gb :CtrlPBranches<CR>
"}}}
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
" Plug 'rstacruz/vim-closer'
Plug 'jiangmiao/auto-pairs'
Plug 'romainl/vim-cool'
Plug 'RRethy/vim-illuminate' "{{{
 " Don't highlight word under cursor (default: 1)
" let g:Illuminate_highlightUnderCursor = 0
"}}}
Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'
Plug 'ntpeters/vim-better-whitespace' "{{{
  let g:strip_whitespace_on_save = 1
"}}}
" MixedCase (crm), camelCase (crc), snake_case (crs), and UPPER_CASE (cru)
Plug 'tpope/vim-abolish'
Plug 'rhysd/conflict-marker.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'valloric/MatchTagAlways'
Plug 'djoshea/vim-autoread'
Plug 'alvan/vim-closetag' "{{{
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.ts,*.tsx,*.html.erb,*.md'
"}}}
Plug 'junegunn/vim-peekaboo' "{{{
  let g:peekaboo_ins_prefix = '<c-x>'
" }}}
Plug 'tpope/vim-fugitive'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim' "{{{
  let g:lightline = {
        \ 'colorscheme': 'gruvbox',
        \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
        \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'filename': 'LightLineFilename',
        \   'gitbranch': 'fugitive#head'
        \ },
        \ }
" }}}
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'Lokaltog/neoranger' "{{{
  " Open ranger at current file with "-"
  " nnoremap <silent> - :RangerCurrentFile<CR>

  " Open ranger in current working directory
  " nnoremap <silent> <leader>- :Ranger<CR>
"}}}
Plug 'justinmk/vim-dirvish'
Plug 'andymass/vim-matchup'
Plug 'vasconcelloslf/vim-interestingwords' "{{{
  let g:interestingWordsDefaultMappings = 0
"}}}
Plug 'moll/vim-bbye'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' } "{{{
  let g:sayonara_confirm_quit = 1
" }}}
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' } "{{{
  let g:switch_mapping = ""
  nnoremap <silent> g- :Switch<CR>
"}}}

Plug 'vim-scripts/CursorLineCurrentWindow'

" An eye friendly plugin that fades your inactive buffers and preserves your syntax highlighting!
Plug 'TaDaa/vimade'

" Smooth scrolling for Vim done right
Plug 'psliwka/vim-smoothie'

call plug#end()
