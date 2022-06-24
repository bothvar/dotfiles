call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'luochen1990/rainbow'
call plug#end()

set t_Co=256
set termguicolors

set background=dark
colorscheme nord

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <C-n> :NERDTreeToggle<CR>
let g:rainbow_active = 1
