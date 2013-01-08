if has("gui_macvim")
	" looks a little better fullscreen
	set bg=dark

	" remove scroll bars and tool bar
	set guioptions-=r
	set guioptions-=L
	set guioptions-=T

	set guifont=Monaco:h12
	" set noantialias

	" expand width in fullscreen
	set fuoptions=maxvert,maxhorz

	" hide tab bar
	set showtabline=0

	" change key bindings
	macm Window.Select\ Previous\ Tab key=<C-S-Tab>
	macm Window.Select\ Next\ Tab key=<C-Tab>
	macm Window.Toggle\ Full\ Screen\ Mode key=<C-D-f>

	" maximize on startup
	set columns=999
	set lines=999
endif