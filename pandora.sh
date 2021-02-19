#!bin/sh

echo "Setting up your Mac..."

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# Removes .vim from $HOME (if it exists) and symlinks the .vimhrc file from the dotfiles
rm -rf $HOME/.vimrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc

echo "Set up complete"
