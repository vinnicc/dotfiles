" Vinni Caños's .vimrc file

set nocompatible
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader = ','

Bundle 'gmarik/vundle'
nmap <Leader>V :tabedit $MYVIMRC<CR>
nmap <Leader>vv :source $MYVIMRC<CR>
nmap <Leader>vg :source $MYGVIMRC<CR>

Bundle 'kien/ctrlp.vim'
let g:ctrlp_cache_dir = $HOME.'/.tmp/ctrlp'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
			\ 'file': '\.exe$\|\.so$\|\.dat$'
			\ }
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
noremap <C-b> :CtrlPBuffer<CR>
noremap <Leader><C-p> :ClearCtrlPCache<CR>:CtrlPCurWD<CR>

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>m'
let g:EasyMotion_mapping_f = '<Leader>f'
let g:EasyMotion_mapping_F = '<Leader>F'

Bundle 'scrooloose/nerdtree'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeChDirMode = 2 " Always :cd to the tree's root
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>N :NERDTreeFind<CR>

Bundle 'tpope/vim-eunuch'
nnoremap <Leader>em :Move <C-r>=expand('%:p')<CR>
nnoremap <Leader>ed :saveas <C-r>=expand('%:p')<CR>

Bundle 'tpope/vim-fugitive'
map <Leader>aa :Gwrite<CR>
map <Leader>ax :Gstatus<CR>
map <Leader>bl :Gblame<CR>
map <Leader>ca :Gcommit --amend<CR>
map <Leader>ci :Gcommit<CR>
map <Leader>da :!clear && Git diff<CR>
map <Leader>dc :!clear && Git diff --cached<CR>
map <Leader>dd :Gdiff<CR>
map <Leader>dD <C-w>h<C-w>c<CR> " Just saving keystrokes when closing diff
map <Leader>ee :Gedit<CR>
map <Leader>la :Glog -10 --<CR>
map <Leader>ll :Glog -10 -- %<CR>
map <Leader>ua :Git reset HEAD <CR>
map <Leader>uu :Git reset HEAD <C-r><C-g><CR>

Bundle 'gregsexton/gitv'
let g:Gitv_OpenHorizontal = 0
let g:Gitv_WipeAllOnClose = 1
map <Leader>ga :Gitv --all<CR>
map <Leader>gg :Gitv! --all<CR>

Bundle 'mileszs/ack.vim'
map <C-f> :Ack<Space>

Bundle 'L9'
Bundle 'Lokaltog/vim-powerline'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'kchmck/vim-coffee-script'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'nelstrom/vim-qargs'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/taglist.vim'

filetype off " Vundle quirk
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

color Tomorrow-Night
set background=dark

set backspace=indent,eol,start
set binary
set clipboard=unnamed
set cursorline
set encoding=utf-8 nobomb
set gdefault
set history=10000
set hlsearch
set ignorecase smartcase
set incsearch
set laststatus=2
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " Show 'invisible' characters
set linespace=1
set list
set modeline
set modelines=4
set mouse= " Prioritize mouse from tmux
set noerrorbells
" set noeol
set nofoldenable " No code folding
set nostartofline
set number
set ruler
set scrolloff=3
set shiftround " When at 3 spaces and I hit >>, go to 4, not 5
set shortmess=atI
set showcmd
set showmode
" set tabstop=2 " Make tabs as wide as two spaces
set t_Co=256
set title
set ttyfast
set visualbell " Flash instead of beeping
set wildmenu

set backupdir=~/.tmp
set directory=~/.tmp
if exists("&undodir")
	set undodir=~/.tmp
endif

" Strip trailing whitespace (,ss)
function! StripTrailingWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <Leader>ss :call StripTrailingWhitespace()<CR>

" Clear the search buffer when hitting return
function! MapCR()
	nnoremap <CR> :nohlsearch<CR>
endfunction
call MapCR()

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

	" Do not change return key behavior on command line windows
	autocmd! CmdwinEnter * :unmap <CR>
	autocmd CmdwinLeave * :call MapCR()

	autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
	autocmd FileType python set sw=4 sts=4 et

	" Show line numbers only on active split
	au WinEnter * :setlocal number
	au WinLeave * :setlocal nonumber
endif

if has("gui_macvim")
	" Remove scroll bars and tool bar
	set guioptions-=r
	set guioptions-=L
	set guioptions-=T

	" Do not use modal alerts
	set guioptions+=c

	" Do not use gui tabline
	set guioptions-=e

	set guifont=Monaco:h12

	" Expand width in fullscreen
	set fuoptions=maxvert,maxhorz

	" Change key bindings
	macm Window.Select\ Previous\ Tab key=<C-S-Tab>
	macm Window.Select\ Next\ Tab key=<C-Tab>
	macm Window.Toggle\ Full\ Screen\ Mode key=<C-D-f>

	" Maximize on startup
	set columns=999
	set lines=999
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Reverse join line
nnoremap <Leader>j ddpgkJ

" Switch to alternate file
nnoremap <Leader><Leader> <C-^>

" Save a file as root (,W)
noremap <Leader>W :w !sudo tee % > /dev/null<CR>

" Expand filename
cnoremap %% <C-r>=expand('%:h').'/'<CR>

" Reindent whole file
map <Leader>i mmgg=G`m<CR>

" Let's be reasonable, shall we?
nmap j gj
nmap k gk

" Keep cursor position after yanking on visual mode
vmap y ygv<Esc>

" Bind :Q to :q
command! Q q
command! Qall qall

" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>

" For consistent behavior with C, D, ...
nnoremap Y y$
map <Leader>y "*y
" inoremap <C-c> <Esc>
" nnoremap <C-c> <Esc>`^

" Move around splits faster
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Insert a hash rocket with <C-l>
imap <C-l> <Space>=><Space>

" map <Leader>gr :topleft :split config/routes.rb<CR>
" map <Leader>gg :topleft 100 :split Gemfile<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<Tab>"
	else
		return "\<C-p>"
	endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RAISE INSPECTED VARIABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-k> <Esc>^Iraise <Esc>A.inspect<Esc>^==:w<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
	:normal! dd
	" :exec '?^\s*it\>'
	:normal! P
	:.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
	:normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <Leader>p :PromoteToLet<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
	let new_file = AlternateForCurrentFile()
	exec ':e ' . new_file
endfunction

function! AlternateForCurrentFile()
	let current_file = expand("%")
	let new_file = current_file
	let in_spec = match(current_file, '^spec/') != -1
	let going_to_spec = !in_spec
	let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
	if going_to_spec
		if in_app
			let new_file = substitute(new_file, '^app/', '', '')
		end
		let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
		let new_file = 'spec/' . new_file
	else
		let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
		let new_file = substitute(new_file, '^spec/', '', '')
		if in_app
			let new_file = 'app/' . new_file
		end
	endif
	return new_file
endfunction
nnoremap <Leader>. :call OpenTestAlternate()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Md5 COMMAND
" Show the MD5 of the current buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -range Md5 :echo system('echo '.shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OpenChangedFiles COMMAND
" Open a split for each dirty file in git
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenChangedFiles()
	only " Close all windows, unless they're modified
	let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
	let filenames = split(status, "\n")
	exec "edit " . filenames[0]
	for filename in filenames[1:]
		exec "sp " . filename
	endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" InsertTime COMMAND
" Insert the current time
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! InsertTime :normal a<C-r>=strftime('%F %H:%M:%S.0 %z')<CR>
