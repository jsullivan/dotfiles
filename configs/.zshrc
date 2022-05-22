# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# ZSH_THEME="robbyrussell"
ZSH_THEME="simple"

# RVM Requires
# setopt nullglob

# Aliases
alias nbe='noglob bundle exec'
alias be='bundle exec'
alias lha='ls -lha'
alias t='todo.rb'
alias git='nocorrect hub'
alias ic='ion-client'
alias h='heroku'
alias tf='terraform'

# Tmux script aliases
alias sc='~/code/dotfiles/tmux_scripts/sc'

# Set tmux in 256 color mode (make vim look better)
alias tmux='TERM=xterm-256color tmux'

# mysql binaries
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

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

# SET ENV VARS
# =-=-=-=-=-=
#

export EDITOR=/usr/local/bin/vim

# Set gopath
export GOPATH=$HOME/go
export GOPRIVATE=github.com/heroku
export GOROOT=/usr/local/opt/go@1.17/libexec
export PATH=$PATH:$GOROOT/bin

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/mysql@5.6/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$HOME/bin:$PATH:$HOME/code/bork/bin:$GOPATH/bin:$GOROOT/bin:/usr/local/kubebuilder/bin


export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export PATH="/usr/local/opt/go@1.17/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# rbenv
# use Homebrew's directories instead of ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv
# enable shims and autocompletion for .rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


## Load ion-client env vars
[[ -r ~/.ion_client_config ]] && . ~/.ion_client_config

## Ion client clouds
cloud() {
  eval "$(ion-client shell)"
  cloud "$@"
}

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  #export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
