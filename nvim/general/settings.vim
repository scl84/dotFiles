" GENERAL SETTINGS "

let mapleader=' '                               " Space as mapleader key

syntax enable                                   " Enable syntax highlighting
set enc=utf-8                                   " Display encoding
set splitright                                  " Vertical split always to the right
set splitbelow                                  " Horizontal split always to the bottom
set number                                      " Display line numbers gutter
set relativenumber                              " Display line numbers relative to current position
set clipboard=unnamedplus                       " Use OS global clipboard
set mouse=a                                     " Enable mouse support
set guicursor=                                  " Force default cursor behaviour in all modes
set ruler                                       " Show cursor position
set hidden                                      " Keep multiple buffers open
set nobackup                                    " Prevent back-up files, required for language servers
set nowritebackup                               " Prevent back-up file write, required for language servers
set updatetime=300                              " Reduce delay in screen update
set shortmess+=c                                " Reduce 'Enter to continue' prompt on file operations
set signcolumn=yes                              " Always show sign column so gutter doesn't shift
set showmatch                                   " Show matching bracket on insertion 
set showtabline=2                               " Always show tabs                                  
set cursorline                                  " Highlight the line the cursor is on
"set colorcolumn=120                            " Vertical line at 120 characters
"match Error /\%121v.\+/                        " Highlight text as red from 121st character

" Searching
set ignorecase                                  " Case insensitive searching
set hlsearch                                    " Highlight search results
set incsearch                                   " Incremental search
set smartcase                                   " Overrides incsearch in capitals appear in search string

" Tabbing and indents
filetype plugin indent on
set autoindent                                  " Automatic indenting
set smartindent                                 " Smarter indenting
set tabstop=4                                   " Insert 4 spaces per tab 
set softtabstop=4                               
set shiftwidth=4                                " Number of space characters inserted for indentation
set expandtab                                   " Expand <tab> to spaces
set nolinebreak

set iskeyword+=-                      	        " treat dash separated words as a word text object"


" Terminal colour handling -------------------
if (empty($TMUX))                               
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif
" -------------------------------------------

set nospell
setlocal spelllang=en_au
