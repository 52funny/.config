"====
"auto complete install
"====
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"====
"system
"====
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
" Prevent incorrect backgroung rendering
let &t_ut=''
"set the line of end has show



"====
"Editor
"====
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set list
set listchars=tab:▸\ ,trail:▫



"====
"main
"====
syntax on
set relativenumber
set wildmenu
set wrap
set showcmd
set hlsearch
set smartcase
set ignorecase



map S :w<CR>
map Q :q!<CR>
map R :source $MYVIMRC<CR>
map s <nop>
map sl :set nosplitright<CR>:vsplit<CR>
map sr :set splitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sb :set splitbelow<CR>:split<CR>
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l



call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
call plug#end()
color snazzy
let g:SnazzyTransparent=1
