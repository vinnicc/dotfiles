# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

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
plugins=(git zsh-navigation-tools docker docker-compose)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions

# History config
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoreboth
export HISTCONTROL=erasedups
export HISTIGNORE='&:ls:ls -la:pwd:history:exit:make*:* --help:a:asdf:be:bg:brew:cd:clear:df:fg:gaa:gci:git:gl:gs:reload:rm:sudo:t:v:vim:w:which'

unsetopt share_history # Prevent history sharing

export PGHOST=localhost
export EDITOR="vim"

export PATH=/usr/local/share/npm/bin:$PATH # Node executables
export PATH="./bin:$PATH" # Local executables
export PATH="$(brew --prefix qt@5.5)/bin:$PATH" # Fix capybara-webkit (https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)
export PATH="$HOME/.cargo/bin:$PATH" # Rust cargo
export PATH="$HOME/.cabal/bin:$PATH" # Haskell cabal
export PATH="$HOME/.local/bin:$PATH" # Haskell stack (and other things)

# Modify prompt style
export PROMPT='$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}%B λ%b '

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Opt out of anonymouse analytics
export HOMEBREW_NO_ANALYTICS=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Export Docker environment variables
eval `boot2docker shellinit 2>/dev/null`

# asdf version manager
export ASDF_DATA_DIR=`brew --prefix asdf`
source $ASDF_DATA_DIR/asdf.sh

# Fix neovim locale warning
export LC_ALL=en_US.UTF-8

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=~/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

function precmd() {
  jobs
}
