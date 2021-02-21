#!bin/sh

echo "Setting up your Mac..."

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# Removes .vim from $HOME (if it exists) and symlinks the .vimhrc file from the dotfiles
rm -rf $HOME/.vimrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc

# Removes vscode settings.json and keybindings.json from $HOME (if it exists) and symlinks the settings.json and keybindings.json files from the dotfiles
rm -rf $HOME/Library/Application\ Support/Code/User/settings.json
rm -rf $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -s $HOME/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -s $HOME/dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

source vscode/extensions.sh

echo "Set up complete"
