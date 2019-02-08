" Vim color file
" Name: DarkTango
" Maintainer: Panos Laganakos <panos.laganakos@gmail.com>
" Version: 0.3


set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="darktango"

hi Normal	    guibg=#292929 guifg=#eeeeec

" {{{ syntax
hi Comment	    guifg=#34e2e2
hi Title	    guifg=#eeeeec
hi Underlined	guifg=#20b0eF gui=none
hi Statement	guifg=#888a85
hi Type		    guifg=#fce94f
hi PreProc	    guifg=#eeeeec
hi Constant	    guifg=#babdb6
hi Identifier	guifg=#34e2e2
hi Special	    guifg=#eeeeec
hi Ignore	    guifg=#f57900
hi Todo		    guibg=#323232 guifg=#fce94f
"hi Error
"}}}

" {{{ groups
hi Cursor	    guibg=#babdb6 guifg=#2e3436
"hi CursorIM
hi Directory	guifg=#bbd0df
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=#555753 guifg=#2e3436 gui=none
hi Folded	    guibg=#555753 guifg=#eeeeec
hi FoldColumn	guibg=#2e3436 guifg=#555753
hi LineNr	    guibg=#2e3436 guifg=#555753
hi MatchParen	guibg=#babdb6 guifg=#2e3436
hi ModeMsg	    guifg=#34e2e2
hi MoreMsg	    guifg=#34e2e2
hi NonText	    guibg=#2e3436 guifg=#555753
hi Question	    guifg=#aabbcc
hi Search	    guibg=#fce94f guifg=#c4a000
hi IncSearch	guibg=#c4a000 guifg=#323232
hi SpecialKey	guifg=#34e2e2
hi StatusLine	guibg=#555753 guifg=#eeeeec gui=none
hi StatusLineNC	guibg=#555753 guifg=#272334 gui=none
hi Visual	    guibg=#fcaf3e guifg=#34e2e2
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip
hi Pmenu	    guibg=#babdb6 guifg=#555753
hi PmenuSel	    guibg=#eeeeec guifg=#2e3436
hi CursorLine	guibg=#212628
" }}}

"  {{{ terminal
" TODO
" }}}

"vim: sw=4
