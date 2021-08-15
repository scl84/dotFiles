"* GENERAL SETTINGS *"
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
set showmatch                                   " Show matching bracket on insertion 
set signcolumn=yes                              " Show gutter

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

set iskeyword+=                     	        " Treat dash separated words as a word text object"

set nospell                                     " Disable inbuilt spelling                
setlocal spelllang=en_au                        " Set spelling language

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

command! -nargs=* T vsplit | terminal <args>
augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
    " allows you to use Ctrl-c on terminal window
    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END


"* NEOVIM PROVIDERS *"
let g:python3_host_prog = '/home/sean/.config/nvim/nvim-py3/bin/python'


"* SOURCES *"

" Plugins
source $HOME/.config/nvim/vim-plug.vim
source $HOME/.config/nvim/signify.vim
source $HOME/.config/nvim/sneak.vim
" Themes
source $HOME/.config/nvim/ayu.vim
source $HOME/.config/nvim/gruvbox.vim
source $HOME/.config/nvim/onedark.vim
" Airline
source $HOME/.config/nvim/airline.vim
" Mappings
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/which-key.vim

colorscheme ayu
"hi Normal guibg=NONE ctermbg=NONE
