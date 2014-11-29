" Vinni Caños's .vimrc file

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

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
inoremap <C-e> <C-o>$
inoremap <C-b> <Esc>^Ibinding.pry<Esc>^==:w<CR>
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
nnoremap <Leader>h xf<Space>xxr:
nnoremap <Leader>i mmgg=G`m<CR>
nnoremap <Leader>j ddpgkJ
nnoremap <Leader>t :tabmove +1<CR>
nnoremap <Leader>xe Iexpect(<Esc>A).to<Space>
nnoremap <Leader>y "*y
nnoremap <Leader>yd :let @*=expand("%:h")<CR>
nnoremap <Leader>yf :let @*=expand("%:t")<CR>
nnoremap <Leader>yp :let @*=expand("%")<CR>

noremap K <Nop>
noremap Q <Nop>
noremap Y v$hy
noremap j gj
noremap k gk

Plugin 'gmarik/Vundle.vim'
nnoremap <Leader>V :tabedit ~/.vimrc<CR>
nnoremap <Leader>va :tabedit ~/.aliases<CR>
nnoremap <Leader>vc :PluginClean<CR>
nnoremap <Leader>vi :PluginInstall<CR>
nnoremap <Leader>vu :PluginUpdate<CR>
nnoremap <Leader>vv :source ~/.vimrc<CR>

Plugin 'kien/ctrlp.vim'
let g:ctrlp_cache_dir = $HOME.'/.tmp/ctrlp'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
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

Plugin 'scrooloose/nerdtree'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeChDirMode = 2
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>N :NERDTreeFind<CR>

Plugin 'tpope/vim-eunuch'
nnoremap <Leader>ed :saveas <C-r>=expand('%:p')<CR>
nnoremap <Leader>em :Move <C-r>=expand('%:p')<CR>
nnoremap <Leader>ew :SudoWrite<CR>

Plugin 'tpope/vim-fugitive'
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
nnoremap <Leader>la :Glog -10 --<CR>
nnoremap <Leader>ll :Glog -10 -- %<CR>
nnoremap <Leader>s :Gstatus<CR>
nnoremap <Leader>ua :Git reset HEAD <CR>
nnoremap <Leader>uu :Git reset HEAD <C-r><C-g><CR>

Plugin 'tpope/vim-rails'
nnoremap <Leader>rc :Rcontroller<CR>
nnoremap <Leader>rf :Rfixtures<CR>
nnoremap <Leader>rm :Rmodel<CR>
nnoremap <Leader>rt :Runittest<CR>
nnoremap <Leader>rv :Rview<CR>

Plugin 'gregsexton/gitv'
let g:Gitv_OpenHorizontal = 0
let g:Gitv_WipeAllOnClose = 1
nnoremap <Leader>ga :Gitv --all<CR>
nnoremap <Leader>gg :Gitv! --all<CR>

Plugin 'mileszs/ack.vim'
nnoremap <C-f> :Ack<Space>

Plugin 'rosenfeld/conque-term'
let g:ConqueTerm_TERM = 'xterm-256'
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_Color = 0

Plugin 'airblade/vim-gitgutter'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'digitaltoad/vim-jade'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'heartsentwined/vim-emblem'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'morhetz/gruvbox'
Plugin 'nelstrom/vim-qargs'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nono/vim-handlebars'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/taglist.vim'
Plugin 'wavded/vim-stylus'

call vundle#end()
filetype plugin indent on

" Basics - on top of vim-sensible
" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
color gruvbox
set t_Co=256
set background=dark
set clipboard=unnamed
set cursorline                      " highlight current screen line
set linespace=1                     " fix line height
set mouse=                          " prioritize mouse from tmux
set nostartofline                   " keep cursor in the same column when moving around
set nowrap                          " soft-wrapping is off by default
set visualbell                      " flash instead of beeping

" Folding
set foldlevel=1
set foldmethod=syntax               " fold by the indentation by default
set foldnestmax=10                  " deepest fold is 10 levels
set nofoldenable                    " don't fold by default

" Search
set gdefault                        " Substitute all matches in a line by default
set hlsearch                        " highlights search results; ctrl-n or :noh to unhighlight
set ignorecase                      " ignores case when pattern matching
set incsearch                       " automatically begins searching as you type
set smartcase                       " ignores ignorecase when pattern contains uppercase characters

" Formatting
set expandtab                       " uses spaces instead of tab characters
set shiftround                      " When at 3 spaces and I hit >>, go to 4, not 5
set shiftwidth=2                    " number of spaces to use for autoindent
set softtabstop=2                   " number of spaces that tabs insert
set tabstop=2                       " number of spaces that a tab renders as

" Backups
set nobackup                        " not worth it
set nowritebackup                   " don't make a backup before overwriting
set noswapfile                      " don't litter swap files everywhere
set directory=/tmp                  " directory for temp files

" Hud and status info
set relativenumber                  " enable hybrid line number mode
set numberwidth=5                   " width of number column
set cmdheight=1                     " make a little more room for error messages
set scrolloff=3                     " lines between the current line and the screen edge
set sidescrolloff=2                 " lines between the current column and the screen edge
set ttyfast                         " improves redrawing for newer computers
set lazyredraw                      " will not redraw the screen while running macros (goes faster)

" Menu compilation
set wildignore+=*.~                 " ignore compiled objects and backups
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

if has("gui_running")
  set guifont=Inconsolata\ for\ Powerline:h12
  set guioptions-=r " Remove right-hand scrollbar
  set guioptions-=L " Remove left-hand scrollbar
  set guioptions-=T " Remove toolbar
  set guioptions+=c " Use console dialogs instead of popup dialogs
  set guioptions-=e " Use non-gui tab lines
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
nnoremap <Leader>p :PromoteToLet<CR>

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
