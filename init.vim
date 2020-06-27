let mapleader=' '
syntax on 
set enc=utf-8
let g:python3_host_prog='/usr/local/bin/python3'

set splitright splitbelow

set number relativenumber
set clipboard+=unnamedplus
set mouse=a
set guicursor=
set ruler
set hidden
set nobackup
set nowritebackup
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set updatetime=300
set shortmess+=c

" Searching
set ignorecase
set hlsearch
set incsearch
set smartcase
set showmatch

" Tabbing and indents
filetype plugin indent on
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nolinebreak

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_browse_split = 4

" Plugins
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Theme
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=1
let g:onedark_terminal_italics=1
colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1

" Custom bindings
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
