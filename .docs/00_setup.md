# Setup

Putting this here to just to help me set up new hardware. This guide could get
outdated pretty quick though.

```sh
$ git clone https://github.com/vinnicc/dotfiles.git ~
```

Get Homebrew:

```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Run:

```sh
$ ~/.osx && bootstrap && update
```

Set up Vim:

```sh
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh && \
vim +NeoBundleInstall +qall
```

And probably these too:

```sh
$ gem install tmuxinator
$ heroku plugins:install git://github.com/ddollar/heroku-accounts.git
```

Then:

* Set tmuxinator projects, remember to get layout info using `tmux list-windows`
* Review `~/.aliases`

## Finder

* Set sidebar favorites

## iTerm2

* General > Window > Native full screen windows > Uncheck
* General > Load preference from a custom folder or URL > Set path to Google Drive
* General > Save changes to folder when iTerm2 quits > Check

## Karabiner-Elements

* Enable Simultaneous Vi Mode
* Change Caps Lock to Keycode 53 (Escape)
* Change Fn Key - Fn to Control_L
* Change Control_L Key - Control_L to Fn
* Set Delay Until Repeat - 200ms
* Set Key Repeat - 23ms

## TotalSpaces

Set N spaces and set `⌥ + Number` to switch between each one.

## Slate

`⌃⌥⇧ + Q, E, R, A, S, D, Z, X, C` - Adjust window size

## zsh

https://github.com/robbyrussell/oh-my-zsh

## MacOS Tweaks

Pick and choose https://github.com/mathiasbynens/dotfiles/blob/master/.macos
