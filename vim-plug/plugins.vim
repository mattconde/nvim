call plug#begin('~/.config/nvim/autoload/plugged')

" Theme 
Plug 'dracula/vim', { 'as': 'dracula' }

" Universal syntax highlighting
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'vim-airline/vim-airline'

" Custom start screen
Plug 'mhinz/vim-startify'

" Explore & Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Helps fzf find project root 
Plug 'airblade/vim-rooter'

" Leader key manager
Plug 'liuchengxu/vim-which-key'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Undo history
Plug 'mbbill/undotree'

" Distraction-free writing
Plug 'junegunn/goyo.vim'

" Open terminal in floating window
Plug 'voldikss/vim-floaterm'

call plug#end()
