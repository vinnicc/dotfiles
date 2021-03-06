# Handle the fact that this file will be used with multiple OSs
set platform (uname)
if [ $platform = 'Linux' ]
    alias a='ls -larth --color'
else if [ $platform = 'Darwin' ]
    alias a='ls -larthG'
end

alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias al='alias | cut -f 2- -d " " | fzf'
alias b='bundle'
alias bake='bundle exec rake'
alias be='bundle exec'
alias bi='bundle install --verbose'
alias bo='bundle open'
alias bootstrap='~/bootstrap'
alias brci='brew cask install'
alias brcu='brew cask uninstall'
alias bri='brew install'
alias bru='brew uninstall'
alias bu='bundle update'
alias cb="cargo build"
alias cc="cargo check"
alias cellar="cd (brew --cellar)"
alias cr="cargo run"
# alias ctags=(brew --prefix)"/bin/ctags"
alias doi='docker images'
alias dops='docker ps'
alias e='emacs'
alias et='emptytrash; find ~/Work -name "*.log" -type f -print0 | xargs -0 rm'
alias f='fzf'
alias flush='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias g='git'
alias gL='git log --graph --all --decorate --stat --date=iso'
alias gaa='git add --all'
alias gb='git branches --all'
alias gca='git commit --all'
alias gcaa='git commit --all --amend -C HEAD'
alias gci='git commit -m'
alias gcl='git clone'
alias gcla='git clone --recursive'
alias gco='git checkout'
alias gcom='git checkout master'
alias gd='git diff --patch-with-stat'
alias gdc='git diff --patch-with-stat --cached'
alias getnewrelic='curl https://gist.github.com/rwdaigle/2253296/raw/newrelic.yml > config/newrelic.yml'
alias gfa='git fetch --all'
alias gl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gp='git pull'
alias gphm='git push heroku master'
alias gpod='git push origin develop'
alias gpom='git push origin master'
alias gpr='git pull --rebase'
alias gprod='git pull --rebase origin develop'
alias gprom='git pull --rebase origin master'
alias gprud='git pull --rebase upstream develop'
alias gprum='git pull --rebase upstream master'
alias gpud='git push origin develop'
alias gpullall='git pull; git submodule foreach git pull origin master'
alias gpum='git push origin master'
alias grc='git rebase --continue'
alias grh='git reset --hard'
alias grhh='git reset --hard HEAD'
alias gri='git rebase -i'
alias griom='git rebase -i origin/master'
alias grv='git remote -v'
alias gs='git status'
alias gsa='git stash apply'
alias gsu='git stash -u'
alias gt='git tag -l'
alias gu='git add --all; git commit -m "Updates (skip commit message)"'
alias h='heroku'
alias hao='heroku addons:open'
alias hc='heroku run console'
alias hf='top-commands'
alias hg='heroku config'
alias hr='heroku run'
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias ios='open -a /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias j='jrnl'
alias je='jrnl --edit'
alias jl='jrnl -n 100'
alias k9='kill -9'
alias killruby='killall -9 ruby'
alias l='ls -l $colorflag'
alias la='ls -la $colorflag'
alias lg=lazygit
alias localip='ipconfig getifaddr en1'
alias lp='fpass'
alias ls='command ls $colorflag'
alias lsd='ls -l $colorflag | grep "^d"'
alias n='vim --cmd "cd ~/Google\ Drive/Personal/Notes/" ~/Google\ Drive/Personal/Notes/TODO.md'
alias notes='cd ~/Google\ Drive/Personal/Notes/'
alias o='open'
alias oo='open .'
alias p='ping 8.8.8.8'
alias pc='production-console'
alias pg='production-config'
alias pl='production-tail'
alias plistbuddy='/usr/libexec/PlistBuddy'
alias pnr='production-newrelic'
alias psgrep='ps aux | grep'
alias r='ranger'
alias rc='bundle exec rails console'
alias rdo='ranger ~/Downloads'
alias rdr='ranger ~/Google\ Drive'
alias rds='rake db:setup'
alias reload='source ~/.config/fish/config.fish'
alias retag='ctags -R --exclude=.svn --exclude=.git --exclude=log *'
alias rgm='rails generate migration '
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias rr='rake routes'
alias rs='bundle exec rspec spec'
alias rsp='rails server -p'
alias sc='staging-console'
alias sg='staging-config'
alias sl='staging-tail'
alias snr='staging-newrelic'
alias ss='spring stop'
alias staging='git push staging master'
alias startpostgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias startspotlight='sudo mdutil -a -i off'
alias stoppostgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'
alias stopspotlight='sudo mdutil -a -i on'
alias t='tmux'
alias tma='tmux attach'
alias torrents='mkdir -p ~/Downloads/Torrents; cd ~/Downloads/Torrents'
alias ts='tmuxinator start'
alias tsp='killall ruby; killall tmux'
alias tst='tmuxinator stop .'
alias u='cd ..'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; brew cask cleanup; npm update npm -g; npm update -g; upgrade_oh_my_zsh; ~/.fzf/install'
alias v='nvim'
alias va='v ~/.config/fish/aliases.fish'
alias val='v ~/.config/alacritty/alacritty.yml'
alias vb='v ~/bootstrap'
alias vd='cd (find ~/Work/* -maxdepth 0 -type d | fzf )'
alias vD='v (ag ~/.docs -g "" | fzf)'
alias ve='v ~/.emacs.d/init.el'
alias vf='v ~/.functions'
alias vg='v ~/.gitignore'
alias vh='sudo vim /etc/hosts'
alias vim='nvim'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias vo='v ~/.osx'
alias vr='v ~/.config/ranger/rc.conf'
alias vs='v ~/.skhdrc'
alias vt='v ~/.tmux.conf'
alias vv='v ~/.vimrc'
alias vw='v ~/.tmuxinator'
alias vx='v ~/.xvimrc'
alias vy='v ~/.yabairc'
alias vz='v ~/.config/fish/config.fish'
alias w='cd ~/Work'
alias whois='whois -h whois-servers.net'
alias wjoin='networksetup -setairportnetwork en0'
alias wlist='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport scan'
alias wof='networksetup -setairportpower en0 off; echo "Wi-Fi turned off."'
alias won='networksetup -setairportpower en0 on; echo "Wi-Fi turned on."'
alias x='exit'
alias xc='iex -S mix'
alias xmdg='mix deps.get'
alias xmegm='mix ecto.gen.migration'
alias xmem='env MIX_ENV=dev mix ecto.migrate && env MIX_ENV=test mix ecto.migrate'
alias xmer='env MIX_ENV=dev mix ecto.rollback && env MIX_ENV=test mix ecto.rollback'
alias xmpr='mix phx.routes'
alias xmps='iex -S mix phx.server'
alias xmt='mix test'
alias xmtw='mix test.watch'
alias yt='youtube-dl --no-part --title --auto-number --retries 9999 --restrict-filenames --console-title --continue --ignore-errors'
alias yta='yt --download-archive'

# Rails development
alias dtmigrate='bundle exec rake db:migrate RAILS_ENV=development && bundle exec rake db:migrate RAILS_ENV=test'
alias dtrollback='bundle exec rake db:rollback RAILS_ENV=development && bundle exec rake db:rollback RAILS_ENV=test'
alias dtredo='bundle exec rake db:migrate:redo RAILS_ENV=development && bundle exec rake db:migrate:redo RAILS_ENV=test'
alias dtm='dtmigrate'
alias dtro='dtrollback'
alias dtre='dtredo'

# Heroku staging
alias staging-console='heroku run console --remote staging'
alias staging-tail='heroku logs --tail --remote staging'
alias staging-db='heroku pg:psql --remote staging'
alias staging-config='heroku config --remote staging'
alias staging-newrelic='heroku addons:open newrelic --remote staging'

# Heroku production
alias production-console='heroku run console --remote production'
alias production-tail='heroku logs --tail --remote production'
alias production-db='heroku pg:psql --remote production'
alias production-config='heroku config --remote production'
alias production-newrelic='heroku addons:open newrelic --remote production'

# Heroku databases
alias db-migrate-qa='heroku run rake db:migrate --remote qa && heroku restart --remote qa'
alias db-migrate-staging='heroku run rake db:migrate --remote staging && heroku restart --remote staging'
alias db-migrate-production='heroku run rake db:migrate --remote production && heroku restart --remote production'
alias db-pull-staging='curl -o latest.dump `heroku pg:backups public-url --remote staging`'
alias db-pull-production='curl -o latest.dump `heroku pg:backups public-url --remote production`'
alias db-copy-production-to-staging='heroku pg:copy `basename $PWD`-production::DATABASE DATABASE --remote staging --confirm `basename $PWD`-staging'
alias db-backup-staging='heroku pg:backups capture --remote staging'
alias db-backup-production='heroku pg:backups capture --remote production'
alias db-schedule-staging='heroku pg:backups schedule DATABASE_URL --remote staging'
alias db-schedule-production='heroku pg:backups schedule DATABASE_URL --remote production'
alias db-info-staging='heroku pg:backups --remote production'
alias db-info-production='heroku pg:backups --e production'
alias db-url-staging='heroku pg:backups public-url --remote staging'
alias db-url-production='heroku pg:backups public-url --remote production'

# Deployments
alias deploy-to-both='echo "-> rs && gpom && staging && git push production master"; rs && gpom && staging && git push production master'

# Detect which `ls` flavor is in use
# if ls --color > /dev/null 2>&1; then # GNU `ls`
#     colorflag='--color'
# else # OS X `ls`
#     colorflag='-G'
# end

for method in GET HEAD POST PUT DELETE TRACE OPTIONS
    alias "$method"="lwp-request -m '$method'"
end

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd='hexdump -C'

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum='md5'

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# File size
# if stat -c '' . > /dev/null 2>&1; then
#     # GNU `stat`
#     alias fs="stat -c \"%s bytes\""
# else
#     # OS X `stat`
#     alias fs="stat -f \"%z bytes\""
# end

# alias emptytrash='sudo rm -rfv ~/.Trash;
#                   sudo rm -rfv ~/Movies/*;
#                   sudo rm -rfv ~/Music/*;
#                   sudo rm -rfv ~/Public/*;
#                   sudo rm -rfv /private/var/log/asl/*.asl;
#                   sudo rm -rfv /Volumes/*/.Trashes';
#                   sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'

# Show/hide hidden files in Finder
alias show='defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'
