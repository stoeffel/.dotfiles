" Vim color file
" Converted from Textmate theme Focus (dark) using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

" let g:colors_name = "focus-dark"

hi Cursor    guifg=#1b1d1f guibg=#b6b7b5 gui=NONE
hi Visual    guifg=NONE guibg=#42453d gui=NONE
hi CursorLine    guifg=NONE guibg=#2c2e2f gui=NONE
hi CursorColumn    guifg=NONE guibg=#2c2e2f gui=NONE
hi ColorColumn    guifg=NONE guibg=#2c2e2f gui=NONE
hi LineNr    guifg=#6e716e guibg=#2c2e2f gui=NONE
hi VertSplit    guifg=#4b4e4d guibg=#4b4e4d gui=NONE
hi MatchParen    guifg=#8f928a guibg=NONE gui=underline
hi StatusLine    guifg=#c2c5bd guibg=#4b4e4d gui=bold
hi StatusLineNC    guifg=#c2c5bd guibg=#4b4e4d gui=NONE
hi Pmenu    guifg=#8f928a guibg=NONE gui=NONE
hi PmenuSel    guifg=NONE guibg=#8f928a gui=NONE
hi IncSearch    guifg=#1b1d1f guibg=#8f928a gui=NONE
hi Search    guifg=NONE guibg=NONE gui=underline
hi Directory    guifg=#8f928a guibg=NONE gui=NONE
hi Folded    guifg=#8f928a guibg=#1b1d1f gui=NONE

hi Normal    guifg=#c2c5bd guibg=#1b1d1f gui=NONE
hi Boolean    guifg=#8f928a guibg=NONE gui=NONE
hi Character    guifg=#8f928a guibg=NONE gui=NONE
hi Comment    guifg=#8f928a guibg=NONE gui=NONE
hi Conditional    guifg=#8f928a guibg=NONE gui=NONE
hi Constant    guifg=#8f928a guibg=NONE gui=NONE
hi Define    guifg=#8f928a guibg=NONE gui=NONE
hi DiffAdd    guifg=#c2c5bd guibg=#44810b gui=bold
hi DiffDelete    guifg=#890606 guibg=NONE gui=NONE
hi DiffChange    guifg=#c2c5bd guibg=#1e3453 gui=NONE
hi DiffText    guifg=#c2c5bd guibg=#204a87 gui=bold
hi ErrorMsg    guifg=#8f928a guibg=NONE gui=NONE
hi WarningMsg    guifg=#8f928a guibg=NONE gui=NONE
hi Float    guifg=#8f928a guibg=NONE gui=NONE
hi Function    guifg=#8f928a guibg=NONE gui=NONE
hi Identifier    guifg=#8f928a guibg=NONE gui=NONE
hi Keyword    guifg=#8f928a guibg=NONE gui=NONE
hi Label    guifg=#8f928a guibg=NONE gui=NONE
hi NonText    guifg=#43464c guibg=#232527 gui=NONE
hi Number    guifg=#8f928a guibg=NONE gui=NONE
hi Operator    guifg=#8f928a guibg=NONE gui=NONE
hi PreProc    guifg=#8f928a guibg=NONE gui=NONE
hi Special    guifg=#c2c5bd guibg=NONE gui=NONE
hi SpecialKey    guifg=#43464c guibg=#2c2e2f gui=NONE
hi Statement    guifg=#8f928a guibg=NONE gui=NONE
hi StorageClass    guifg=#8f928a guibg=NONE gui=NONE
hi String    guifg=#8f928a guibg=NONE gui=NONE
hi Tag    guifg=#8f928a guibg=NONE gui=NONE
hi Title    guifg=#c2c5bd guibg=NONE gui=bold
hi Todo    guifg=#8f928a guibg=NONE gui=inverse,bold
hi Type    guifg=#8f928a guibg=NONE gui=NONE
hi Underlined    guifg=NONE guibg=NONE gui=underline
hi rubyClass    guifg=#8f928a guibg=NONE gui=NONE
hi rubyFunction    guifg=#8f928a guibg=NONE gui=NONE
hi rubyInterpolationDelimiter    guifg=NONE guibg=NONE gui=NONE
hi rubySymbol    guifg=#8f928a guibg=NONE gui=NONE
hi rubyConstant    guifg=#8f928a guibg=NONE gui=NONE
hi rubyStringDelimiter    guifg=#8f928a guibg=NONE gui=NONE
hi rubyBlockParameter    guifg=#8f928a guibg=NONE gui=NONE
hi rubyInstanceVariable    guifg=#8f928a guibg=NONE gui=NONE
hi rubyInclude    guifg=#8f928a guibg=NONE gui=NONE
hi rubyGlobalVariable    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRegexp    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRegexpDelimiter    guifg=#8f928a guibg=NONE gui=NONE
hi rubyEscape    guifg=#8f928a guibg=NONE gui=NONE
hi rubyControl    guifg=#8f928a guibg=NONE gui=NONE
hi rubyClassVariable    guifg=#8f928a guibg=NONE gui=NONE
hi rubyOperator    guifg=#8f928a guibg=NONE gui=NONE
hi rubyException    guifg=#8f928a guibg=NONE gui=NONE
hi rubyPseudoVariable    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRailsUserClass    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRailsARMethod    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRailsRenderMethod    guifg=#8f928a guibg=NONE gui=NONE
hi rubyRailsMethod    guifg=#8f928a guibg=NONE gui=NONE
hi erubyDelimiter    guifg=NONE guibg=NONE gui=NONE
hi erubyComment    guifg=#8f928a guibg=NONE gui=NONE
hi erubyRailsMethod    guifg=#8f928a guibg=NONE gui=NONE
hi htmlTag    guifg=#8f928a guibg=NONE gui=NONE
hi htmlEndTag    guifg=#8f928a guibg=NONE gui=NONE
hi htmlTagName    guifg=#8f928a guibg=NONE gui=NONE
hi htmlArg    guifg=#8f928a guibg=NONE gui=NONE
hi htmlSpecialChar    guifg=#8f928a guibg=NONE gui=NONE
hi javaScriptFunction    guifg=#8f928a guibg=NONE gui=NONE
hi javaScriptRailsFunction    guifg=#8f928a guibg=NONE gui=NONE
hi javaScriptBraces    guifg=#8f928a guibg=NONE gui=NONE
hi yamlKey    guifg=#8f928a guibg=NONE gui=NONE
hi yamlAnchor    guifg=#8f928a guibg=NONE gui=NONE
hi yamlAlias    guifg=#8f928a guibg=NONE gui=NONE
hi yamlDocumentHeader    guifg=#8f928a guibg=NONE gui=NONE
hi cssURL    guifg=#8f928a guibg=NONE gui=NONE
hi cssFunctionName    guifg=#8f928a guibg=NONE gui=NONE
hi cssColor    guifg=#8f928a guibg=NONE gui=NONE
hi cssPseudoClassId    guifg=#8f928a guibg=NONE gui=NONE
hi cssClassName    guifg=#8f928a guibg=NONE gui=NONE
hi cssValueLength    guifg=#8f928a guibg=NONE gui=NONE
hi cssCommonAttr    guifg=#8f928a guibg=NONE gui=NONE
hi cssBraces    guifg=NONE guibg=NONE gui=NONE
