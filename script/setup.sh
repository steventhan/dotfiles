echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing neovim"
brew install neovim

echo "Installing vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Setting up .zprofile"
touch ~/.zprofile && echo "source ~/dotfiles/.zshrc" > ~/.zprofile

echo "Setting up .gitconfig"
cp ~/dotfiles/.gitconfig ~/


source ~/.zprofile
echo "Done"
