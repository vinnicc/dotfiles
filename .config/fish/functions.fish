function install -d "Interactive package installer"
  if [ $argv[1] ]
    set choice $argv[1]
  else
    set choice (brew search | fzf --reverse --preview "brew info {}" --preview-window=right:75%)
  end
  if [ $choice ]
    brew install $choice
  end
end

function fpass -d "Find LastPass entry and copy the password"
  if not lpass status -q
    lpass login $EMAIL
  end
  if not lpass status -q
    exit
  end
  lpass ls | fzf | string replace -r -a '.+\[id: (\d+)\]' '$1' | read -l result; and lpass show -c --password "$result"
end

function top-commands
  history | awk '{a[$1]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head -n 20
end
