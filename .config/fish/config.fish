set -U EDITOR vim

set fish_greeting

function fish_prompt
    echo
    jobs
    set_color F50
    echo -n (date "+%m/%d/%y %H:%S") ''
    set_color F30
    echo -n (pwd) ''
    set_color F00
    echo 'λ '
end

source $HOME/.config/fish/aliases.fish

# fzf
source $HOME/.config/fish/fzf.fish
bind \cr fzf-history-widget # mimic bash incremental search

# asdf version manager
set -x ASDF_DATA_DIR (brew --prefix asdf)
source $ASDF_DATA_DIR"/asdf.fish"

# Link Homebrew casks in "/Applications" rather than "~/Applications"
set -x HOMEBREW_CASK_OPTS "--appdir=/Applications"

# Opt out of anonymouse analytics
set -x HOMEBREW_NO_ANALYTICS 1

# Fix neovim locale warning
set -x LC_ALL en_US.UTF-8

# Append path
set -x PATH $PATH "./bin" # Local executables
set -x PATH $PATH "/usr/local/share/npm/bin" # Node executables
set -x PATH $PATH (brew --prefix qt@5.5)"/bin" # Fix capybara-webkit (https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)
set -x PATH $PATH "$HOME/.cargo/bin" # Rust cargo
set -x PATH $PATH "$HOME/.cabal/bin" # Haskell cabal
set -x PATH $PATH "$HOME/.local/bin" # Haskell stack (and other things)
set -x PATH $PATH "$PWD/node_modules/.bin"
set -x PATH $PATH "$PWD/assets/node_modules/.bin"
