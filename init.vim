let mapleader=','
syntax on 
set enc=utf-8
let g:python3_host_prog='/usr/bin/python3'


set number relativenumber
set clipboard=unnamedplus
set guicursor=
set ruler

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

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif


" Plugins
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
call plug#end()

" OneDark Theme
"let g:onedark_hide_endofbuffer=1
"let g:onedark_termcolors=1
"let g:onedark_terminal_italics=1
"colorscheme onedark
"let g:airline_theme='onedark'
"let g:airline_powerline_fonts=1

"let g:codedark_term256=1
"colorscheme codedark
"let g:airline_theme='codedark'
