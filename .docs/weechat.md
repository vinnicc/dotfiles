# WeeChat

## Install with python support

brew install weechat --with-python

## [weechat-vimode](https://github.com/GermainZ/weechat-vimode)

## Connect to freenode

* `/server add freenode chat.freenode.net`
* `/connect freenode`
* `/msg NickServ IDENTIFY username password`
* `/join #some-channel`
* `/close`

## Switching buffers

* <kbd>Meta</kbd> + <kbd>Left</kbd>
* <kbd>Meta</kbd> + <kbd>Right</kbd>

## Scrolling

On OSX:

* <kbd>Fn</kbd> + <kbd>Up</kbd>
* <kbd>Fn</kbd> + <kbd>Down</kbd>

## Filter join/part/quit messages

With smart filter (keep join/part/quit from users who spoke recently):

```
/set irc.look.smart_filter on
/filter add irc_smart * irc_smart_filter *
```

With a global filter (hide all join/part/quit):

```
/filter add joinquit * irc_join,irc_part,irc_quit *
```
