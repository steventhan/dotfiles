#! /bin/bash

echo "Install neovim"
brew install neovim/neovim/neovim
echo "Check for brew update"
brew update
echo "Install vim-plug"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

bash_profile=~/.bash_profile

if [ ! -e "$bash_profile" ] ; then
    touch "$bash_profile"
fi

if [ ! -w "$bash_profile" ] ; then
    echo cannot write to $bash_profile
    exit 1
fi


bashrc=~/.bashrc

if [ ! -e "$bashrc" ] ; then
    touch "$bashrc"
fi

if [ ! -w "$bashrc" ] ; then
    echo cannot write to $bashrc
    exit 1
fi


tmuxconf=~/.tmux.conf

if [ ! -e "$tmuxconf" ] ; then
    touch "$tmuxconf"
fi

if [ ! -w "$tmuxconf" ] ; then
    echo cannot write to $tmuxconf
    exit 1
fi
