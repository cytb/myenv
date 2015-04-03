set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif

let g:colors_name="darkblue2"
" hi Normal		ctermfg=white      guifg=white guibg=#1A110C
hi Normal		ctermfg=white      guifg=white ctermbg=235 guibg=#1A110C
" hi Statement	ctermfg=202		guifg=#aa4444 guibg=NONE
hi Statement	ctermfg=208		guifg=#ec691e guibg=NONE gui=none
" hi Comment		ctermfg=134		guifg=#8d3fc8 guibg=NONE
hi Comment		ctermfg=134		guifg=#8d3fc8 guibg=NONE
hi Constant		ctermfg=28		guifg=#aa4444 guibg=NONE
hi SymConstant	ctermfg=67		guifg=#3c758d guibg=NONE
hi Identifier	ctermfg=67		guifg=#ec691e guibg=NONE cterm=none
hi Function		ctermfg=220		guifg=#f1c338 guibg=NONE
hi Typename		ctermfg=118		guifg=#f1c338 guibg=NONE
hi Type			ctermfg=208		guifg=#ec691e guibg=NONE gui=none
hi PreProc		ctermfg=208		guifg=#ec691e guibg=NONE gui=none
" hi PreProc		ctermfg=208		guifg=#aa4444 guibg=NONE

hi Operator ctermfg=white guifg=#ffffff guibg=NONE

hi htmlTagName ctermfg=117 guifg=#7f9fbf guibg=NONE
hi Typedef ctermfg=82 guifg=#60ff60 guibg=NONE

hi link String SymConstant
hi link Number SymConstant
hi link character	SymConstant
hi link boolean	Statement
hi link Float		Number


hi link CTagsEnumeratorName Typename
hi link CTagsEnumerationValue Constant
hi link CTagsClass Constant
hi link CTagsDefinedName Constant

" hi link Type Typename
" hi Type ctermfg=208		guifg=#aa4444 guibg=NONE
" Statement
hi link StorageClass	Statement
hi link Structure	Statement

" hi link PreProc		Statement
"hi PreProc	ctermfg=208		guifg=#aa4444 guibg=NONE
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link Include	PreProc
hi link Define	PreProc

hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff

hi link Repeat Statement
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement

hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special

hi link cConstant Constant

