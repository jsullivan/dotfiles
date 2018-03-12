#!/usr/bin/env bash
# Thanks to @mattly and @amerine for their wonderful dotfiles

# Vim is installed
ok brew vim

# Make sure ctags is installed
ok brew ctags

# Confirm .vim/bundle exists
ok directory $HOME/.vim
ok directory $HOME/.vim/bundle

# Set destination to bundle directory
cd $HOME/.vim/bundle

# Basics
ok github mileszs/ack.vim
ok github jlanzarotta/bufexplorer
ok github tpope/vim-fugitive
ok github scrooloose/nerdcommenter
ok github tpope/vim-rails
ok github dsawardekar/ember.vim
ok github vim-ruby/vim-ruby
ok github ecomba/vim-ruby-refactoring
ok github tpope/vim-surround
ok github godlygeek/tabular
ok github ervandew/supertab
ok github ap/vim-css-color
ok github mzlogin/vim-markdown-toc
ok github junegunn/goyo.vim

# Syntax highlighting
ok github tpope/vim-git
ok github tpope/vim-haml
ok github othree/html5.vim
ok github elzr/vim-json
ok github kchmck/vim-coffee-script
ok github groenewege/vim-less
ok github mustache/vim-mustache-handlebars
ok github pangloss/vim-javascript
ok github mxw/vim-jsx

# Color schemes
ok github altercation/vim-colors-solarized
ok github vim-scripts/beauty256

# Snippets
ok github garbas/vim-snipmate
ok github marcweber/vim-addon-mw-utils # This is needed for vim-snipmate
ok github vim-scripts/tlib # This is needed for vim-snipmate
ok github honza/vim-snippets # Snipmate ships with no snippets. Hence this.

# Text objext selection
ok github kana/vim-textobj-user
ok github nelstrom/vim-textobj-rubyblock
