if &compatible
  set nocompatible
endif
 
map <Space> :
map <leader><leader> :w<CR>
colorscheme dracula

" ================ Plugins ==================== {{{
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('morhetz/gruvbox')
  call packager#add('junegunn/fzf', { 'do': './install --all && ln -s $(pwd) ~/.fzf'})
  call packager#add('junegunn/fzf.vim')
  call packager#add('Shougo/deoplete.nvim')
  call packager#add('autozimu/LanguageClient-neovim', { 'do': 'bash install.sh' })
endfunction

command! PackagerInstall call PackagerInit() | call packager#install()
command! PackagerUpdate call PackagerInit() | call packager#update()
command! PackagerClean call PackagerInit() | call packager#clean()
command! PackagerStatus call PackagerInit() | call packager#status()

" ================ General Config ==================== {{{
set termguicolors
set title                                                                       "change the terminal's title
set history=500                                                                 "Store lots of :cmdline history
set termguicolors
set noshowmode                                                                  "Hide showmode
set gdefault                                                                    "Set global flag for search and replace
set cursorline                                                                  "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=a                                                                     "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
