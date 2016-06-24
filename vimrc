call pathogen#infect()

set encoding=utf-8

" enable syntax highlighting
syntax on

" enable file type detection
filetype plugin on

" enable mouse selection
set mouse=a

" line number
set number

set list listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮

set showbreak=↪

" enable the same appearance as line number column to gitgutter
highlight clear SignColumn


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
set directory=~/dotvim/tmp/

set path=./**


" vim-airline
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0

autocmd BufReadPost,BufNewFile *.test.js set filetype=jasmine.javascript syntax=jasmine
