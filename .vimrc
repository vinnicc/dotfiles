" Vinni Caños's .vimrc file

set nocompatible
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

let mapleader = ','

nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

cnoremap %% <C-r>=expand('%:h').'/'<CR>

vnoremap y ygv<Esc>
vnoremap p pgvy<Esc>
vnoremap s :sort<CR>

inoremap <C-a> <C-o>^
inoremap <C-b> <Esc>^Ibinding.pry<Esc>^==:w<CR>
inoremap <C-e> <C-o>$
inoremap <C-l> <Space>=><Space>
inoremap <C-s> <Esc>:w<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<CR>
nnoremap <C-t> <Esc>:tabnew<CR>
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>S :%s/\s\+$//<CR>
nnoremap <Leader>T :tabmove -1<CR>
nnoremap <Leader>d /^\(.*\)\n\1$<CR>
nnoremap <Leader>h xf<Space>xxr:
nnoremap <Leader>i mmgg=G`m<CR>
nnoremap <Leader>j ddpgkJ
nnoremap <Leader>t :tabmove +1<CR>
nnoremap <Leader>xe Iexpect(<Esc>A).to<Space>
nnoremap <Leader>y "*y
nnoremap <Leader>yd :let @*=expand("%:h")<CR>
nnoremap <Leader>yf :let @*=expand("%:t")<CR>
nnoremap <Leader>yp :let @*=expand("%")<CR>
nnoremap <Space> :w<CR>

noremap K <Nop>
noremap Q <Nop>
noremap Y v$hy
noremap j gj
noremap k gk

NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'ervandew/supertab'
NeoBundle 'godlygeek/tabular'
NeoBundle 'heartsentwined/vim-emblem'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'nelstrom/vim-qargs'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'wavded/vim-stylus'

NeoBundle 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1
if exists('g:loaded_tmux_navigator')
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
  nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
  nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
endif

NeoBundleFetch 'Shougo/neobundle.vim'
nnoremap <Leader>V :tabedit ~/.vimrc<CR>
nnoremap <Leader>va :tabedit ~/.aliases<CR>
nnoremap <Leader>vb :tabedit ~/bootstrap<CR>
nnoremap <Leader>vc :NeoBundleClean<CR>
nnoremap <Leader>vi :NeoBundleInstall<CR>
nnoremap <Leader>vl :NeoBundleLog<CR>
nnoremap <Leader>vt :tabedit ~/.tmux.conf<CR>
nnoremap <Leader>vu :NeoBundleUpdate<CR>
nnoremap <Leader>vv :source ~/.vimrc<CR>

NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_cache_dir = $HOME.'/.tmp/ctrlp'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp\|node_modules\|bower_components$',
      \ 'file': '\.exe$\|\.so$\|\.dat$'
      \ }
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['line', 'dir']
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap <C-n> :CtrlPLine<CR>
nnoremap <Leader><C-p> :ClearCtrlPCache<CR>:CtrlPCurWD<CR>
nnoremap <Leader>gc :CtrlP app/controllers<CR>
nnoremap <Leader>gm :CtrlP app/models<CR>
nnoremap <Leader>gs :CtrlP app/assets/stylesheets<CR>

NeoBundle 'scrooloose/nerdtree'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeChDirMode = 2
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>N :NERDTreeFind<CR>

NeoBundle 'tpope/vim-dispatch'
nnoremap <Leader>` :Dispatch<Space>
nnoremap <Leader>~ :Dispatch!<Space>

NeoBundle 'tpope/vim-eunuch'
nnoremap <Leader>ed :saveas <C-r>=expand('%:p')<CR>
nnoremap <Leader>em :Move <C-r>=expand('%:p')<CR>
nnoremap <Leader>ew :SudoWrite<CR>

NeoBundle 'tpope/vim-fugitive'
nnoremap <Leader>aa :Gwrite<CR>
nnoremap <Leader>ac :Gwrite<CR>:Gcommit --amend<CR>:silent wq<CR>
nnoremap <Leader>bl :Gblame<CR>
nnoremap <Leader>ca :Gcommit --amend<CR>
nnoremap <Leader>ci :Gcommit<CR>
nnoremap <Leader>dD <C-w>h<C-w>c<CR>
nnoremap <Leader>da :!clear && Git diff<CR>
nnoremap <Leader>dc :!clear && Git diff --cached<CR>
nnoremap <Leader>dd :Gdiff<CR>
nnoremap <Leader>ee :Gedit<CR>
nnoremap <Leader>s :Gstatus<CR><C-w>20+
nnoremap <Leader>ua :Git reset HEAD <CR>
nnoremap <Leader>uu :Git reset HEAD <C-r><C-g><CR>

NeoBundle 'tpope/vim-rails'
nnoremap <Leader>. :A<CR>
nnoremap <Leader>rc :Rcontroller<CR>
nnoremap <Leader>rf :Rfixtures<CR>
nnoremap <Leader>rm :Rmodel<CR>
nnoremap <Leader>rt :Runittest<CR>
nnoremap <Leader>rv :Rview<CR>

NeoBundle 'gregsexton/gitv'
let g:Gitv_OpenHorizontal = 0
let g:Gitv_WipeAllOnClose = 1
nnoremap <Leader>gl :Gitv --all<CR>
nnoremap <Leader>gL :Gitv! --all<CR>

NeoBundle 'mileszs/ack.vim'
nnoremap <C-f> :Ack<Space>

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" Basics - on top of vim-sensible
" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
color Tomorrow-Night
set t_Co=256
set background=dark
set clipboard=unnamed
set cursorline                             " Highlight current screen line
set linespace=1                            " Fix line height
set mouse=                                 " Prioritize mouse from tmux
set nostartofline                          " Keep cursor in the same columna when moving around
set wrap                                   " Always wrap lines
set visualbell                             " Flash instead of beeping
set list                                   " Show 'invisible' characters
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_ " Strings to use in list mode and for the :list command

" Folding
set foldlevel=1
set foldmethod=syntax                      " Fold by the indentation by default
set foldnestmax=10                         " Deepest fold is 10 levels
set nofoldenable                           " Don't fold by default

" Search
set gdefault                               " Substitute all matches in a line by default
set hlsearch                               " Highlights search results; ctrl-n or :noh to unhighlight
set ignorecase                             " Ignores case when pattern matching
set incsearch                              " Automatically begins searching as you type
set smartcase                              " Ignores ignorecase when pattern contains uppercase characters

" Formatting
set expandtab                              " Uses spaces instead of tab characters
set shiftround                             " When at 3 spaces and I hit >>, go to 4, not 5
set shiftwidth=2                           " Number of spaces to use for autoindent
set softtabstop=2                          " Number of spaces that tabs insert
set tabstop=2                              " Number of spaces that a tab renders as

" Backups
set nobackup                               " Not worth it
set nowritebackup                          " Don't make a backup before overwriting
set noswapfile                             " Don't litter swap files everywhere
set directory=/tmp                         " Directory for temp files

" Hud and status info
set relativenumber                         " Enable hybrid line number mode
set numberwidth=5                          " Width of number column
set cmdheight=1                            " Make a little more room for error messages
set scrolloff=3                            " Lines between the current line and the screen edge
set sidescrolloff=2                        " Lines between the current column and the screen edge
set ttyfast                                " Improves redrawing for newer computers
set lazyredraw                             " Will not redraw the screen while running macros (goes faster)
set showcmd                                " Show (partial) command in the last line of the screen

" Menu compilation
set wildignore+=*.~                        " Ignore compiled objects and backups
set wig+=*.o,*.obj,*.pyc
set wig+=.sass-cache,tmp
set wildmode=longest:full,list:full

" Clear the search buffer when hitting return on normal mode except on command line windows
function! MapCR()
  nnoremap <CR> :nohlsearch<CR>
endfunction
call MapCR()
if has("autocmd")
  autocmd! CmdwinEnter * :unmap <CR>
  autocmd CmdwinLeave * :call MapCR()
endif

" Insert the current time
command! InsertTime :normal a<C-r>=strftime('%F %H:%M:%S.0 %z')<CR>
nnoremap <Leader>xit :InsertTime<CR>

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
command! PromoteToLet :call PromoteToLet()
nnoremap <Leader>let :PromoteToLet<CR>
