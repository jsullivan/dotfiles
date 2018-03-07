# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# RVM Requires
setopt nullglob

# Aliases
alias nbe='noglob bundle exec'
alias be='bundle exec'
alias sc_beta='ssh appuser@beta.surecritic.com'
alias sc_sandbox='ssh deploy@sandbox.surecritic.com'
alias sc_dev='ssh ubuntu@dev.surecritic.com' # This works, just make sure you have the right key in your agent.
alias core_sandbox='ssh jsullivandigs@108.244.164.253'
alias lha='ls -lha'
alias t='todo.rb'
alias git='nocorrect hub'
alias ic='ion-client'
alias h='heroku'

# Tmux script aliases
alias sc='~/code/dotfiles/tmux_scripts/sc'

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
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/mysql@5.6/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$HOME/bin:$PATH:$HOME/code/bork/bin:/usr/local/opt/go/libexec/bin:/usr/local/opt/qt@5.5/bin

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

## Set nvm dir
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
