rm ~/.zshrc 
rm ~/.vimrc
rm ~/.vscode_vimrc
rm ~/.ideavimrc
rm -rf ~/.config/nvim

ln -s /home/dag/dotfiles/zshrc ~/.zshrc
ln -s /home/dag/dotfiles/vimrc ~/.vimrc
ln -s /home/dag/dotfiles/vscode_vimrc  ~/.vscode_vimrc
ln -s /home/dag/dotfiles/ideavimrc ~/.ideavimrc
ln -s /home/dag/dotfiles/nvim ~/.config/nvim
ln -s /home/dag/dotfiles/starship.toml ~/.config/starship.toml
