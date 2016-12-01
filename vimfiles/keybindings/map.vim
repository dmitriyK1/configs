" --------------------------------------------------------------------------------
" Command mode mappings
" --------------------------------------------------------------------------------
cnoremap <C-K> <C-\>e KillLine()<CR>
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-g> <Delete>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

cnoremap jj <C-c>

cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
" cnoremap <C-g>  <C-c>
cnoremap <Esc>d <C-\>e KillWord()<CR>
" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h
" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null
" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" --------------------------------------------------------------------------------
" Functional keys mappings
" --------------------------------------------------------------------------------

nnoremap <F5> :buffers<cr>:buffer<Space><C-Z>

call togglebg#map("<F12>")

" --------------------------------------------------------------------------------
" Ctrl mappings
" --------------------------------------------------------------------------------

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" vnoremap <C-c> "*y

" copy without new line character
vnoremap <C-c> <Esc>'<0v'>g_y

vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>

" add semicolon at the end of the line in insert mode
" map <C-s> A;<Esc>
" imap <C-s> <end>;<Esc>

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" keep screen centered on jumps
nnoremap <c-o> <c-o>zz

" pre-select first menu item on <C-n>
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" pre-select first menu item on <C-p>
inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
  \ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

" REMAP NEEDED
" add a comma
" nmap <C-k> A, <Esc>

"map = <C-l><C-w>o

" --------------------------------------------------------------------------------
" Alt mappings
" --------------------------------------------------------------------------------
cmap <M-D> <Esc>d
" nmap <M-,> :bp<cr>
" nmap <M-.> :bn<cr>

imap <A-j> <Down>
imap <A-k> <Up>
imap <A-h> <Left>
imap <A-l> <Right>
imap <A-i> <Home>
imap <A-a> <End>

" --------------------------------------------------------------------------------
" Letter mappings
" --------------------------------------------------------------------------------

" ------------------A---------------------
onoremap aN :<c-u>call NumberTextObject(1)<cr>
xnoremap aN :<c-u>call NumberTextObject(1)<cr>

" ------------------D---------------------
nmap <silent> dJ dG
nmap <silent> dK dgg

" ------------------F----------------------

" ------------------J----------------------
nnoremap j gj
inoremap jj <ESC>

" Prevent cursor jumps while joining lines
nnoremap J mzJ`z

" ------------------I----------------------
onoremap iN :<c-u>call NumberTextObject(1)<cr>
xnoremap iN :<c-u>call NumberTextObject(1)<cr>

" ------------------G----------------------
" highlight last inserted text
nnoremap gV `[v`]
map gi gi<Esc>
map gn :bn<CR>
map gp :bp<CR>
" map gc :bd<CR>
" map gd :bd<CR>
nnoremap gj j
nnoremap gk k

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Keep search matches in the middle of the window.
nnoremap g; g;zz
nnoremap g, g,zz

" -------------------H---------------------
nnoremap H _

" -------------------P---------------------
" visual paste without losing the copied content
xnoremap p "0p

" -------------------N--------------------
" Motion for numbers. Great for CSS.
" margin-top: 200px; -> daN -> margin-top: px;
onoremap N  :<c-u>call NumberTextObject(0)<cr>
xnoremap N  :<c-u>call NumberTextObject(0)<cr>
" -------------------K--------------------
nnoremap k gk

" -------------------L--------------------
nnoremap L $

" -------------------Q--------------------
" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

" always use the command editing window
" nnoremap q/ q/i\v
" nnoremap q? q?i\v
" nnoremap <Space> q:i
nnoremap <Space> :

" nnoremap / q/i\v
" nnoremap ? q?i\v

" replace ex mode map and use it for repeating last executed macro
" nnoremap Q @@

nnoremap Q q:

" -------------------Y---------------------
" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" -------------------V--------------------

" Fix linewise visual selection of various text objects
" nnoremap Vit vitVkoj
" nnoremap Vat vatV
" nnoremap Vab vabV
" nnoremap VaB vaBV

" -------------------Z--------------------
" Easier horizontal scrolling
map zl zL
map zh zH

" --------------------------------------------------------------------------------
" Special characters mappings
" --------------------------------------------------------------------------------
" TODO: fix; doesn't work now
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" repeat last search and replace operation with confirmation
" TODO: currently replaces only first occurence on each line
noremap & :%sgc<cr>

" center the window automatically around the cursor after jumping to a location
" nnoremap n nzz
nnoremap } }zz

" repeat last colon command
nmap \\ @:

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

map ! q:i!

" apply macro to all selected lines where matches are found
" from https://github.com/stoeffel/.dotfiles/blob/master/vim/visual-at.vim
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" TODO: possibly move to functions.vim
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" nnoremap <space> za

" make regexp search not suck by default
" nnoremap / /\v
" vnoremap / /\v

"map - :Vex<CR>

" nnoremap <tab> %
" vnoremap <tab> %

" nmap <Left> <<
" nmap <Right> >>
" vnoremap <Left> <gv
" vnoremap <Right> >gv
" nmap <Up> [e
" nmap <Down> ]e
" vmap <Up> [egv
" vmap <Down> ]egv
