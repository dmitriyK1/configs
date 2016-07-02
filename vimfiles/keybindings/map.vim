
" --------------------------------------------------------------------------------
" F mappings
" --------------------------------------------------------------------------------

" --------------------------------------------------------------------------------
" Ctrl mappings
" --------------------------------------------------------------------------------

" --------------------------------------------------------------------------------
" Alt mappings
" --------------------------------------------------------------------------------


"map - :Vex<CR>
"map = <C-l><C-w>o


" make regexp search not suck by default
" nnoremap / /\v
" vnoremap / /\v
" copy
vnoremap <C-c> "*y

map gi gi<Esc>

nnoremap <F10> :b <C-Z>
map ! q:i!

map = <Plug>(easymotion-prefix)

nnoremap <F5> :buffers<CR>:buffer<Space>
map gn :bn<CR>
map gp :bp<CR>
" map gc :bd<CR>
" map gd :bd<CR>


nmap vv ggVG

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>
" nnoremap <space> za

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap L $


inoremap jj <ESC>

" add semicolon at the end of the line in insert mode
" map <C-s> A;<Esc>
" imap <C-s> <end>;<Esc>


" highlight last inserted text
nnoremap gV `[v`]


cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
cnoremap <C-b>  <Left>
cnoremap <C-p>  <Up>
cnoremap <C-n>  <Down>
cnoremap <C-f>  <Right>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <C-g>  <Delete>
" cnoremap <C-g>  <C-c>



cnoremap <C-K> <C-\>e<SID>KillLine()<CR>



cnoremap <Esc>d <C-\>e<SID>KillWord()<CR>
cmap <M-D> <Esc>d


" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" TODO: fix; doesn't work now
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


" Toggle spell check
map <F6> :setlocal spell! spelllang=en_us<CR>


" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" repeat last colon command
" nmap :: @:
nmap \\ @:

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null


" Easier horizontal scrolling
map zl zL
map zh zH

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>




nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap <M-,> :bp<cr>
nmap <M-.> :bn<cr>



"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Prevent cursor jumps while joining lines
nnoremap J mzJ`z

" center the window automatically around the cursor after jumping to a location
" nnoremap n nzz
nnoremap } }zz
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz


" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq


"nnoremap / /\v
"vnoremap / /\v



" Fix linewise visual selection of various text objects
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV



" Numbers {{{

" Motion for numbers.  Great for CSS.  Lets you do things like this:
"
" margin-top: 200px; -> daN -> margin-top: px;
"              ^                          ^
" TODO: Handle floats.

onoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
xnoremap N :<c-u>call <SID>NumberTextObject(0)<cr>
onoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap aN :<c-u>call <SID>NumberTextObject(1)<cr>
onoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>
xnoremap iN :<c-u>call <SID>NumberTextObject(1)<cr>



" ,# Surround a word with #{ruby interpolation}
map ,# ysiw#
vmap ,# c#{<C-R>"}<ESC>

" ," Surround a word with "quotes"
map ," ysiw"
vmap ," c"<C-R>""<ESC>

" ,' Surround a word with 'single quotes'
map ,' ysiw'
vmap ,' c'<C-R>"'<ESC>

" ,) or ,( Surround a word with (parens)
" The difference is in whether a space is put in
map ,( ysiw(
map ,) ysiw)
vmap ,( c( <C-R>" )<ESC>
vmap ,) c(<C-R>")<ESC>

" ,[ Surround a word with [brackets]
map ,] ysiw]
map ,[ ysiw[
vmap ,[ c[ <C-R>" ]<ESC>
vmap ,] c[<C-R>"]<ESC>

" ,{ Surround a word with {braces}
map ,} ysiw}
map ,{ ysiw{
vmap ,} c{ <C-R>" }<ESC>
vmap ,{ c{<C-R>"}<ESC>



" Delete empty lines
nmap ,del :g/^$/d<cr>


" TODO: fix visual selection not showing up instantly

" This mapping will change the behavior of the <Enter> key when the popup menu is visible. In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does.
" inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '\<C-g>u\<CR>'

" TODO: make it work
" inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '<Plug>delimitMateCR'

"  What this accomplishes is it keeps a menu item always highlighted. This way you can keep typing characters to narrow the matches
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
\ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" repeat last search and replace operation with confirmation
" TODO: currently replaces only first occurence on each line
noremap & :%sgc<cr>

" always use the command editing window
" nnoremap / q/i\v
" nnoremap ? q?i\v
nnoremap q/ q/i\v
nnoremap q? q?i\v
nnoremap <Space> q:i


noremap <F3> :Autoformat<CR>
" Or to have your code be formatted upon saving your file, you could use something like this:
" au BufWrite * :Autoformat


" REMAP NEEDED
" nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)


" REMAP NEEDED
" add a comma
" nmap <C-k> A, <Esc>

nmap <silent> dJ dG
nmap <silent> dK dgg


nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
" omap f <Plug>Sneak_s
" omap F <Plug>Sneak_S

nmap <F8> :TagbarToggle<CR>


nnoremap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>


" replace ex mode map and use it for repeating last executed macro
nnoremap Q @@


" nnoremap <silent> <C-c> :call multiple_cursors#quit()<CR>

" visual paste without losing the copied content
xnoremap p "0p

" nnoremap <tab> %
" vnoremap <tab> %

" Map the conceal characters to their expanded forms.
" inoremap <silent> @ <C-r>=syntax_expand#expand("@", "this")<CR>
" inoremap <silent> # <C-r>=syntax_expand#expand("#", ".prototype.")<CR>
" inoremap <silent> < <C-r>=syntax_expand#expand_head("<", "return")<CR>

