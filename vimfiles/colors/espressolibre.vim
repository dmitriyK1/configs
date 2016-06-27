" Vim color file
" Converted from Textmate theme Espresso Libre using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Espresso Libre"

hi Cursor ctermfg=16 ctermbg=105 cterm=NONE guifg=#2a211c guibg=#889aff gui=NONE
hi Visual ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#c3dcff gui=NONE
hi CursorLine ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#392f29 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#392f29 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#392f29 gui=NONE
hi LineNr ctermfg=59 ctermbg=52 cterm=NONE guifg=#74685d guibg=#392f29 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#554a41 guibg=#554a41 gui=NONE
hi MatchParen ctermfg=75 ctermbg=NONE cterm=underline guifg=#43a8ed guibg=NONE gui=underline
hi StatusLine ctermfg=145 ctermbg=59 cterm=bold guifg=#bdae9d guibg=#554a41 gui=bold
hi StatusLineNC ctermfg=145 ctermbg=59 cterm=NONE guifg=#bdae9d guibg=#554a41 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#c3dcff gui=NONE
hi IncSearch ctermfg=16 ctermbg=28 cterm=NONE guifg=#2a211c guibg=#049b0a gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi Folded ctermfg=27 ctermbg=16 cterm=NONE guifg=#0066ff guibg=#2a211c gui=NONE

hi Normal ctermfg=145 ctermbg=16 cterm=NONE guifg=#bdae9d guibg=#2a211c gui=NONE
hi Boolean ctermfg=63 ctermbg=NONE cterm=bold guifg=#585cf6 guibg=NONE gui=bold
hi Character ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi Comment ctermfg=27 ctermbg=NONE cterm=NONE guifg=#0066ff guibg=NONE gui=italic
hi Conditional ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi Constant ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi Define ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi DiffAdd ctermfg=145 ctermbg=64 cterm=bold guifg=#bdae9d guibg=#47820a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0706 guibg=NONE gui=NONE
hi DiffChange ctermfg=145 ctermbg=23 cterm=NONE guifg=#bdae9d guibg=#253652 gui=NONE
hi DiffText ctermfg=145 ctermbg=24 cterm=bold guifg=#bdae9d guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi Float ctermfg=71 ctermbg=NONE cterm=NONE guifg=#44aa43 guibg=NONE gui=NONE
hi Function ctermfg=209 ctermbg=NONE cterm=bold guifg=#ff9358 guibg=NONE gui=bold
hi Identifier ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi Keyword ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi Label ctermfg=28 ctermbg=NONE cterm=NONE guifg=#049b0a guibg=NONE gui=NONE
hi NonText ctermfg=250 ctermbg=52 cterm=NONE guifg=#bfbfbf guibg=#312822 gui=NONE
hi Number ctermfg=71 ctermbg=NONE cterm=NONE guifg=#44aa43 guibg=NONE gui=NONE
hi Operator ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi PreProc ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi Special ctermfg=145 ctermbg=NONE cterm=NONE guifg=#bdae9d guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=52 cterm=NONE guifg=#bfbfbf guibg=#392f29 gui=NONE
hi Statement ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi StorageClass ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi String ctermfg=28 ctermbg=NONE cterm=NONE guifg=#049b0a guibg=NONE gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=145 ctermbg=NONE cterm=bold guifg=#bdae9d guibg=NONE gui=bold
hi Todo ctermfg=27 ctermbg=NONE cterm=inverse,bold guifg=#0066ff guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi rubyFunction ctermfg=209 ctermbg=NONE cterm=bold guifg=#ff9358 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi rubyConstant ctermfg=68 ctermbg=NONE cterm=bold guifg=#6d79de guibg=NONE gui=bold
hi rubyStringDelimiter ctermfg=28 ctermbg=NONE cterm=NONE guifg=#049b0a guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyInclude ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=28 ctermbg=NONE cterm=NONE guifg=#049b0a guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=28 ctermbg=NONE cterm=NONE guifg=#049b0a guibg=NONE gui=NONE
hi rubyEscape ctermfg=40 ctermbg=NONE cterm=NONE guifg=#2fe420 guibg=NONE gui=NONE
hi rubyControl ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi rubyException ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=68 ctermbg=NONE cterm=bold guifg=#6d79de guibg=NONE gui=bold
hi rubyRailsARAssociationMethod ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi rubyRailsARMethod ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi rubyRailsRenderMethod ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi rubyRailsMethod ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=27 ctermbg=NONE cterm=NONE guifg=#0066ff guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi htmlTag ctermfg=75 ctermbg=NONE cterm=NONE guifg=#43a8ed guibg=NONE gui=NONE
hi htmlEndTag ctermfg=75 ctermbg=NONE cterm=NONE guifg=#43a8ed guibg=NONE gui=NONE
hi htmlTagName ctermfg=75 ctermbg=NONE cterm=NONE guifg=#43a8ed guibg=NONE gui=NONE
hi htmlArg ctermfg=75 ctermbg=NONE cterm=NONE guifg=#43a8ed guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi javaScriptFunction ctermfg=75 ctermbg=NONE cterm=bold guifg=#43a8ed guibg=NONE gui=bold
hi javaScriptRailsFunction ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi yamlAlias ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=NONE ctermbg=58 cterm=NONE guifg=NONE guibg=#4f3a2c gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=68 ctermbg=NONE cterm=bold guifg=#7290d9 guibg=NONE gui=bold
hi cssColor ctermfg=167 ctermbg=NONE cterm=bold guifg=#c5656b guibg=NONE gui=bold
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssValueLength ctermfg=71 ctermbg=NONE cterm=NONE guifg=#44aa43 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=34 ctermbg=NONE cterm=bold guifg=#00af0e guibg=NONE gui=bold
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
