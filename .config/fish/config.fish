# Prioritize speed
set -x SHELL bash
set -U EDITOR vim

# Remove welcome message
set fish_greeting

function fish_prompt
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
    echo
    jobs
    set_color F80
    echo -n (date "+%m/%d/%y %I:%S %p") ''
    set_color F30
    echo -n (pwd) ''
    set_color F00
    echo '['$git_branch'] λ '
end

source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/functions.fish

# fzf
source $HOME/.config/fish/fzf.fish
fzf_key_bindings
set -gx FZF_DEFAULT_COMMAND "rg --files --no-ignore-vcs --hidden"

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
set -x PATH $PATH "/usr/local/sbin" # Some homebrew executables
set -x PATH $PATH "/usr/local/share/npm/bin" # Node executables
set -x PATH $PATH "$HOME/.cabal/bin" # Haskell cabal
set -x PATH $PATH "$HOME/.local/bin" # Haskell stack (and other things)
set -x PATH $PATH "$HOME/.cargo/bin" # Rust cargo
set -x PATH $PATH "$PWD/bin" # Local executables
set -x PATH $PATH "$PWD/assets/node_modules/.bin"
set -x PATH $PATH "$PWD/node_modules/.bin" 
