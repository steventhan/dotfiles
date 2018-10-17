call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'jonathanfilip/vim-lucius'
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
Plug 'wlangstroth/vim-racket'
Plug 'sophacles/vim-processing'
Plug 'arcticicestudio/nord-vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

call plug#end()

language en_US
let g:ycm_autoclose_preview_window_after_completion=1
set guicursor=
set lazyredraw
let g:nord_comment_brightness = 15
let java_highlight_functions = 1
autocmd vimenter * NERDTree
set clipboard=unnamed
syntax enable
colorscheme nord
set number
set tabstop=2
set expandtab
set shiftwidth=2
filetype plugin on
filetype plugin indent on
let g:airline_powerline_fonts = 1
if (has("termguicolors"))
    set termguicolors
endif
autocmd! BufWritePost * Neomake
au Filetype python setl et ts=4 sw=4
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
