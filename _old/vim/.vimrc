call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set foldcolumn=2
set relativenumber
set ignorecase
set smartcase
set hlsearch
set incsearch
set encoding=utf8

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey

map <C-n> :NERDTreeToggle<CR>
map <C-p> :GFiles<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <Leader> <Plug>(easymotion-prefix)
