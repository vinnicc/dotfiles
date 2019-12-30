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
source $HOME/.config/fish/fzf.fish
bind \cr fzf-history-widget # mimic bash incremental search
