call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'luochen1990/rainbow'
call plug#end()

set t_Co=256
set termguicolors

set background=dark
colorscheme nord
let g:rainbow_active = 1

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

nnoremap <C-n> :NERDTreeToggle<CR>

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set backspace=indent,eol,start
