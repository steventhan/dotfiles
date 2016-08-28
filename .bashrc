DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DOTFILES/bash/.bashprompt
alias vim='nvim -u ~/dotfiles/nvim/init.vim'
alias nvim='nvim -u ~/dotfiles/nvim/init.vim'
alias ..='cd ..'
alias g='git'
