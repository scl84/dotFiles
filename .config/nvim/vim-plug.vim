" VIM PLUG "

" auto-install vim-plug if missing, and listed plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " git
    Plug 'mhinz/vim-signify'         "git gutter
    Plug 'tpope/vim-fugitive'        "git integration
    " nav
    Plug 'justinmk/vim-sneak'        "easy buffer navigation (binds to s/S)
    Plug 'tpope/vim-vinegar'         "sane netrw
    Plug 'liuchengxu/vim-which-key'  "keybindings menu
    " syntax/editor
    Plug 'sheerun/vim-polyglot'      "improved syntax highlighting (pre LSP)
    Plug 'tpope/vim-commentary'      "code commenting
    Plug 'tpope/vim-surround'        "change and delete surrounding chars (\",',[,etc)
    " theme
    Plug 'vim-airline/vim-airline'
    Plug 'ayu-theme/ayu-vim'
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

