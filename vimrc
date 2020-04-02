call pathogen#infect()

set encoding=utf-8

" enable syntax highlighting
syntax on

" Remove this if is not color/turtles.vim
set t_Co=256


colorscheme turtles
" colorscheme jellygrass
" colorscheme dracula
" colorscheme VisualStudioDark

" enable file type detection
filetype plugin on

" enable mouse selection
set mouse=a

if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" line number
set number

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set list listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮

set showbreak=↪

" enable the same appearance as line number column to gitgutter
"highlight clear SignColumn


" Tabs, spaces, wrapping {{{
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
" set noexpandtab
" }}}

" keep a backup file
set nobackup

set swapfile

" where to put swap files
set backupdir=~/dotvim/tmp/
set directory=~/dotvim/tmp/


" Set path to current dir
set path+=$PWD/**


" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1


let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:mustache_abbreviations = 1

autocmd BufReadPost,BufNewFile *.test.js set filetype=jasmine.javascript syntax=jasmine

" highlight ColorColumn ctermbg=0*
"highlight ColorColumn ctermbg=8
"set colorcolumn=81



" ===== NERDTree ======

" open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Map a specific key or shortcut to open NERDTree
map <C-m> :NERDTreeMirror<CR>

" Map a specific key or shortcut to open ConqueTermSplit
map <C-b> :ConqueTermSplit bash<CR>

" allow quit via single keypress (Q)
map Q :q!<CR>


" =========== Go to file =============================
nnoremap <F8> :vertical wincmd f<CR>

set splitbelow
set splitright



" Exibe nome da função
let g:ctags_statusline=1
" Inicializar script automaticamente
let generate_tags=1
" Exibe os resultados em uma janela vertical
let Tlist_Use_Horiz_Window=0
" Atalho para exibição da Taglist
map TT :TlistToggle<CR>
" Configurações para exibição da Taglist
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1



" =============== TABS ====================
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


set visualbell
set t_vb=
