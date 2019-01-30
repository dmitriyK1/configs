" --------------------------------------------------------------------------------
" Command mode mappings
" --------------------------------------------------------------------------------
cnoremap <C-k> <C-\>e KillLine()<CR>
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-g> <Delete>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

" killline (readline shortcut)
cnoremap <c-k> <c-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>

cnoremap jj <C-c>

" cnoremap <C-g>  <C-c>
" Shortcuts

" Change Working Directory to that of the current file
" cmap cwd lcd %:p:h
" cmap cd. lcd %:p:h

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

map <F2> :Vexplore<CR>

" call togglebg#map("<F12>")

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

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <silent> <C-n> :bnext<CR>
nmap <silent> <C-p> :bprev<CR>

" DOESN'T WORK ON OSX
"Bubble single lines
" nmap <C-Up> ddkP
" nmap <C-Down> ddp
"Bubble multiple lines
" vmap <C-Up> xkP`[V`]
" vmap <C-Down> xp`[V`]

" keep screen centered on jumps
nnoremap <c-o> <c-o>zz

" pre-select first menu item on <C-n>
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
\ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" pre-select first menu item on <C-p>
inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
  \ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

" killline (readline shortcut)
inoremap <c-k> <c-o>D

"map = <C-l><C-w>o

" --------------------------------------------------------------------------------
" Alt mappings
" --------------------------------------------------------------------------------
cmap <M-D> <Esc>d

" imap <A-j> <Down>
" imap <A-k> <Up>
" imap <A-h> <Left>
" imap <A-l> <Right>
" imap <A-i> <Home>
" imap <A-a> <End>

" nnoremap <silent> <A-n> :bn<CR>
" nnoremap <silent> <A-p> :bp<CR>
" --------------------------------------------------------------------------------
" Letter mappings
" --------------------------------------------------------------------------------
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

" ------------------A---------------------

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

" ------------------G----------------------
" select last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" highlight last inserted text
nnoremap gV `[v`]
map gi gi<Esc>
" map gn :bn<CR>
" map gp :bp<CR>
" map gc :bd<CR>
" map gd :bd<CR>
nnoremap gj j
nnoremap gk k

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" sort visual selection by line width
vnoremap <silent> gW :call SortLinesByWidth()<CR><CR>

" Keep search matches in the middle of the window.
nnoremap g; g;zz
nnoremap g, g,zz

" -------------------H---------------------
nnoremap H _

" -------------------P---------------------
" visual paste without losing the copied content
xnoremap p "0p

" -------------------N--------------------

" -------------------K--------------------
nnoremap k gk

" -------------------L--------------------
nnoremap L $

" -------------------Q--------------------
" Formatting, TextMate-style
" nnoremap Q gqip
vnoremap Q gq

" always use the command editing window
" nnoremap q/ q/i\v
" nnoremap q? q?i\v
" nnoremap <Space> q:i
" nnoremap <Space> :

" nnoremap / q/i\v
" nnoremap ? q?i\v

" replace ex mode map and use it for repeating last executed macro
" nnoremap Q @@

" nnoremap Q q:<Up>
nnoremap Q :

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

" make regexp search not suck by default
" nnoremap / /\v
" vnoremap / /\v

" nnoremap <tab> %
" vnoremap <tab> %

nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>

nnoremap <silent> <Left> :bp<CR>
nnoremap <silent> <Right> :bn<CR>

" nmap <Left> <<
" nmap <Right> >>
" vnoremap <Left> <gv
" vnoremap <Right> >gv
" nmap <Up> [e
" nmap <Down> ]e
" vmap <Up> [egv
" vmap <Down> ]egv

map ]d jddk
map [d kdd

" prevents adding new line when choosing item from autocomplete dropdown
inoremap <expr> <CR> pumvisible()
      \ ? "\<C-y>"
      \ : "\<C-g>u\<CR>"

" https://github.com/BobWhitelock/dotfiles/blob/master/vimrc
" Tab/shift-tab to indent/unindent in visual mode.
" xnoremap <Tab> >gv
" xnoremap <S-Tab> <gv

" Join current line with line above; also do not move cursor as with J above.
" nnoremap K mzkJ`z

" Quick appending of commonly appended chars.
nnoremap <leader>g. mzA.<esc>`z
nnoremap <leader>g; mzA;<esc>`z
nnoremap <leader>g, mzA,<esc>`z
" Repeatable nnoremap <leader>g. mzA.<esc>`z
" Repeatable nnoremap <leader>g; mzA;<esc>`z
" Repeatable nnoremap <leader>g, mzA,<esc>`z

" Remove last char on line.
nnoremap g<Backspace> mzA<Backspace><Esc>`z

" Split line in different places.
" Repeatable nnoremap gs( f(a<CR><Esc>
" Repeatable nnoremap gs) f)i<CR><Esc>
" Repeatable nnoremap gs{ f{a<CR><Esc>
" Repeatable nnoremap gs} f}i<CR><Esc>
" Repeatable nnoremap gs[ f[a<CR><Esc>
" Repeatable nnoremap gs] f]i<CR><Esc>
" Repeatable nnoremap gs, f,a<CR><Esc>
" Repeatable nnoremap gs. f.i<CR><Esc>
" Repeatable nnoremap gss i<CR><Esc>
" Repeatable nnoremap gs<space> hf<space>xi<CR><Esc>
