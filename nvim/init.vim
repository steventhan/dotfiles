call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

autocmd vimenter * NERDTree
set clipboard=unnamed
syntax enable
colorscheme OceanicNext
set background=dark
set number
set timeoutlen=1000 ttimeoutlen=0
let g:airline_powerline_fonts = 1
let virtual_env_slice = {
      \'can_be_empty': 1,
      \'function_name': 'virtual_env',
      \'function_body': [
        \'function virtual_env {',
        \'  [ $VIRTUAL_ENV ] || return 1',
        \'  local env=$(basename $VIRTUAL_ENV) ',
        \'  env="($env)"',
        \'  printf "%s" "$1$env$2"',
        \'}']}
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
	\'d' : [ promptline#slices#python_virtualenv() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}
if (has("termguicolors"))
    set termguicolors
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

