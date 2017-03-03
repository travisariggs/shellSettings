" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Travis Riggs
" Last Change:	3/21/2017

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elflord"
hi Normal		                                                                              guifg=cyan			guibg=black
hi Comment	  term=bold	      cterm=bold	        ctermfg=DarkCyan		                    guifg=#80a0ff
hi Constant	  term=underline  cterm=bold	        ctermfg=Magenta		                      guifg=Magenta
hi Special	  term=bold		    cterm=bold          ctermfg=DarkMagenta	                    guifg=Red
hi Identifier term=underline	cterm=bold	        ctermfg=Cyan                            guifg=#40ffff
hi Statement  term=bold       cterm=bold	        ctermfg=Yellow                gui=bold	guifg=#aa4444
hi PreProc	  term=underline  cterm=bold	        ctermfg=LightBlue	                      guifg=#ff80ff
hi Type	      term=underline  cterm=bold	        ctermfg=LightGreen	                    guifg=#60ff60 gui=bold
hi Function	  term=bold       cterm=bold	        ctermfg=White                           guifg=White
hi Repeat	    term=underline  cterm=bold	        ctermfg=White		                        guifg=white
hi Operator		                cterm=bold	        ctermfg=Red			                        guifg=Red
hi Ignore		                  cterm=bold	        ctermfg=black		                        guifg=bg
hi Error	    term=reverse    cterm=reverse       ctermbg=Red     ctermfg=White guibg=Red guifg=White
hi Todo	      term=standout   cterm=standout,bold ctermbg=Yellow  ctermfg=Black guifg=Blue guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
