" Vim syntax file
" Language:         ReStructuredText Documentation Format
" Maintainer:       Wouter J <waldio.webdesign@gmail.com>
" Latest Revision:  2013-04-10
"
" TODO
" * multiline comments

""""""""""""""""""""
" Configuration
""""""""""""""""""""
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" needed to use htmlbold and htmlItalics
runtime! syntax/html.vim
unlet! b:current_syntax

syn case ignore

""""""""""""""""""""
" General stuff
""""""""""""""""""""
" Must be at first, because a lot of syntaxes override it

" blockquote
syn region rstBlockQuoteValue start='^\z(\s\+\)' skip='^$' end='^\z1\@!' contained

" Comments
syn match rstComment '\.\.\s*.*$'

""""""""""""""""""""
" Inline Markup
""""""""""""""""""""
syn region rstItalics start=/\(\W\|^\)\zs\*[^ *]/ end=/\*\(\_W\)\@=/
syn region rstBold start=/\(\W\|^\)\zs\*\*\S/ end=/\*\*\(\_W\)\@=/
syn region rstInlineLiteral start=/\(\W\|^\)\zs``\S/ skip=/\\`/ end=/``\(\_W\)\@=/


""""""""""""""""""""
" Roles
""""""""""""""""""""
syn region rstUserRole start=/:\ze[^:]\+/ end=/:/ oneline nextgroup=rstRoleValue
syn region rstRoleValue matchgroup=rstUserRole start=/`/ end=/`/ contained

" Default roles
syn region rstItalics matchgroup=rstDefaultRole start=/:emphasis:`/ end=/`/
syn region rstBold matchgroup=rstDefaultRole start=/:strong:`/  end=/`/
syn region rstInlineLiteral matchgroup=rstDefaultRole start=/:literal:`/ end=/`/

syn region rstRoleValue matchgroup=rstDefaultRole start=/:subscript:`/ end=/`/
syn region rstRoleValue matchgroup=rstDefaultRole start=/:superscript:`/ end=/`/
syn region rstRoleValue matchgroup=rstDefaultRole start=/:title-reference:`/ end=/`/

""""""""""""""""""""
" List
""""""""""""""""""""
syn match rstListValue '.*$' contained

syn match rstListMarker '^\s*\*' nextgroup=rstListValue
syn match rstListMarker '^\s*\d\.' nextgroup=rstListValue
syn match rstListMarker '^\s*#\.' nextgroup=rstListValue

""""""""""""""""""""
" Blocks
""""""""""""""""""""
syn match rstBlockValue '.*$' contained

syn match rstListBlockMarker '^|' nextgroup=rstBlockValue
syn match rstQuotedBlockMarker '^>\(>\)*' nextgroup=rstBlockValue

""""""""""""""""""""
" Hyperlinks
""""""""""""""""""""
syn match rstLinkValue /`[^`]\+`_/ contains=rstLinkTarget
syn match rstLinkTarget /<.\+>/ contained

syn match rstLinkReferenceMarker /\.\.\s\+_.\{-1,}:/ nextgroup=rstLinkReferenceValue
syn match rstLinkReferenceValue /.*$/ contained

""""""""""""""""""""
" Headings
""""""""""""""""""""
syn match rstHeading '.\+\n[~#*=\-^".]\+$'

""""""""""""""""""""
" Directives
""""""""""""""""""""
syn match rstDirective '\.\.\s*.\+::\s*' nextgroup=rstDirectiveName
syn match rstDirectiveName '.*\_s*\n' nextgroup=rstDirectiveValue contained
syn region rstDirectiveValue start='^\z(\s\+\)' skip='^$' end='^\z1\@!' contained

" default directives
syn match rstDefaultDirective '\.\.\s*\(attention\|caution\|danger\|error\|hint\|important\|note\|tip\|warning\)::\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(image\|figure\)::\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(contents\|container\|rubric\|topic\|sidebar\|parsed-literal\|epigraph\|highlights\|pull-quote\|compound\)\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(table\|csv-table\|list-table\)::\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(raw\|include\|class\)::\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(meta\|title\)::\s*' nextgroup=rstDirectiveName
syn match rstDefaultDirective '\.\.\s*\(default-role\|title\)::\s*' nextgroup=rstDirectiveName

""""""""""""""""""""
" Code Blocks
""""""""""""""""""""
syn region rstCodeBlockValue start='^\z(\s\+\)' skip='^$' end='^\z1\@!' contained

" colon code blocks
syn match rstCodeBlockMarker '\(\S\)\@<=::\_s*\n' nextgroup=rstCodeBlockValue

" .. code-block::
syn match rstCodeBlockDirective '\.\. code-block::\s*' nextgroup=rstCodeBlockLang
syn match rstCodeBlockLang '\w*\_s*\n' contained nextgroup=rstCodeBlockValue

""""""""""""""""""""
" Citations
""""""""""""""""""""
syn match rstCitationMarker '\[.*\]_'
syn match rstCitationReference '\.\.\s*\[.*\]\s*' nextgroup=rstCitationReferenceValue
syn match rstCitationReferenceValue '.*$' contained


""""""""""""""""""""
" Footnotes
""""""""""""""""""""
syn match rstFootnoteMarker '\[#.*\]_'
syn match rstRubricDirective '\c\.\.\s*rubric::\s*Footnotes\_s*' nextgroup=rstFootnoteLocation contains=rstDefaultDirective
syn match rstFootnoteLocation '..\s*\[#.*\]\s*' nextgroup=rstFootnoteLocationValue contained
syn match rstFootnoteLocationValue '.*$' contained

syn match rstAmp '&'

hi RstHeading term=underline cterm=bold ctermfg=13 guifg=#ffa0a0

""""""""""""""""""""
" Mappings
""""""""""""""""""""
hi def link rstItalics                SpecialKey
hi def link rstBold                   SpecialKey
hi def link rstInlineLiteral          Constant

hi def link rstDefaultRole            PreProc
hi def link rstUserRole               Special
"hi def link rstRoleValue              ...

hi def link rstListMarker             Function
"hi def link rstListValue              ...

"hi def link rstBlockValue             ...
hi def link rstListBlockMarker        Special
hi def link rstQuotedBlockMarker      Special

hi def link rstCodeBlockMarker        Special
hi def link rstCodeBlockValue         String
hi def link rstCodeBlockDirective     Statement
hi def link rstCodeBlockLang          Type

hi def link rstLinkValue              Special
hi def link rstLinkTarget             Special
hi def link rstLinkReferenceMarker    Special
"hi def link rstLinkReferenceValue     ...

hi def link rstHeading                RstHeading

hi def link rstDirective              Statement
hi def link rstDirectiveName          Type
hi def link rstDefaultDirective       Type
"hi def link rstDirectiveValue         ...
hi def link rstComment                Comment

hi def link rstCitationMarker         Special
hi def link rstCitationReference      Special
"hi def link rstCitationReferenceValue ...

hi def link rstFootnoteMarker         Special
hi def link rstFootnoteLocation       Special
"hi def link rstFootnoteLocationValue  ...

hi def link rstAmp                    Normal

""""""""""""""""""""
" Final Configuration
""""""""""""""""""""
let b:current_syntax = "rst"
