nnoremap <silent> <leader>b :CtrlPBuffer<cr>
nnoremap <silent> <leader>l :CtrlPLine<cr>
nnoremap <silent> <leader>r :CtrlPMRUFiles<cr>
nnoremap <leader>x :Vex<cr>

" using colon as a separator to easier read regular expressions;
" using \v key to make vim regular expressions work as common regexps
map <leader>% :%s:\v::g<Left><Left><Left>

" find and replace with confirmation
map <leader>; :%s:\v::cg<Left><Left><Left><Left>

" clear hlsearch
nmap <leader><space> :nohlsearch<cr>

" toggle hlsearch
nnoremap <leader>/ :set invhlsearch<cr>

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

noremap <leader>, :update<CR>

" Close all the buffers
" map <leader>ba :bufdo bd<cr>

" map <silent> <leader>d :Bclose<cr>
" map <leader>bd :Bclose<cr>:tabclose<cr>gT

map <silent> <leader>d :bd<CR>
map <silent> <leader>c :enew<CR>:bwipeout #<CR>

nnoremap <leader>v V`]

" noremap <leader>r :set relativenumber!<CR>
nnoremap <leader>n :setlocal number!<CR>
nmap <silent> <leader>se :e $MYVIMRC<CR>
noremap <leader>ss :source $MYVIMRC<CR>
"
" Source current file
noremap <leader>so :so%<CR>
" nnoremap <leader>m :mksession<CR>
nnoremap <leader>P :set paste!<CR>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" Split previously opened file in a split window
nnoremap <leader>- :new<cr><C-w>j
nnoremap <leader>\ :vnew<cr><C-w>l

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" Quote current selection
vnoremap <leader>" <esc>a"<esc>gvo<esc>i"<esc>gvo<esc>ll
vnoremap <leader>' <esc>a'<esc>gvo<esc>i'<esc>gvo<esc>ll

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

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

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Some helpers to edit mode
" http://vimcasts.org/e/14
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" Get to home dir easier
nmap <leader>h :cd ~/ <CR>


" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>


" Easier formatting
" nnoremap <silent> <leader>q gwip

" System clipboard interaction.
" noremap <leader>y "*y
" vnoremap <leader>y "*ygv

nnor ,yp :let @*=expand("%:p")<CR>    " Mnemonic: Yank File path
nnor ,yn :let @*=expand("%")<CR>      " Mnemonic: yank File Name

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z


" Cmdheight switching
nnoremap <leader>1 :set cmdheight=1<cr>
nnoremap <leader>2 :set cmdheight=2<cr>

" Toggle 'keep current line in the center of the screen' mode
nnoremap <leader>C :let &scrolloff=999-&scrolloff+3<cr>

" map <leader>c :set cursorline!<cr>

"Go to last edit location with ,.
nnoremap <leader>. `.

nmap <leader>w :setlocal wrap!<CR>:setlocal wrap?<CR>

" nnoremap <silent> <leader>: q:i
nnoremap <silent> <leader>: q:

map <silent> <leader>t :call ConcealToggle()<CR>

map <leader>m :call MakeSession()<CR>

 " fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" --------------------------------------------------------------------------------
" Tabular
" from https://github.com/AntJanus/my-dotfiles/blob/master/.vimrc
" --------------------------------------------------------------------------------
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>

nnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>a: :Tabularize /:<CR>

nnoremap <leader>a- :Tabularize /-<CR>
vnoremap <leader>a- :Tabularize /-<CR>

nnoremap <leader>a> :Tabularize /><CR>
vnoremap <leader>a> :Tabularize /><CR>

nnoremap <leader>a[ :Tabularize /[<CR>
vnoremap <leader>a[ :Tabularize /[<CR>

nnoremap <leader>a{ :Tabularize /{<CR>
vnoremap <leader>a{ :Tabularize /{<CR>

nnoremap <leader>a( :Tabularize /(<CR>
vnoremap <leader>a( :Tabularize /(<CR>

nnoremap <leader>a" :Tabularize /"<CR>
vnoremap <leader>a" :Tabularize /"<CR>

nnoremap <leader>a' :Tabularize /'<CR>
vnoremap <leader>a' :Tabularize /'<CR>

nnoremap <leader>af :Tabularize /from<CR>
vnoremap <leader>af :Tabularize /from<CR>
" --------------------------------------------------------------------------------

map <silent> <leader>G :GundoToggle<CR>
" map <leader>t :browse oldfiles!<CR>

nnoremap <silent> <leader>3 :call ToggleHiddenAll()<CR>

nnoremap <silent> <leader>L :set list!<cr>

" delete duplicated lines
nnoremap <silent> <leader>u :sort u<cr>
vnoremap <silent> <leader>u :sort u<cr>


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



" Delete empty lines
" nmap <leader>del :g/^$/d<cr>
nmap <leader>el :g/^$/d<cr>

nmap <leader>fl :FlowToggle<cr>

" compare open splits
nmap <leader>D :windo diffthis<CR>
