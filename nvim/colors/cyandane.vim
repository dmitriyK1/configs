    " vim:set ts=8 sts=2 sw=2 tw=0:
" Name: cyandane.vim
" Maintainer:	Godan.TAZ
" Inspired_by:	Kojo Sugita and his chlordane.vim colorsheme.
" Last Change:  2008-11-22
" Revision: 1.2

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'cyandane'

hi Cursor	guifg=#3a5555 guibg=#77dddd
hi lCursor	guifg=#3a5555 guibg=#77dddd
hi CursorLine	guibg=#000000 gui=underline
hi CursorIM	guifg=#3a5555 guibg=#77dddd
hi Directory	guifg=#77dddd guibg=#000000 gui=bold
hi DiffAdd	guifg=#77dddd guibg=#3a5555 gui=none
hi DiffChange	guifg=#77dddd guibg=#3a5555 gui=none
hi DiffDelete	guifg=#223333 guibg=#223333 gui=none
hi DiffText	guifg=#77dddd guibg=#448888 gui=bold
hi ErrorMsg	guifg=#ee1111 guibg=#000000
hi VertSplit	guifg=#223333 guibg=#223333
hi Folded	guifg=#55afaf guibg=#000000
hi FoldColumn	guifg=#557755 guibg=#102020
hi IncSearch	guifg=#3a5555 guibg=#77dddd gui=none
hi LineNr	guifg=#446666 guibg=#000000 gui=none
hi ModeMsg	guifg=#55afaf guibg=#000000
hi MoreMsg	guifg=#55afaf guibg=#000000
hi Normal	guifg=#55afaf guibg=#000000
hi Question	guifg=#55afaf guibg=#000000
hi Search	guifg=#223333 guibg=#55afaf gui=none
hi NonText	guifg=#606060 gui=none
hi SpecialKey	guifg=#707070
"\n, \0, %d, %s, etc...
hi Special	guifg=#55afaf guibg=#223333 gui=bold
" status line
hi StatusLine	guifg=#88eeee guibg=#447f7f gui=bold
hi StatusLineNC term=bold cterm=bold,underline ctermfg=green ctermbg=Black
hi StatusLineNC term=bold gui=bold,underline guifg=#3a5555  guibg=Black
hi Title	guifg=#77dddd guibg=#223333 gui=bold
hi Visual	guifg=#77dddd guibg=#448888 gui=none
hi VisualNOS	guifg=#55afaf guibg=#000000
hi WarningMsg	guifg=#77dddd guibg=#000000
hi WildMenu	guifg=#3a5555 guibg=#77dddd
hi Number	guifg=#77dddd guibg=#354545
hi Char		guifg=#77dddd guibg=#354545
hi String	guifg=#77dddd guibg=#354545
hi Boolean	guifg=#77dddd guibg=#354545
hi Comment	guifg=#446666
hi Constant	guifg=#88eeee gui=none
hi Identifier	guifg=#77dddd
hi Statement	guifg=#88eeee gui=none

"Procedure name
hi Function     guifg=#77dddd

"Define, def
hi PreProc	guifg=#77dddd gui=bold
hi Type		guifg=#77dddd gui=bold
hi Underlined	guifg=#77dddd gui=underline
hi Error	guifg=#ee1111 guibg=#000000
hi Todo		guifg=#223333 guibg=#55afaf gui=none
hi SignColumn   guibg=#000000

if version >= 700
  " Pmenu
  hi Pmenu	guibg=#222222
  hi PmenuSel	guibg=#3a5555 guifg=#77dddd
  hi PmenuSbar	guibg=#222222

  " Tab
  hi TabLine	  guifg=#3a5555 guibg=black gui=bold
  hi TabLineFill  guifg=black guibg=black gui=bold
  hi TabLineSel	  guifg=#88eeee guibg=#447f7f gui=bold
endif


