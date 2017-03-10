" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "monokai"

hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=bold
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=bold
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=underline guifg=#f92672 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi Character ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi Comment ctermfg=242 ctermbg=NONE cterm=bold guifg=#75715e guibg=NONE gui=bold
hi Conditional ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi Constant ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi Define ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=bold
hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=bold
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=bold guifg=#f8f8f0 guibg=#f92672 gui=bold
hi WarningMsg ctermfg=231 ctermbg=197 cterm=bold guifg=#f8f8f0 guibg=#f92672 gui=bold
hi Float ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi Function ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi Identifier ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi Label ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi Operator ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi PreProc ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi Special ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi SpecialComment ctermfg=242 ctermbg=NONE cterm=bold guifg=#75715e guibg=NONE gui=bold
hi SpecialKey ctermfg=59 ctermbg=237 cterm=bold guifg=#49483e guibg=#3c3d37 gui=bold
hi Statement ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi StorageClass ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=italic
hi String ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi Tag ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
hi Type ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=bold guifg=#fd971f guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi rubyInclude ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi rubyControl ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi rubyOperator ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi rubyException ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi erubyComment ctermfg=95 ctermbg=NONE cterm=bold guifg=#75715e guibg=NONE gui=bold
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi htmlTag ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi htmlEndTag ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi yamlKey ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=bold guifg=#e6db74 guibg=NONE gui=bold
hi cssURL ctermfg=208 ctermbg=NONE cterm=bold guifg=#fd971f guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi cssColor ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi cssClassName ctermfg=148 ctermbg=NONE cterm=bold guifg=#a6e22e guibg=NONE gui=bold
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=bold guifg=#ae81ff guibg=NONE gui=bold
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=bold guifg=#66d9ef guibg=NONE gui=bold
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=bold guifg=NONE guibg=NONE gui=bold
