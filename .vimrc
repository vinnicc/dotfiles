" Vinni Caños's .vimrc file
"------------------------------------------------------------------------------

set nocompatible
set shell=/bin/bash " Use a fast shell
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

" Allow normal regex
nnoremap ? ?\v
nnoremap / /\v
vnoremap / /\v
vnoremap ? ?\v

" Send or cancel command to tmux pane
nnoremap <Leader>1 :silent !tmux send-keys -t 1 Up Enter<CR>
nnoremap <Leader>2 :silent !tmux send-keys -t 2 Up Enter<CR>
nnoremap <Leader>3 :silent !tmux send-keys -t 3 Up Enter<CR>
nnoremap <Leader>4 :silent !tmux send-keys -t 4 Up Enter<CR>
nnoremap <Leader>! :silent !tmux send-keys -t 1 'C-c' Enter<CR>
nnoremap <Leader>@ :silent !tmux send-keys -t 2 'C-c' Enter<CR>
nnoremap <Leader># :silent !tmux send-keys -t 3 'C-c' Enter<CR>
nnoremap <Leader>$ :silent !tmux send-keys -t 4 'C-c' Enter<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>S :%s/\s\+$//<CR>
nnoremap <Leader>X :qa!<CR>
nnoremap <Leader>d /^\(.*\)\n\1$<CR>
nnoremap <Leader>gT :tabmove -1<CR>
nnoremap <Leader>gt :tabmove +1<CR>
nnoremap <Leader>h xf<Space>xxr:
nnoremap <Leader>i mmgg=G`m<CR>
nnoremap <Leader>j ddpgkJ
nnoremap <Leader>t <Esc>:tabnew<CR>
nnoremap <Leader>xb :bd<CR>
nnoremap <Leader>xt :tabo<CR>
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

"------------------------------------------------------------------------------
" Colors
"------------------------------------------------------------------------------
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
NeoBundle 'morhetz/gruvbox'
NeoBundle 'w0ng/vim-hybrid'
nnoremap <Leader>C :Colors<CR>

"------------------------------------------------------------------------------
" Languages
"------------------------------------------------------------------------------
NeoBundle 'ElmCast/elm-vim'
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0

NeoBundle 'powerman/vim-plugin-AnsiEsc'
let g:no_plugin_maps = 1

" JavaScript/TypeScript - :CocInstall coc-tsserver
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'peitalin/vim-jsx-typescript'

" Flutter/Dart - :CocInstall coc-flutter
NeoBundle 'dart-lang/dart-vim-plugin'
" NeoBundle 'thosakwe/vim-flutter'

" Elixir
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1

" Rest
NeoBundle 'LnL7/vim-nix'
NeoBundle 'ap/vim-css-color'
NeoBundle 'cespare/vim-toml'
NeoBundle 'dag/vim-fish'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'neovimhaskell/haskell-vim'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pbrisbin/vim-syntax-shakespeare'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'slashmili/alchemist.vim'
NeoBundle 'tomlion/vim-solidity'
NeoBundle 'tpope/vim-haml'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'wavded/vim-stylus'

"------------------------------------------------------------------------------
" Intellisense/LS
"------------------------------------------------------------------------------
NeoBundle 'neoclide/coc.nvim', 'release', {'build': {'others': 'git checkout release'}}
" Improved K for documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h ' . expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
augroup CocGroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Show signature help on placeholder jump
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"------------------------------------------------------------------------------
" Package Management
"------------------------------------------------------------------------------
NeoBundleFetch 'Shougo/neobundle.vim'
nnoremap <Leader>V :tabedit ~/.vimrc<CR>
nnoremap <Leader>va :tabedit ~/.config/fish/aliases.fish<CR>
nnoremap <Leader>vb :tabedit ~/bootstrap<CR>
nnoremap <Leader>vc :NeoBundleClean<CR>
nnoremap <Leader>vg :tabedit ~/.gitignore<CR>
nnoremap <Leader>vi :NeoBundleInstall<CR>
nnoremap <Leader>vl :NeoBundleLog<CR>
nnoremap <Leader>vr :tabedit ~/.config/ranger/rc.conf<CR>
nnoremap <Leader>vs :tabedit ~/.skhdrc<CR>
nnoremap <Leader>vt :tabedit ~/.tmux.conf<CR>
nnoremap <Leader>vu :NeoBundleUpdate<CR>
nnoremap <Leader>vv :source ~/.vimrc<CR>
nnoremap <Leader>vy :tabedit ~/.yabairc<CR>

" NeoBundle 'Shougo/vimproc.vim', {
"   \   'build': {
"   \     'windows': 'tools\\update-dll-mingw',
"   \     'cygwin': 'make -f make_cygwin.mak',
"   \     'mac': 'make',
"   \     'linux': 'make',
"   \     'unix': 'gmake',
"   \   },
"   \ }

NeoBundle 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"------------------------------------------------------------------------------
" Search
"------------------------------------------------------------------------------
" NeoBundle '/usr/bin/fzf'
NeoBundle 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let $FZF_DEFAULT_OPTS = '--reverse --inline-info'
let g:fzf_layout = { 'window': 'enew' }
" Selecting mappings
nmap <Leader><Tab> <plug>(fzf-maps-n)
omap <Leader><Tab> <plug>(fzf-maps-o)
xmap <Leader><Tab> <plug>(fzf-maps-x)
" Insert mode completion
imap <C-x><C-f> <plug>(fzf-complete-path)
imap <C-x><C-j> <plug>(fzf-complete-file-ag)
imap <C-x><C-k> <plug>(fzf-complete-word)
imap <C-x><C-l> <plug>(fzf-complete-line)
" Other helpers
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-n> :Lines<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-s> :GFiles?<CR>
nnoremap <Leader>/ :History/<CR>
nnoremap <Leader>: :History:<CR>
nnoremap <Leader>; :Commands<CR>
nnoremap <Leader><C-d> :call fzf#run(fzf#wrap({'source': 'find ~/Work/* -type d -maxdepth 0', 'sink': 'cd'}))<CR>
nnoremap <Leader><C-h> :History<CR>
nnoremap <Leader><C-l> :Commits<CR>
nnoremap <Leader><C-n> :FZF ~/Google\ Drive/Personal/Notes<CR>
nnoremap <Leader><C-p> :GFiles<CR>
nnoremap <Leader><C-w> :Windows<CR>
nnoremap <Leader>D :FZF ~/.docs<CR>
nnoremap <Leader>L :BCommits<CR>
nnoremap <Leader>m :Marks<CR>

NeoBundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)

NeoBundle 'tpope/vim-rails'
nnoremap <Leader>. :A<CR>
nnoremap <Leader>rc :Econtroller<CR>
nnoremap <Leader>rf :Efixtures<CR>
nnoremap <Leader>rl :Elocale<CR>
nnoremap <Leader>rm :Emodel<CR>
nnoremap <Leader>rM :Emigration<CR>
nnoremap <Leader>rs :Estylesheet<Space>
nnoremap <Leader>rS :Eschema<CR>
nnoremap <Leader>rt :Eunittest<CR>
nnoremap <Leader>rv :Eview<CR>

"------------------------------------------------------------------------------
" Files
"------------------------------------------------------------------------------
NeoBundle 'scrooloose/nerdtree'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.DS_Store$']
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
nnoremap <Leader>N :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

NeoBundle 'tpope/vim-eunuch'
nnoremap <Leader>ed :saveas <C-r>=expand('%:p')<CR>
nnoremap <Leader>em :Move <C-r>=expand('%:p')<CR>
nnoremap <Leader>ew :SudoWrite<CR>

"------------------------------------------------------------------------------
" Git
"------------------------------------------------------------------------------
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
nnoremap <Leader>s :Gstatus<CR>4j
nnoremap <Leader>ua :Git reset HEAD <CR>
nnoremap <Leader>uu :Git reset HEAD <C-r><C-g><CR>

NeoBundle 'gregsexton/gitv'
let g:Gitv_OpenHorizontal = 0
let g:Gitv_WipeAllOnClose = 1
nnoremap <Leader>gl :Gitv --all<CR>
nnoremap <Leader>gL :Gitv! --all<CR>

NeoBundle 'airblade/vim-gitgutter'
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

"------------------------------------------------------------------------------
" Zettelkasten
"------------------------------------------------------------------------------
NeoBundle 'vimwiki/vimwiki'
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{
  \   'path': '~/Google\ Drive/Personal/Notes/',
  \   'syntax': 'markdown',
  \   'ext': '.md',
  \   'auto_tags': 1,
  \   'auto_toc': 1,
  \ }]

"------------------------------------------------------------------------------
" Remote Commands
"------------------------------------------------------------------------------
NeoBundle 'tpope/vim-dispatch'
let g:dispatch_no_maps = 1
nnoremap <Leader>` :Dispatch<Space>
nnoremap <Leader>~ :Dispatch!<Space>

"------------------------------------------------------------------------------
" Others
"------------------------------------------------------------------------------
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'ervandew/supertab'
NeoBundle 'evanleck/vim-svelte'
NeoBundle 'godlygeek/tabular'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'nelstrom/vim-qargs'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
" NeoBundle 'vim-scripts/taglist.vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

"------------------------------------------------------------------------------
" Basics - on top of vim-sensible
" https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
"------------------------------------------------------------------------------
color gruvbox
set t_Co=256
set background=dark
set clipboard=unnamed
set clipboard+=unnamedplus
set hidden                                 " Unsaved changes causes buffers to be hidden instead of closed
set linespace=1                            " Fix line height
set mouse=                                 " Prioritize mouse from tmux
set nostartofline                          " Keep cursor in the same column when moving around
set wrap                                   " Always wrap lines
set visualbell                             " Flash instead of beeping
set list                                   " Show 'invisible' characters
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_ " Strings to use in list mode and for the :list command

" Folding
set foldlevel=1
set foldmethod=syntax                      " Prefer folding by syntax
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
set number                                 " Enable normal line number mode
set numberwidth=1                          " Width of number column
set cmdheight=1                            " Make a little more room for error messages
set scrolloff=3                            " Lines between the current line and the screen edge
set sidescrolloff=2                        " Lines between the current column and the screen edge
set ttyfast                                " Improves redrawing for newer computers
set lazyredraw                             " Will not redraw the screen while running macros (goes faster)
set showcmd                                " Show (partial) command in the last line of the screen

" Scrolling
let loaded_matchit=1
let loaded_matchparen=1
set noshowmatch
set nocursorline
set nocursorcolumn

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
command! InsertTime :normal a<C-r>=strftime('%FT%T%z')<CR>
nnoremap <Leader>xit :InsertTime<CR>

command! InsertDeployment :normal o<Esc>CDeployed - [staging] @ [<C-r>=strftime('%F %H:%M:%S.0 %z')<CR>]
nnoremap <Leader>xid :InsertDeployment<CR>

" Show the MD5 of the current buffer
command! -range Md5 :echo system('echo ' . shellescape(join(getline(<line1>, <line2>), '\n')) . '| md5')

" Promote variable to let
function! PromoteToLet()
  normal! dd
  " exec '?^\s*it\>'
  normal! P
  .s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  normal ==
endfunction
command! PromoteToLet :call PromoteToLet()
nnoremap <Leader>let :PromoteToLet<CR>

" Zoom in/out of a window
function! s:ZoomToggle() abort
  if exists('t:zoomed') && t:zoomed
    execute t:zoom_winrestcmd
    let t:zoomed = 0
  else
    let t:zoom_winrestcmd = winrestcmd()
    resize
    vertical resize
    let t:zoomed = 1
  endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <Leader>z :ZoomToggle<CR>
