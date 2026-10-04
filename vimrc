call pathogen#infect()

" ===== Editor =====

syntax on
filetype plugin indent on

set mouse=a
set number
set showmatch

set expandtab
set autoindent
set smartindent
set shiftwidth=4

set backspace=indent,eol,start

set splitbelow
set splitright

set nobackup
set swapfile
set backupdir=~/dotvim/tmp/
set directory=~/dotvim/tmp/

set autoread

" Keep a visual line under the cursor.
" set cursorline

" Cursor
set guicursor=a:block-blinkon500-blinkoff500
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[2 q"

" Disable terminal bell
set visualbell
set t_vb=

" Colors
"colorscheme VisualStudioDark
"colorscheme turtles
"colorscheme jellygrass
"colorscheme jellybeans
"colorscheme vga
colorscheme codedark

highlight clear ColorColumn

"hi Normal ctermbg=232 guifg=#151515
"hi LineNr ctermbg=232 guifg=#151515


" ===== Mouse =====

if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
endif


" ===== Visual characters =====

set list listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮
set nolist
set showbreak=↪


" ===== Navigation =====

nnoremap <F8> :vertical wincmd f<CR>
nnoremap gf :vertical wincmd f<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nnoremap <silent> <C-w>] :vert winc ]<CR>

" Paste copied text multiple times
xnoremap p pgvy


" ===== Buffers / tabs =====

nnoremap <S-TAB> :bprevious<CR>
nnoremap <TAB> :bnext<CR>

" Allow quitting the current buffer with q
noremap q :enew<bar>bd #<bar>:q!<CR>


" ===== Search path =====

set path+=$PWD/**


" ===== Auto reload =====

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
  \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None


" ===== Airline =====

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1


" ===== NERDTree =====

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *
  \ if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeMirror<CR>


" ===== JavaScript / TypeScript =====

let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']


" ===== EditorConfig =====

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


" ===== Rust =====

let g:rustfmt_autosave = 1


" ===== LSP (vim-lsp) =====

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes

  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gr <plug>(lsp-references)
  nmap <buffer> gi <plug>(lsp-implementation)
  nmap <buffer> K  <plug>(lsp-hover)
  nmap <buffer> <leader>rn <plug>(lsp-rename)
  nmap <buffer> [g <plug>(lsp-previous-diagnostic)
  nmap <buffer> ]g <plug>(lsp-next-diagnostic)
endfunction

augroup lsp_install
  autocmd!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_semantic_enabled = 1

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_signs_enabled = 0


" ===== Asyncomplete =====

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1

autocmd CompleteDone *
  \ if pumvisible() == 0 | pclose | endif

