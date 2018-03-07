# Ensure all dotfiles are symlinked
# Run this with bork from your home dir like so:
# `bork satisfy code/dotfiles/install/dotfiles.sh`
ok symlink .gitconfig $HOME/code/dotfiles/configs/.gitconfig
ok symlink .gitignore $HOME/code/dotfiles/configs/.gitignore
ok symlink .tmux.conf $HOME/code/dotfiles/configs/.tmux.conf
ok symlink .vim $HOME/code/dotfiles/configs/.vim
ok symlink .vimrc $HOME/code/dotfiles/configs/.vimrc
ok symlink .zprofile $HOME/code/dotfiles/configs/.zprofile
ok symlink .zshrc $HOME/code/dotfiles/configs/.zshrc
