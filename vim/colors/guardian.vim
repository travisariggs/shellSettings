" Vim color file - guardian
" Generated by http://bytefluent.com/vivify 2017-03-21
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "guardian"

"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi Folded -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi Normal guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
"hi CTagsImport -- no settings --
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi VisualNOS -- no settings --
"hi CursorColumn -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
"hi vimhigroup -- no settings --
"hi texmath -- no settings --
"hi default -- no settings --
hi IncSearch guifg=#ffffff guibg=#0066cc guisp=#0066cc gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
hi SpecialComment guifg=#dddddd guibg=#445566 guisp=#445566 gui=italic ctermfg=253 ctermbg=60 cterm=NONE
hi Typedef guifg=#99cc99 guibg=#221100 guisp=#221100 gui=italic ctermfg=151 ctermbg=52 cterm=NONE
hi Title guifg=#ffffff guibg=#445566 guisp=#445566 gui=bold ctermfg=15 ctermbg=60 cterm=bold
hi PreCondit guifg=#99cc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=151 ctermbg=52 cterm=bold
hi Include guifg=#99cc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=151 ctermbg=52 cterm=bold
hi StatusLineNC guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
hi NonText guifg=#ffeecc guibg=#445566 guisp=#445566 gui=bold ctermfg=230 ctermbg=60 cterm=bold
hi DiffText guifg=#ffffff guibg=#884444 guisp=#884444 gui=bold ctermfg=15 ctermbg=95 cterm=bold
hi ErrorMsg guifg=#ff0000 guibg=#221100 guisp=#221100 gui=bold ctermfg=196 ctermbg=52 cterm=bold
hi Ignore guifg=#cccccc guibg=#221100 guisp=#221100 gui=italic ctermfg=252 ctermbg=52 cterm=NONE
hi Debug guifg=#ff9999 guibg=#221100 guisp=#221100 gui=NONE ctermfg=210 ctermbg=52 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#221100 guisp=#221100 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Identifier guifg=#ffddaa guibg=#221100 guisp=#221100 gui=bold ctermfg=223 ctermbg=52 cterm=bold
hi SpecialChar guifg=#bbddff guibg=#221100 guisp=#221100 gui=bold ctermfg=153 ctermbg=52 cterm=bold
hi Conditional guifg=#ff6666 guibg=#221100 guisp=#221100 gui=bold ctermfg=9 ctermbg=52 cterm=bold
hi StorageClass guifg=#99cc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=151 ctermbg=52 cterm=bold
hi Todo guifg=#ff0000 guibg=#556677 guisp=#556677 gui=bold ctermfg=196 ctermbg=60 cterm=bold
hi Special guifg=#bbddff guibg=#221100 guisp=#221100 gui=bold ctermfg=153 ctermbg=52 cterm=bold
hi LineNr guifg=#aaaaaa guibg=#221100 guisp=#221100 gui=NONE ctermfg=248 ctermbg=52 cterm=NONE
hi StatusLine guifg=#000000 guibg=#ffeecc guisp=#ffeecc gui=bold ctermfg=NONE ctermbg=230 cterm=bold
hi Label guifg=#ffccff guibg=#221100 guisp=#221100 gui=bold ctermfg=225 ctermbg=52 cterm=bold
hi PMenuSel guifg=#000000 guibg=#ffeecc guisp=#ffeecc gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi Delimiter guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi Statement guifg=#ffffcc guibg=#221100 guisp=#221100 gui=bold ctermfg=230 ctermbg=52 cterm=bold
hi Comment guifg=#dddddd guibg=#445566 guisp=#445566 gui=NONE ctermfg=253 ctermbg=60 cterm=NONE
hi Character guifg=#ffffcc guibg=#221100 guisp=#221100 gui=bold ctermfg=230 ctermbg=52 cterm=bold
hi Float guifg=#bbddff guibg=#221100 guisp=#221100 gui=bold ctermfg=153 ctermbg=52 cterm=bold
hi Number guifg=#bbddff guibg=#221100 guisp=#221100 gui=bold ctermfg=153 ctermbg=52 cterm=bold
hi Boolean guifg=#bbddff guibg=#221100 guisp=#221100 gui=NONE ctermfg=153 ctermbg=52 cterm=NONE
hi Operator guifg=#cc9966 guibg=#221100 guisp=#221100 gui=bold ctermfg=173 ctermbg=52 cterm=bold
hi Question guifg=#ccffcc guibg=#221100 guisp=#221100 gui=bold ctermfg=194 ctermbg=52 cterm=bold
hi WarningMsg guifg=#ff0000 guibg=#221100 guisp=#221100 gui=bold ctermfg=196 ctermbg=52 cterm=bold
hi DiffDelete guifg=#ffffff guibg=#884444 guisp=#884444 gui=NONE ctermfg=15 ctermbg=95 cterm=NONE
hi ModeMsg guifg=#ffeecc guibg=#221100 guisp=#221100 gui=NONE ctermfg=230 ctermbg=52 cterm=NONE
hi Define guifg=#99cc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=151 ctermbg=52 cterm=bold
hi Function guifg=#ffddaa guibg=#221100 guisp=#221100 gui=bold ctermfg=223 ctermbg=52 cterm=bold
hi PreProc guifg=#ffcc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=223 ctermbg=52 cterm=bold
hi Visual guifg=#ffffff guibg=#557799 guisp=#557799 gui=NONE ctermfg=15 ctermbg=67 cterm=NONE
hi MoreMsg guifg=#ffeecc guibg=#221100 guisp=#221100 gui=NONE ctermfg=230 ctermbg=52 cterm=NONE
hi VertSplit guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
hi Exception guifg=#66ffcc guibg=#221100 guisp=#221100 gui=bold ctermfg=86 ctermbg=52 cterm=bold
hi Keyword guifg=#66ffcc guibg=#221100 guisp=#221100 gui=bold ctermfg=86 ctermbg=52 cterm=bold
hi Type guifg=#ff7788 guibg=#221100 guisp=#221100 gui=bold ctermfg=210 ctermbg=52 cterm=bold
hi DiffChange guifg=#ffffff guibg=#558855 guisp=#558855 gui=NONE ctermfg=15 ctermbg=65 cterm=NONE
hi Cursor guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=bold ctermfg=15 ctermbg=167 cterm=bold
hi Error guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=15 ctermbg=196 cterm=bold
hi PMenu guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
hi SpecialKey guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi Constant guifg=#ffffff guibg=#221100 guisp=#221100 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi Tag guifg=#bbddff guibg=#221100 guisp=#221100 gui=bold ctermfg=153 ctermbg=52 cterm=bold
hi String guifg=#ffffcc guibg=#221100 guisp=#221100 gui=italic ctermfg=230 ctermbg=52 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#aaaaaa guisp=#aaaaaa gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Repeat guifg=#ff9900 guibg=#221100 guisp=#221100 gui=bold ctermfg=208 ctermbg=52 cterm=bold
hi Directory guifg=#337700 guibg=#221100 guisp=#221100 gui=NONE ctermfg=2 ctermbg=52 cterm=NONE
hi Structure guifg=#99ff99 guibg=#221100 guisp=#221100 gui=bold ctermfg=120 ctermbg=52 cterm=bold
hi Macro guifg=#99cc99 guibg=#221100 guisp=#221100 gui=bold ctermfg=151 ctermbg=52 cterm=bold
hi Underlined guifg=#99ccff guibg=#221100 guisp=#221100 gui=underline ctermfg=153 ctermbg=52 cterm=underline
hi DiffAdd guifg=#ffffff guibg=#446688 guisp=#446688 gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
hi cursorim guifg=#1F1F1F guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
hi scrollbar guifg=NONE guibg=#304020 guisp=#304020 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi condtional guifg=#64b3b3 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi columnmargin guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi keyword guifg=#cbef00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi constant guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi method guifg=#f8f8f8 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi interpolation guifg=#2eb6c2 guibg=NONE guisp=NONE gui=NONE ctermfg=4 ctermbg=NONE cterm=NONE
hi symbol guifg=#fab1ab guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
hi type guifg=#e6ac32 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=172 ctermbg=236 cterm=NONE
hi menu guifg=#f5ddb2 guibg=#304020 guisp=#304020 gui=NONE ctermfg=223 ctermbg=238 cterm=NONE
hi user2 guifg=#9ace32 guibg=#091900 guisp=#091900 gui=bold ctermfg=149 ctermbg=22 cterm=bold
hi vimoption guifg=#ffd900 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi vimerror guifg=#ff0000 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi cincluded guifg=#9ace32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi texsection guifg=#acff2f guibg=NONE guisp=NONE gui=NONE ctermfg=118 ctermbg=NONE cterm=NONE
hi texmatcher guifg=#9ace32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi xmltag guifg=#f9bb00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi xmlattrib guifg=#007d00 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi xmltagname guifg=#f9bb00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi xmlcomment guifg=#808080 guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi xmlentity guifg=#9a006c guibg=NONE guisp=NONE gui=NONE ctermfg=89 ctermbg=NONE cterm=NONE
hi xmlendtag guifg=#f9bb00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi perlsharpbang guifg=#c1c191 guibg=#505050 guisp=#505050 gui=NONE ctermfg=144 ctermbg=239 cterm=NONE
hi perlspecialstring guifg=#dc966b guibg=#343434 guisp=#343434 gui=NONE ctermfg=173 ctermbg=236 cterm=NONE
hi perlfunctionname guifg=#ffffff guibg=#343434 guisp=#343434 gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi perlstatementinclude guifg=#c1c191 guibg=#3b4038 guisp=#3b4038 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlcontrol guifg=#c1c191 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlstatement guifg=#c1c191 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi perllabel guifg=#c1c191 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlmatchstartend guifg=#c1c191 guibg=#424242 guisp=#424242 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlrepeat guifg=#c1b891 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perlshellcommand guifg=NONE guibg=#424242 guisp=#424242 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi perlstatementfiledesc guifg=#a2c191 guibg=#343434 guisp=#343434 gui=NONE ctermfg=108 ctermbg=236 cterm=NONE
hi perlstatementsub guifg=#c1c191 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perloperator guifg=#c1c191 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi htmltagname guifg=#b3b3b3 guibg=#343434 guisp=#343434 gui=NONE ctermfg=249 ctermbg=236 cterm=NONE
hi perlspecialmatch guifg=#c964c7 guibg=#343434 guisp=#343434 gui=NONE ctermfg=170 ctermbg=236 cterm=NONE
hi mytaglistfilename guifg=#cccccc guibg=#404040 guisp=#404040 gui=underline ctermfg=252 ctermbg=238 cterm=underline
hi perlvarsimplemembername guifg=#b3b3b3 guibg=#343434 guisp=#343434 gui=NONE ctermfg=249 ctermbg=236 cterm=NONE
hi perlnumber guifg=#80ad7b guibg=#343434 guisp=#343434 gui=NONE ctermfg=108 ctermbg=236 cterm=NONE
hi perlvarnotinmatches guifg=#915555 guibg=#343434 guisp=#343434 gui=NONE ctermfg=95 ctermbg=236 cterm=NONE
hi perlqq guifg=#cccccc guibg=#393939 guisp=#393939 gui=NONE ctermfg=252 ctermbg=237 cterm=NONE
hi perlstatementcontrol guifg=#dcda6b guibg=#343434 guisp=#343434 gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi perlstatementhash guifg=#c1c191 guibg=#404040 guisp=#404040 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlvarsimplemember guifg=#c1c191 guibg=#343434 guisp=#343434 gui=NONE ctermfg=144 ctermbg=236 cterm=NONE
hi perlidentifier guifg=#91c1c1 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi perlstringstartend guifg=#af6f50 guibg=#353535 guisp=#353535 gui=NONE ctermfg=137 ctermbg=236 cterm=NONE
hi perlspecialbeom guifg=#cccccc guibg=#404040 guisp=#404040 gui=NONE ctermfg=252 ctermbg=238 cterm=NONE
hi perlvarplain guifg=#74c6c7 guibg=#343434 guisp=#343434 gui=NONE ctermfg=116 ctermbg=236 cterm=NONE
hi perlstatementnew guifg=#c1c191 guibg=#424242 guisp=#424242 gui=NONE ctermfg=144 ctermbg=238 cterm=NONE
hi perlpackagedecl guifg=#80ad7b guibg=#404040 guisp=#404040 gui=NONE ctermfg=108 ctermbg=238 cterm=NONE
hi perlvarplain2 guifg=#74c7a9 guibg=#343434 guisp=#343434 gui=NONE ctermfg=115 ctermbg=236 cterm=NONE
hi browsedirectory guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi mbenormal guifg=#e6e6e6 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#1a1a1a guibg=#AFC900 guisp=#AFC900 gui=italic ctermfg=234 ctermbg=148 cterm=NONE
hi plsqlconditional guifg=#99ccff guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlstorage guifg=#f5ddb2 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#f0d0c0 guibg=NONE guisp=NONE gui=italic ctermfg=224 ctermbg=NONE cterm=NONE
hi plsqlrepeat guifg=#99ccff guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlfunction guifg=#ffaaaa guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi attribute guifg=#cccccc guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
hi pythonstatement guifg=#729fcf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=#729fcf guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#cc0000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#ad7fa8 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi pythonescape guifg=#3465a4 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi pythoncomment guifg=#edd400 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi pythonprecondit guifg=#ef2929 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonrawstring guifg=#ad9361 guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi pythonconditional guifg=#73d216 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi pythonrepeat guifg=#8ae234 guibg=NONE guisp=NONE gui=NONE ctermfg=113 ctermbg=NONE cterm=NONE
hi constants guifg=#e9b96e guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi special guifg=#9ab2c8 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=152 ctermbg=236 cterm=NONE
hi preproc guifg=#d1d435 guibg=#2a2b2f guisp=#2a2b2f gui=NONE ctermfg=185 ctermbg=236 cterm=NONE
hi statement guifg=#62acce guibg=#2a2b2f guisp=#2a2b2f gui=bold ctermfg=74 ctermbg=236 cterm=bold
hi normal guifg=#e8e8d3 guibg=#151515 guisp=#151515 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
hi underlined guifg=#e1e0e5 guibg=#2a2b2f guisp=#2a2b2f gui=underline ctermfg=254 ctermbg=236 cterm=underline
hi stringdelimiter guifg=#556633 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#dd0093 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi string guifg=#99ad6a guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#447799 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi identifier guifg=#c6b6ee guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi comment guifg=#888888 guibg=NONE guisp=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#de5577 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi function guifg=#fad07a guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi directory guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#7697d6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#7597c6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi htmllink guifg=#89aa66 guibg=#332f22 guisp=#332f22 gui=underline ctermfg=107 ctermbg=236 cterm=underline
hi titled guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi incsearch guifg=#ffffff guibg=#0066cc guisp=#0066cc gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
hi htmlh2 guifg=#ffffff guibg=#221100 guisp=#221100 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi cursor guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=bold ctermfg=15 ctermbg=167 cterm=bold
