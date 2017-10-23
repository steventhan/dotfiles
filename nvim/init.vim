call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'


call plug#end()

autocmd vimenter * NERDTree
set clipboard=unnamed
syntax enable
colorscheme OceanicNext
set background=dark
set number
set tabstop=2
set shiftwidth=2
filetype plugin on
let g:airline_powerline_fonts = 1
if (has("termguicolors"))
    set termguicolors
endif
autocmd! BufWritePost * Neomake
au Filetype python setl et ts=4 sw=4
