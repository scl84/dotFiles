" VIM PLUG "

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'habamax/vim-asciidoctor'
Plug 'liuchengxu/vim-which-key'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tomasiser/vim-code-dark'
Plug 'justinmk/vim-sneak'
Plug 'mtth/scratch.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
call plug#end()

