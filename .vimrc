" vinnicc's vimrc.

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader=','

Bundle 'gmarik/vundle'
nmap <Leader>V :tabedit $MYVIMRC<CR>
nmap <Leader>vv :source $MYVIMRC<CR>
nmap <Leader>vg :source $MYGVIMRC<CR>

Bundle 'kien/ctrlp.vim'
let g:ctrlp_cache_dir = $HOME.'/.tmp/ctrlp'
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
map <C-p> :CtrlP<CR>
map <C-b> :CtrlPBuffer<CR>
map <Leader><C-p> :ClearCtrlPCache<CR>:CtrlP<CR>

Bundle 'Lokaltog/vim-easymotion'
" let g:EasyMotion_do_mapping = 0
let g:EasyMotion_leader_key = '<Leader>m'
let g:EasyMotion_mapping_f = '<Leader>f'
let g:EasyMotion_mapping_F = '<Leader>F'
let g:EasyMotion_mapping_t = '<Leader>t'
let g:EasyMotion_mapping_T = '<Leader>T'

Bundle 'scrooloose/nerdtree'
let NERDTreeChDirMode = 2 " Always :cd to the tree's root
let NERDTreeMinimalUI = 1
map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTreeFind<CR>
if has("autocmd")
	autocmd vimenter * if !argc() | NERDTree | endif
endif

Bundle 'tpope/vim-fugitive'
map <Leader>aa :Gwrite<CR>
map <Leader>ax :Gstatus<CR>
map <Leader>bl :Gblame<CR>
map <Leader>ca :Gcommit --amend<CR>
map <Leader>ci :Gcommit<CR>
map <Leader>da :Git diff<CRing
map <Leader>dc :Git diff --cached<CR>
map <Leader>dd :Gdiff<CR>
map <Leader>dD <C-w>h<C-w>c<CR> " Just saving keystrokes when closing diff
map <Leader>ee :Gedit<CR>
map <Leader>la :Glog -10 --<CR>
map <Leader>ll :Glog -10 -- %<CR>
map <Leader>ua :Git reset HEAD <CR>
map <Leader>uu :Git reset HEAD <C-r><C-g><CR>

Bundle 'L9'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'mnoble/tomorrow-night-vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

color tomorrow-night

set background=dark
set backspace=indent,eol,start
set binary
set clipboard=unnamed
set cursorline
set encoding=utf-8 nobomb
set gdefault
set hlsearch
set ignorecase smartcase
set incsearch
set laststatus=2
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set linespace=1
set list
set modeline
set modelines=4 " Enable syntax highlighting syntax on
set mouse=a
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
" Make tabs as wide as two spaces set tabstop=2 " Show “invisible” characters
set t_Co=256
set title
set ttyfast
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

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap kj <Esc>
inoremap jk <Esc>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Switch to alternate file
nnoremap <Leader><Leader> <C-^>

" Save a file as root (,W)
noremap <Leader>W :w !sudo tee % > /dev/null<CR>

" Reindent whole file
map <Leader>i mmgg=G`m<CR>

" Let's be reasonable, shall we?
nmap j gj
nmap k gk

command! Q q " Bind :Q to :q
command! Qall qall 

" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>

nnoremap Y y$
map <Leader>y "*y
" inoremap <C-c> <Esc>
" nnoremap <C-c> <Esc>`^

" Move around splits with <C-hjkl>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Insert a hash rocket with <C-l>
imap <C-l> <Space>=><Space>

" Clear the search buffer when hitting return
function! MapCR()
	nnoremap <CR> :nohlsearch<CR>
endfunction
call MapCR()

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
