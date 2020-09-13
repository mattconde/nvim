call plug#begin('~/.config/nvim/autoload/plugged')

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Easy motion
Plug 'easymotion/vim-easymotion'

" Fern - file explorer
Plug 'lambdalisue/fern.vim'

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

" Open terminal in floating window
Plug 'voldikss/vim-floaterm'

" Commenting out lines
Plug 'tpope/vim-commentary'

" Handle parens in pairs 
Plug 'jiangmiao/auto-pairs'

" Better wrapping commands
Plug 'tpope/vim-surround'

" Highlight colors
Plug 'norcalli/nvim-colorizer.lua'

" Styled components
Plug 'styled-components/vim-styled-components'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

