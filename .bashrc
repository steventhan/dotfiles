DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DOTFILES/bash/.bashprompt
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Racket v6.7/bin/:/usr/local/smlnj/bin/"
alias vim='nvim -u ~/dotfiles/nvim/init.vim'
alias nvim='nvim -u ~/dotfiles/nvim/init.vim'
alias ..='cd ..'
alias g='git'
