#!/usr/bin/env bash
# Thanks to @mattly and @amerine for their wonderful dotfiles

# Vim is installed
ok brew vim

# Make sure ctags is installed
ok brew ctags

# Confirm .vim/bundle exists
ok directories $HOME/.vim/bundle

# Set destination to bundle directory
destination push $HOME/.vim/bundle

# Basics
ok github mileszs/ack.vim
ok github jlanzarotta/bufexplorer
ok github tpope/vim-fugitive
ok github scrooloose/nerdcommenter
ok github tpope/vim-rails
ok github ecomba/vim-ruby-refactoring
ok github mtth/scratch.vim
ok github tpope/vim-surround
ok github godlygeek/tabular
ok github skammer/vim-css-color

# Syntax highlighting
ok github tpope/vim-git
ok github tpope/vim-haml
ok github othree/html5.vim
ok github elzr/vim-json
ok github tpope/vim-markdown
ok github depuracao/vim-rdoc
ok github kchmck/vim-coffee-script
ok github groenewege/vim-less

# Color schemes
ok github altercation/vim-colors-solarized
ok github reedes/vim-colors-pencil

# Snippets
ok github garbas/vim-snipmate
ok github marcweber/vim-addon-mw-utils # This is needed for vim-snipmate
ok github honza/vim-snippets

# Text objext selection
ok github kana/vim-textobj-user
ok github nelstrom/vim-textobj-rubyblock
