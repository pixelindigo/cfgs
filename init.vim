set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'mhartington/oceanic-next'

Plug 'vim-airline/vim-airline'

Plug 'posva/vim-vue'

Plug 'mileszs/ack.vim'
call plug#end()

let g:ackprg = 'ag --nogroup --nocolor --column'

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext
let g:airline_theme = 'oceanicnext'

syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set number
set laststatus=2
autocmd FileType vue syntax sync fromstart
autocmd BufNewFile,BufRead *.ksy set filetype=yaml

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


autocmd FileType make setlocal noexpandtab
autocmd FileType vue setlocal shiftwidth=2 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=4
