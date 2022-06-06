call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

set background=dark
colorscheme gruvbox

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

nnoremap <C-n> :NERDTreeToggle<CR>
