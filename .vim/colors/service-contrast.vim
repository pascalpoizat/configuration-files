"########################################
"########################################
" Service Contrast (rainglow)
"
" https://github.com/rainglow/vim
"
" Copyright (c) Dayle Rees.
"########################################
"########################################


"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "service-contrast"

"########################################
"# Base Colors.                         #
"########################################

hi Cursor         guifg=#0c0c0c guibg=#f8f8f0 gui=NONE
hi Visual         guifg=#ffffff guibg=#a2d66b gui=NONE
hi CursorLine     guifg=NONE guibg=#141414 gui=NONE
hi CursorLineNr   guifg=#585858 guibg=#000000 gui=NONE
hi CursorColumn   guifg=NONE guibg=#000000 gui=NONE
hi ColorColumn    guifg=NONE guibg=#000000 gui=NONE
hi LineNr         guifg=#252525 guibg=#000000 gui=NONE
hi VertSplit      guifg=#252525 guibg=#252525 gui=NONE
hi MatchParen     guifg=#a0afa1 guibg=NONE gui=underline
hi StatusLine     guifg=#e8e1de guibg=#000000 gui=bold
hi StatusLineNC   guifg=#e8e1de guibg=#000000 gui=NONE
hi Pmenu          guifg=#e8e1de guibg=#000000 gui=NONE
hi PmenuSel       guifg=NONE guibg=#6c8375 gui=NONE
hi IncSearch      guifg=#e8e1de guibg=#88c448 gui=NONE
hi Search         guifg=NONE guibg=NONE gui=underline
hi Directory      guifg=#6c8375 guibg=NONE gui=NONE
hi Folded         guifg=#ded3cf guibg=#000000 gui=NONE
hi Normal         guifg=#f0f5f5 guibg=#0c0c0c gui=NONE
hi Boolean        guifg=#f0f5f5 guibg=NONE gui=NONE
hi Character      guifg=#a2d66b guibg=NONE gui=NONE
hi Comment        guifg=#4b5656 guibg=NONE gui=NONE
hi Conditional    guifg=#a0afa1 guibg=NONE gui=NONE
hi Constant       guifg=NONE guibg=NONE gui=NONE
hi Define         guifg=#6C8375 guibg=NONE gui=NONE
hi DiffAdd        guifg=#323232 guibg=#a7da1e gui=bold
hi DiffDelete     guifg=#323232 guibg=#e61f44 gui=NONE
hi DiffChange     guifg=#323232 guibg=#f7b83d gui=NONE
hi DiffText       guifg=#323232 guibg=#f7b83d gui=bold
hi ErrorMsg       guifg=#323232 guibg=#e61f44 gui=NONE
hi WarningMsg     guifg=#323232 guibg=#f7b83d gui=NONE
hi Float          guifg=#88c448 guibg=NONE gui=NONE
hi Function       guifg=#6c8375 guibg=NONE gui=NONE
hi Identifier     guifg=#ffffff guibg=NONE gui=NONE
hi Keyword        guifg=#6c8375 guibg=NONE gui=NONE
hi Label          guifg=#a2d66b guibg=NONE gui=NONE
hi NonText        guifg=#937467 guibg=#070707 gui=NONE
hi Number         guifg=#88c448 guibg=NONE gui=NONE
hi Operator       guifg=#e8e1de guibg=NONE gui=NONE
hi PreProc        guifg=#6f7f7f guibg=NONE gui=NONE
hi Special        guifg=#e8e1de guibg=NONE gui=NONE
hi SpecialKey     guifg=#e8e1de guibg=#6c8375 gui=NONE
hi Statement      guifg=#a0afa1 guibg=NONE gui=NONE
hi StorageClass   guifg=#a0afa1 guibg=NONE gui=NONE
hi String         guifg=#a2d66b guibg=NONE gui=NONE
hi Tag            guifg=#6c8375 guibg=NONE gui=NONE
hi Title          guifg=#6c8375 guibg=NONE gui=bold
hi Todo           guifg=#6f7f7f guibg=NONE gui=inverse,bold
hi Type           guifg=NONE guibg=NONE gui=NONE
hi Underlined     guifg=NONE guibg=NONE gui=underline

"########################################
"# Language Overrides                   #
"########################################

hi phpIdentifier     guifg=#ffffff
hi phpMethodsVar     guifg=#bebebe
hi xmlTag            guifg=#6c8375 guibg=NONE gui=NONE
hi xmlTagName        guifg=#6c8375 guibg=NONE gui=NONE
hi xmlEndTag         guifg=#6c8375 guibg=NONE gui=NONE

"########################################
"# Light Theme Overrides                #
"########################################

