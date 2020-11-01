call plug#begin('~/.config/nvim/autoload/plugged')

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Easy motion
Plug 'easymotion/vim-easymotion'

" Fern - file explorer
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" Git
Plug 'tpope/vim-fugitive'

" Status line
Plug 'vim-airline/vim-airline'

" Custom start screen
Plug 'mhinz/vim-startify'

" Explore & Search
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Helps find project root
Plug 'airblade/vim-rooter'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

