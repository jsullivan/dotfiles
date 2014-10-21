ok directory $HOME/code/
destination $HOME/code/
ok github jsullivan/dotfiles

destination $HOME
for config in $HOME/code/dotfiles/configs/*; do
  ok symlink "$HOME/.$(basename $config)" $config
done
