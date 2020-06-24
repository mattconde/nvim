call plug#begin('~/.config/nvim/autoload/plugged')

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Status line
Plug 'vim-airline/vim-airline'
" Syntax support
Plug 'sheerun/vim-polyglot'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Undo history
Plug 'mbbill/undotree'
" Custom start screen
Plug 'mhinz/vim-startify'

call plug#end()
