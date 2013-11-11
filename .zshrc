# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xiong-chiamiov"

# RVM Requires
setopt nullglob

# Aliases
alias nbe='noglob bundle exec'
alias be='bundle exec'
alias sc_beta='ssh appuser@beta.surecritic.com'
alias sc_sandbox='ssh deploy@sandbox.surecritic.com'
alias lha='ls -lha'
alias t='todo.rb'

# Tmux script aliases
alias horizon='~/dotfiles/tmux_scripts/horizon'
alias sc='~/dotfiles/tmux_scripts/sc'
alias roa='~/dotfiles/tmux_scripts/roa'

# Set tmux in 256 color mode (make vim look better)
alias tmux='TERM=xterm-256color tmux'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git git-extras ruby web-search)


# Set xcode, homebrew & mysql paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Applications/Postgres.app:$HOME/bin:$PATH
# Export CC=/usr/bin/gcc-4.2
# I'm commenting out this compiler trying to clean up my zshrc. if shit goes wrong, uncomment this.
#export CC=/usr/llvm-gcc-4.2/bin/llvm-gcc-4.2

#cleaning up my path by taking some things out and putting them here. if stuff breaks. check here first.
#/Contents/MacOS/bin:/Developer/usr/bin:

#Okay, this is fucking weird. I have to uncomment this line for MyDBT, but comment it for SureCritic.
# To get psql to work
#export DYLD_FALLBACK_LIBRARY_PATH=/Applications/Postgres.app/Contents/MacOS/lib:$DYLD_LIBRARY_PATH

source $ZSH/oh-my-zsh.sh

# rbenv
# use Homebrew's directories instead of ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv
# enable shims and autocompletion for .rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
