# Ensure all dotfiles are symlinked
# Run this with bork from your home dir like so:
# `bork satisfy code/dotfiles/install/dotfiles.sh`
for file in $HOME/dotfiles/configs/.[!.]*
do
  ok symlink "$(basename $file)" $file
done
