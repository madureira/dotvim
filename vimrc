call pathogen#infect()

set encoding=utf-8

" enable syntax highlighting
syntax on

" enable file type detection
filetype plugin on

" enable file type detection
filetype indent on

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
 set noexpandtab
" }}}
