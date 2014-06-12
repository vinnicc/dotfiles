###########
# GENERAL #
###########
source ~/.aliases
source ~/.functions

shopt -s nocaseglob # Case-insensitive globbing
shopt -s histappend # Append instead of overwriting history
shopt -s cdspell # Autocorrect typos in path names

export EDITOR="vim"
export HISTSIZE=32768 # History (allow 32³ entries; default is 500)
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
export LANG="en_US"
export LC_ALL="en_US.UTF-8"
export LESS_TERMCAP_md="$COLOR_YELLOW"
export MANPAGER="less -X"

export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export COLOR_BLACK="\[\e[1;30m\]"
export COLOR_RED="\[\e[1;31m\]"
export COLOR_GREEN="\[\e[0;32m\]"
export COLOR_YELLOW="\[\e[1;33m\]"
export COLOR_BLUE="\[\e[0;34m\]"
export COLOR_MAGENTA="\[\e[1;35m\]"
export COLOR_CYAN="\[\e[1;36m\]"
export COLOR_WHITE="\[\e[37m\]"
export COLOR_RESET="\[\e[0m\]"

##########
# PROMPT #
##########
export PS1=${COLOR_BLUE}"\u "${COLOR_BLUE}"\w $ "${COLOR_RESET}
export PS2=${COLOR_GREEN}"→ "${COLOR_RESET}

########
# MISC #
########
# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# Load RVM function

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
