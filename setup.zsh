# Remove the needed symbolic links
echo "Removing symbolic links..."
rm ~/.tmux.conf
rm ~/.vim
rm ~/.vimrc
rm ~/.zshrc
rm ~/.oh-my-zsh/themes/travis.zsh-theme
rm ~/.gitconfig
rm ~/.gituser

echo "Create symbolic links..."
ln -s ~/.shell_settings/git/gitconfig ~/.gitconfig
ln -s ~/.shell_settings/git/gituser ~/.gituser
ln -s ~/.shell_settings/zsh/themes/travis.zsh-theme ~/.oh-my-zsh/themes/travis.zsh-theme
ln -s ~/.shell_settings/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.shell_settings/vim ~/.vim
ln -s ~/.shell_settings/vim/vimrc ~/.vimrc
ln -s ~/.shell_settings/zsh/zshrc ~/.zshrc
