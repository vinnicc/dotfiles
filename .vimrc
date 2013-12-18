" Vinni Caños's .vimrc file

set nocompatible
syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader = ','

nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

cnoremap %% <C-r>=expand('%:h').'/'<CR>

vnoremap y ygv<Esc>
vnoremap p pgvy<Esc>

inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-k> <Esc>^Iraise <Esc>A.inspect<Esc>^==:w<CR>
inoremap <C-b> <Esc>^Ibinding.pry<Esc>^==:w<CR>
inoremap <C-l> <Space>=><Space>
inoremap <C-s> <Esc>:w<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <D-j> }
nnoremap <D-k> {
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>bi :!bundle install<CR>
nnoremap <Leader>i mmgg=G`m<CR>
nnoremap <Leader>h xf<Space>xxr:
nnoremap <Leader>j ddpgkJ
nnoremap <Leader>xe Iexpect(<Esc>A).to<Space>
nnoremap <Leader>y "*y
nnoremap <Leader>yd :let @*=expand("%:h")<CR>
nnoremap <Leader>yf :let @*=expand("%:t")<CR>
nnoremap <Leader>yp :let @*=expand("%")<CR>

noremap K <NOP>
noremap Q <NOP>
noremap Y v$hy
noremap j gj
noremap k gk

Bundle 'gmarik/vundle'
nnoremap <Leader>V :tabedit ~/.vimrc<CR>
nnoremap <Leader>va :tabedit ~/.aliases<CR>
nnoremap <Leader>vc :BundleClean<CR>
nnoremap <Leader>vg :tabedit ~/.gitconfig<CR>
nnoremap <Leader>vi :BundleInstall<CR>
nnoremap <Leader>vt :tabedit ~/.tmux.conf<CR>
nnoremap <Leader>vu :BundleUpdate<CR>
nnoremap <Leader>vv :source ~/.vimrc<CR>

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
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <Leader><C-p> :ClearCtrlPCache<CR>:CtrlPCurWD<CR>

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_mapping_f = '<Leader>f'
let g:EasyMotion_mapping_F = '<Leader>F'
let g:EasyMotion_leader_key = '<Leader>Q'

Bundle 'scrooloose/nerdtree'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeChDirMode = 2
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>N :NERDTreeFind<CR>

Bundle 'tpope/vim-eunuch'
nnoremap <Leader>ed :saveas <C-r>=expand('%:p')<CR>
nnoremap <Leader>em :Move <C-r>=expand('%:p')<CR>
nnoremap <Leader>ew :SudoWrite<CR>

Bundle 'tpope/vim-fugitive'
nnoremap <Leader>aa :Gwrite<CR>
nnoremap <Leader>ac :Gwrite<CR>:Gcommit --amend<CR>:silent wq<CR>
nnoremap <Leader>s :Gstatus<CR>
nnoremap <Leader>bl :Gblame<CR>
nnoremap <Leader>ca :Gcommit --amend<CR>
nnoremap <Leader>ci :Gcommit<CR>
nnoremap <Leader>da :!clear && Git diff<CR>
nnoremap <Leader>dc :!clear && Git diff --cached<CR>
nnoremap <Leader>dd :Gdiff<CR>
nnoremap <Leader>dD <C-w>h<C-w>c<CR>
nnoremap <Leader>ee :Gedit<CR>
nnoremap <Leader>la :Glog -10 --<CR>
nnoremap <Leader>ll :Glog -10 -- %<CR>
nnoremap <Leader>ua :Git reset HEAD <CR>
nnoremap <Leader>uu :Git reset HEAD <C-r><C-g><CR>

Bundle 'tpope/vim-rails'
nnoremap <Leader>rc :Rcontroller<CR>
nnoremap <Leader>rf :Rfixtures<CR>
nnoremap <Leader>rm :Rmodel<CR>
nnoremap <Leader>rt :Runittest<CR>
nnoremap <Leader>rv :Rview<CR>

Bundle 'gregsexton/gitv'
let g:Gitv_OpenHorizontal = 0
let g:Gitv_WipeAllOnClose = 1
nnoremap <Leader>ga :Gitv --all<CR>
nnoremap <Leader>gg :Gitv! --all<CR>

Bundle 'mileszs/ack.vim'
nnoremap <C-f> :Ack<Space>

Bundle 'Lokaltog/vim-powerline'
let g:Powerline_colorscheme = 'solarized256'

Bundle 'rosenfeld/conque-term'
let g:ConqueTerm_TERM = 'xterm-256'
let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_InsertOnEnter=1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_Color = 0

Bundle 'L9'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'digitaltoad/vim-jade'
Bundle 'heartsentwined/vim-emblem'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mattn/emmet-vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'nelstrom/vim-qargs'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'nono/vim-handlebars'
Bundle 'plasticboy/vim-markdown'

Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/taglist.vim'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

color Tomorrow-Night-Blue
set background=dark

set autoindent
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
set relativenumber
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

" Strip trailing whitespace (,S)
function! StripTrailingWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
nnoremap <Leader>S :call StripTrailingWhitespace()<CR>

" Clear the search buffer when hitting return
function! MapCR()
	nnoremap <CR> :nohlsearch<CR>
endfunction
call MapCR()

" Automatic commands
if has("autocmd")
	" Do not change return key behavior on command line windows
	autocmd! CmdwinEnter * :unmap <CR>
	autocmd CmdwinLeave * :call MapCR()

	autocmd FileType ruby,haml,eruby,yaml,html,javascript,coffee,sass,cucumber set ai sw=2 sts=2 et
	autocmd FileType python set sw=4 sts=4 et

        autocmd FileType crontab set nobackup nowritebackup

	autocmd BufRead * set nofoldenable

	autocmd BufNewFile,BufRead *.jbuilder,Gemfile,Rakefile,Procfile,Guardfile setf ruby
	autocmd BufNewFile,BufRead *.coffee setf coffee
	autocmd BufNewFile,BufRead *.handlebars setf handlebars
	autocmd BufNewFile,BufRead *.json setf json syntax=javascript
	autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md,README.md setf markdown
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
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS AND COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent if we're at the beginning of a line. Else, do completion.
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

" Bind :Q to :q
command! Q q
command! Qall qall
" Insert the current time
command! InsertTime :normal a<C-r>=strftime('%F %H:%M:%S.0 %z')<CR>
" Show the MD5 of the current buffer
command! -range Md5 :echo system('echo '.shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

" Promote variable to let
function! PromoteToLet()
	:normal! dd
	" :exec '?^\s*it\>'
	:normal! P
	:.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
	:normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:nnoremap <Leader>p :PromoteToLet<CR>

" Switch between test and production code
function! OpenTestAlternate()
	let new_file = AlternateForCurrentFile()
	exec ':e ' . new_file
endfunction

function! AlternateForCurrentFile()
	let current_file = expand("%")
	let new_file = current_file
	let in_spec = match(current_file, '^spec/') != -1
	let going_to_spec = !in_spec
	let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1 || match(current_file, '\<cells\>') != -1
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

" Open a split for each dirty file in git
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
