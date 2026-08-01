" VGA 4-bit color theme — Norton Commander / Turbo Pascal era
" Maintainer: rmadureira
" Palette: exact CGA/VGA hardware values (256-color indices)

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "vga"

set background=dark

" --- UI chrome ---
hi Normal        ctermfg=231  ctermbg=18   guifg=#c0c0c0 guibg=#000080
hi LineNr        ctermfg=51   ctermbg=18   guifg=#00ffff guibg=#000080
hi CursorLine    ctermfg=NONE ctermbg=21   guifg=NONE    guibg=#0000ff  cterm=NONE gui=NONE
hi CursorLineNr  ctermfg=226  ctermbg=21   guifg=#ffff00 guibg=#0000ff  cterm=NONE gui=NONE
hi Visual        ctermfg=16   ctermbg=3    guifg=#000000 guibg=#808000
hi Search        ctermfg=16   ctermbg=226  guifg=#000000 guibg=#ffff00
hi IncSearch     ctermfg=16   ctermbg=51   guifg=#000000 guibg=#00ffff  cterm=NONE gui=NONE
hi StatusLine    ctermfg=16   ctermbg=7    guifg=#000000 guibg=#c0c0c0  cterm=NONE gui=NONE
hi StatusLineNC  ctermfg=8    ctermbg=7    guifg=#808080 guibg=#c0c0c0  cterm=NONE gui=NONE
hi VertSplit     ctermfg=7    ctermbg=7    guifg=#c0c0c0 guibg=#c0c0c0  cterm=NONE gui=NONE
hi TabLine       ctermfg=16   ctermbg=7    guifg=#000000 guibg=#c0c0c0  cterm=NONE gui=NONE
hi TabLineSel    ctermfg=231  ctermbg=18   guifg=#ffffff guibg=#000080  cterm=NONE gui=NONE
hi TabLineFill   ctermfg=7    ctermbg=7    guifg=#c0c0c0 guibg=#c0c0c0  cterm=NONE gui=NONE
hi Pmenu         ctermfg=231  ctermbg=21   guifg=#ffffff guibg=#0000ff
hi PmenuSel      ctermfg=16   ctermbg=51   guifg=#000000 guibg=#00ffff
hi PmenuSbar     ctermbg=8    guibg=#808080
hi PmenuThumb    ctermbg=7    guibg=#c0c0c0
hi WildMenu      ctermfg=16   ctermbg=226  guifg=#000000 guibg=#ffff00
hi Folded        ctermfg=51   ctermbg=21   guifg=#00ffff guibg=#0000ff
hi FoldColumn    ctermfg=51   ctermbg=18   guifg=#00ffff guibg=#000080
hi SignColumn    ctermfg=51   ctermbg=18   guifg=#00ffff guibg=#000080
hi ColorColumn   ctermbg=21   guibg=#0000ff
hi MatchParen    ctermfg=226  ctermbg=21   guifg=#ffff00 guibg=#0000ff  cterm=bold gui=bold
hi NonText       ctermfg=21   ctermbg=18   guifg=#0000ff guibg=#000080
hi SpecialKey    ctermfg=8    ctermbg=18   guifg=#808080 guibg=#000080
hi Title         ctermfg=226               guifg=#ffff00                 cterm=bold gui=bold
hi ModeMsg       ctermfg=226               guifg=#ffff00
hi MoreMsg       ctermfg=10                guifg=#00ff00
hi Question      ctermfg=10                guifg=#00ff00
hi ErrorMsg      ctermfg=231  ctermbg=1    guifg=#ffffff guibg=#ff0000
hi WarningMsg    ctermfg=226               guifg=#ffff00
hi Directory     ctermfg=231               guifg=#ffffff

" --- Syntax ---
hi Comment       ctermfg=8                 guifg=#808080
hi Constant      ctermfg=51                guifg=#00ffff
hi String        ctermfg=10                guifg=#00ff00
hi Character     ctermfg=10                guifg=#00ff00
hi Number        ctermfg=51                guifg=#00ffff
hi Boolean       ctermfg=51                guifg=#00ffff
hi Float         ctermfg=51                guifg=#00ffff
hi Identifier    ctermfg=231               guifg=#ffffff  cterm=NONE gui=NONE
hi Function      ctermfg=226               guifg=#ffff00
hi Statement     ctermfg=226               guifg=#ffff00  cterm=NONE gui=NONE
hi Conditional   ctermfg=226               guifg=#ffff00  cterm=NONE gui=NONE
hi Repeat        ctermfg=226               guifg=#ffff00  cterm=NONE gui=NONE
hi Label         ctermfg=226               guifg=#ffff00
hi Operator      ctermfg=231               guifg=#ffffff
hi Keyword       ctermfg=226               guifg=#ffff00  cterm=bold gui=bold
hi Exception     ctermfg=27                guifg=#0055ff
hi PreProc       ctermfg=13                guifg=#ff00ff
hi Include       ctermfg=13                guifg=#ff00ff
hi Define        ctermfg=13                guifg=#ff00ff
hi Macro         ctermfg=13                guifg=#ff00ff
hi PreCondit     ctermfg=13                guifg=#ff00ff
hi Type          ctermfg=51                guifg=#00ffff  cterm=NONE gui=NONE
hi StorageClass  ctermfg=51                guifg=#00ffff
hi Structure     ctermfg=51                guifg=#00ffff
hi Typedef       ctermfg=51                guifg=#00ffff
hi Special       ctermfg=9                 guifg=#ff0000
hi SpecialChar   ctermfg=9                 guifg=#ff0000
hi Tag           ctermfg=9                 guifg=#ff0000
hi Delimiter     ctermfg=231               guifg=#ffffff
hi SpecialComment ctermfg=8                guifg=#808080  cterm=bold gui=bold
hi Debug         ctermfg=9                 guifg=#ff0000
hi Underlined    ctermfg=51                guifg=#00ffff  cterm=underline gui=underline
hi Ignore        ctermfg=18                guifg=#000080
hi Error         ctermfg=231  ctermbg=1    guifg=#ffffff guibg=#ff0000
hi Todo          ctermfg=16   ctermbg=226  guifg=#000000 guibg=#ffff00

" --- Semantic highlighting (vim-lsp + clangd) ---
" Ativado quando g:lsp_semantic_enabled = 1
hi LspSemanticType           ctermfg=231               guifg=#ffffff  cterm=bold gui=bold
hi LspSemanticParameter      ctermfg=117               guifg=#87d7ff
hi LspSemanticVariable       ctermfg=153               guifg=#afd7ff
hi LspSemanticFunction       ctermfg=226               guifg=#ffff00  cterm=bold gui=bold
hi LspSemanticMethod         ctermfg=226               guifg=#ffff00  cterm=bold gui=bold
hi LspSemanticKeyword        ctermfg=46                guifg=#00ff00  cterm=bold gui=bold
hi LspSemanticNamespace      ctermfg=51                guifg=#00ffff
hi LspSemanticClass          ctermfg=231               guifg=#ffffff  cterm=bold gui=bold
hi LspSemanticStruct         ctermfg=231               guifg=#ffffff  cterm=bold gui=bold
hi LspSemanticEnum           ctermfg=214               guifg=#ffaf00  cterm=bold gui=bold
hi LspSemanticEnumMember     ctermfg=214               guifg=#ffaf00
hi LspSemanticMacro          ctermfg=201               guifg=#ff00ff  cterm=bold gui=bold
hi LspSemanticProperty       ctermfg=153               guifg=#afd7ff
hi LspSemanticComment        ctermfg=244               guifg=#808080  cterm=italic gui=italic
hi LspSemanticString         ctermfg=40                guifg=#00d700
hi LspSemanticNumber         ctermfg=203               guifg=#ff5f5f  cterm=bold gui=bold
