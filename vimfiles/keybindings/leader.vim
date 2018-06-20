" B ================================================================================

" C ================================================================================
" Toggle 'keep current line in the center of the screen' mode
nnoremap <leader>C :let &scrolloff=999-&scrolloff+3<cr>

" D ================================================================================
" delete empty lines
" nmap <leader>del :g/^$/d<cr>
" compare open splits
nmap <silent> <leader>D :windo diffthis<CR>

" E ================================================================================
" Some helpers to edit mode
" http://vimcasts.org/e/14
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" delete empty lines
nmap <leader>el :g/^$/d<cr>

" F ================================================================================
" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" H ================================================================================
" Get to home dir easier
nmap <leader>h :cd ~/ <CR>

" L ================================================================================
" Toggle scrollbar
nnoremap <leader>O :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" M ================================================================================
" nnoremap <leader>m :mksession<CR>

" P ================================================================================
nnoremap <leader>P :set paste!<CR>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" Q ================================================================================
" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Easier formatting
" nnoremap <silent> <leader>q gwip

" R ================================================================================
" Save and source config
nnoremap <silent> <leader>R :w<CR> :source $MYVIMRC<CR>
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" S ================================================================================
" nmap <silent> <leader>se :tabedit $MYVIMRC<CR>
nmap <silent> <leader>se :e $MYVIMRC<CR>
noremap <leader>ss :source $MYVIMRC<CR>
"
" Source current file
noremap <leader>so :so%<CR>

" Substitution
" using colon as a separator to easier read regular expressions;
" using \v key to make vim regular expressions work as common regexps
map <leader>S :%s:\v::g<Left><Left><Left>

" open packages config
nnoremap <silent> <leader>sp :e ~/vimfiles/packages.vim<CR>
" T ================================================================================
map <silent> <leader>tc :tabclose<CR>

map <silent> <leader>T :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" U ================================================================================
" delete duplicated lines
nnoremap <silent> <leader>u :sort u<cr>
vnoremap <silent> <leader>u :sort u<cr>

" invert sort
nnoremap <silent> <leader>U :sort! u<cr>
vnoremap <silent> <leader>U :sort! u<cr>

" V ================================================================================
" select last pasted text
nnoremap <leader>v V`]

" W ================================================================================
" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

nmap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

" X ================================================================================
nnoremap <leader>x :Vex<cr>

" Y ================================================================================
" System clipboard interaction.
" noremap <leader>y "*y
" vnoremap <leader>y "*ygv

" Plug 'vim-scripts/copypath.vim' - alternative
nnor <leader>yp :let @*=expand("%:p")<CR>    " Mnemonic: Yank File path
nnor <leader>yn :let @*=expand("%")<CR>      " Mnemonic: yank File Name

" SPECIAL CHARACTERS ===============================================================
" find and replace with confirmation
map <leader>; :%s:\v::cg<Left><Left><Left><Left>

" clear hlsearch
nmap <leader><space> :nohlsearch<cr>

" toggle hlsearch
nnoremap <leader>/ :set invhlsearch<cr>

noremap <leader>, :write<CR>

" Split previously opened file in a split window
nnoremap <leader>- :new<cr><C-w>j
nnoremap <leader>\ :vnew<cr><C-w>l

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Cmdheight switching
nnoremap <leader>1 :set cmdheight=1<cr>
nnoremap <leader>2 :set cmdheight=2<cr>

nnoremap <silent> <leader>3 :call ToggleHiddenAll()<CR>

"Go to last edit location with ,.
nnoremap <leader>. `.

" nnoremap <silent> <leader>: q:i
" nnoremap <silent> <leader>: q:

" Surround mappings {{{
  " ,# Surround a word with #{ruby interpolation}
  map <leader># ysiw#
  vmap <leader># c#{<C-R>"}<ESC>

  " ," Surround a word with "quotes"
  map <leader>" ysiw"
  vmap <leader>" c"<C-R>""<ESC>

  " ,' Surround a word with 'single quotes'
  map <leader>' ysiw'
  vmap <leader>' c'<C-R>"'<ESC>

  " ,) or ,( Surround a word with (parens)
  " The difference is in whether a space is put in
  map <leader>( ysiw(
  map <leader>) ysiw)
  vmap <leader>( c( <C-R>" )<ESC>
  vmap <leader>) c(<C-R>")<ESC>

  " ,[ Surround a word with [brackets]
  map <leader>] ysiw]
  map <leader>[ ysiw[
  vmap <leader>[ c[ <C-R>" ]<ESC>
  vmap <leader>] c[<C-R>"]<ESC>

  " ,{ Surround a word with {braces}
  map <leader>} ysiw}
  map <leader>{ ysiw{
  vmap <leader>} c{ <C-R>" }<ESC>
  vmap <leader>{ c{<C-R>"}<ESC>

  " Quote words under cursor
  nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
  nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

  " Quote current selection
  vnoremap <leader>" <esc>a"<esc>gvo<esc>i"<esc>gvo<esc>ll
  vnoremap <leader>' <esc>a'<esc>gvo<esc>i'<esc>gvo<esc>ll
" }}}
