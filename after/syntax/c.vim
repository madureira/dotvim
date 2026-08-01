" C syntax overrides for the vga colorscheme (Turbo C / Borland C aesthetic)
" Sourced after syntax/c.vim so these always win over hi def link.
if !exists('g:colors_name') || g:colors_name !=# 'vga'
  finish
endif

" Custom rule: captura TODAS as chamadas de função (word seguido de '(')
" Keywords (if/for/while) têm prioridade sobre match por serem syn keyword,
" então não serão afetados por esta regra.
syn match vgaFunctionCall /\<\h\w*\ze\s*(/ display
hi vgaFunctionCall ctermfg=226 guifg=#ffff00 cterm=bold gui=bold

" Identifiers / variáveis: cinza azulado — claramente distinto de branco (tipos) e amarelo (funções)
hi Identifier    ctermfg=153               guifg=#afd7ff

" Storage class: const, static, inline, extern, volatile
" — laranja, só aparece em declarações
hi cStorageClass ctermfg=214               guifg=#ffaf00                 cterm=bold gui=bold

" Types: int, char, void, float, uint32, bool, struct, enum
" — branco bold puro: máximo contraste com fundo azul e com variáveis (azul claro)
hi cType         ctermfg=231               guifg=#ffffff                 cterm=bold gui=bold
hi cStructure    ctermfg=231               guifg=#ffffff                 cterm=bold gui=bold

" Keywords: if, else, for, while, do, switch, case, break, return, goto
" — verde brilhante bold, claramente diferente de tudo
hi cStatement    ctermfg=46                guifg=#00ff00                 cterm=bold gui=bold
hi cConditional  ctermfg=46                guifg=#00ff00                 cterm=bold gui=bold
hi cRepeat       ctermfg=46                guifg=#00ff00                 cterm=bold gui=bold
hi cLabel        ctermfg=46                guifg=#00ff00                 cterm=bold gui=bold

" Preprocessor: #include, #define, #ifdef
" — magenta bold
hi cPreProc      ctermfg=201               guifg=#ff00ff                 cterm=bold gui=bold
hi cInclude      ctermfg=201               guifg=#ff00ff                 cterm=bold gui=bold
hi cDefine       ctermfg=201               guifg=#ff00ff                 cterm=bold gui=bold
hi cPreCondit    ctermfg=201               guifg=#ff00ff                 cterm=bold gui=bold

" Strings: verde médio — reservado exclusivamente para literais texto
hi cString       ctermfg=40                guifg=#00d700
hi cCharacter    ctermfg=40                guifg=#00d700
hi cCppString    ctermfg=40                guifg=#00d700

" Escape sequences \n \t %d dentro de strings
hi cSpecial      ctermfg=214               guifg=#ffaf00

" Comments: cinza médio itálico
hi cComment      ctermfg=244               guifg=#808080                 cterm=italic gui=italic
hi cCommentL     ctermfg=244               guifg=#808080                 cterm=italic gui=italic

" Numbers: vermelho claro bold
hi cNumber       ctermfg=203               guifg=#ff5f5f                 cterm=bold gui=bold
hi cFloat        ctermfg=203               guifg=#ff5f5f                 cterm=bold gui=bold
hi cOctal        ctermfg=203               guifg=#ff5f5f                 cterm=bold gui=bold

" Constants: NULL, true, false
" — amarelo underline: distingue de funções (sem underline)
hi cConstant     ctermfg=226               guifg=#ffff00                 cterm=underline gui=underline

" Operators: cinza — presentes mas não dominantes
hi cOperator     ctermfg=248               guifg=#a8a8a8

" Errors
hi cError        ctermfg=231  ctermbg=1    guifg=#ffffff guibg=#ff0000   cterm=bold gui=bold

" TODO/FIXME
hi cTodo         ctermfg=16   ctermbg=226  guifg=#000000 guibg=#ffff00   cterm=bold gui=bold
