let mapleader = ','
set nocompatible
colorscheme slate

syntax enable
set tabstop=4
set softtabstop=4
set expandtab

set number relativenumber
set ruler
set showcmd
set cmdheight=1

filetype indent on
set wildmenu
set wildmode=longest,list,full

set showmatch

set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch

set splitbelow splitright

nnoremap <leader><space> :nohlsearch<CR>
noremap <Leader>y "*y
noremap <Leader>p "*p


let g:airline_powerline_fonts=1
