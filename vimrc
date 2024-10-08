call pathogen#infect()

set encoding=UTF-8

hi clear

" enable syntax highlighting
syntax on

" enable file type detection
filetype plugin indent on

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" Remove this if is not color/turtles.vim
"set t_Co=256
"set term=xterm-256color

"let g:jellybeans_overrides = {
"\    'background': { 'guibg': '080808' },
"\}

"colorscheme turtles
"colorscheme jellygrass
colorscheme jellybeans
"colorscheme VisualStudioDark

"set background=dark
"hi Normal ctermbg=232 guifg=#151515
"hi LineNr ctermbg=232 guifg=#151515

" enable mouse selection
set mouse=a

" Allow mouse drag
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" line number
set number

" show a visual line under the cursor's current line
set cursorline
" set cursorcolumn

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set list listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮

set showbreak=↪

" hide hidden chars
set nolist

" enable gitgutter
let g:gitgutter_enabled = 0
" enable the same appearance as line number column to gitgutter
"highlight clear SignColumn


" Tabs, spaces, wrapping
set expandtab
" set tabstop=2
" set softtabstop=2
set autoindent
set smartindent
set shiftwidth=4
" set noexpandtab

" keep a backup file
set nobackup

set swapfile

" where to put swap files
set backupdir=~/dotvim/tmp/
set directory=~/dotvim/tmp/

" Set path to current dir
set path+=$PWD/**

" Reload current buffer automatically
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
  \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
" Airline Tab navigation.
nnoremap <S-TAB> :bprevious<CR>
nnoremap <TAB>   :bnext<CR>

" Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

" highlight ColorColumn ctermbg=0*
" highlight ColorColumn ctermbg=8
" set colorcolumn=81

" Paste copied text multiple times
xnoremap p pgvy


" Make cursor blink(pulse)
if &term == 'win32'
  let &t_ti.=" \e[1 q"
  let &t_SI.=" \e[5 q-- INSERT --"
  let &t_EI.=" \e[1 q"
  let &t_te.=" \e[0 q"
else
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"
endif

" ===== NERDTree ======
"
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

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
" map q :q!<CR>

noremap q :enew<bar>bd #<bar>:q!<CR>

" =========== Go to file =============================
nnoremap <F8> :vertical wincmd f<CR>

set splitbelow
set splitright

" Show the result in a vertical window
let Tlist_Use_Horiz_Window=0
" Shortcut to open the Taglist
map TT :TlistToggle<CR>
" Taglist display settings
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1

let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

nnoremap <silent> <c-w>] :vert winc ]<cr>
nnoremap gf :vertical wincmd f<CR>


" =============== TABS ====================
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Disable terminal bell song
set visualbell
set t_vb=

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Rust
let g:rustfmt_autosave = 1

" set the backspace to delete normally
set backspace=indent,eol,start
