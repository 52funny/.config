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
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set clipboard=unnamedplus
nnoremap <C-n> :nohlsearch<CR>

"===
"Cursor Move
"===
noremap K 5k
noremap J 5j

"use  jj
inoremap jj <ESC>

map S :w<CR>
map Q :q!<CR>
map R :source $MYVIMRC<CR>
map s <nop>
map sl :set nosplitright<CR>:vsplit<CR>
map sr :set splitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sb :set splitbelow<CR>:split<CR>

"
"coc-nvim
"
set hidden
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
  " Recently vim can merge signcolumn and number column into one
"set signcolumn=number

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>g <Plug>(coc-diagnostic-next)

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-commentary'
call plug#end()
color snazzy
let g:SnazzyTransparent=1
