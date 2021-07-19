call plug#begin('~/.config/nvim/autoload/plugged')

" lsp
Plug 'neovim/nvim-lspconfig'

" Treesitter!
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" auto-complete
Plug 'hrsh7th/nvim-compe'

" theme
Plug 'dracula/vim', { 'as': 'dracula' }

" fern - file explorer
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" git
Plug 'tpope/vim-fugitive'

" custom start screen
Plug 'mhinz/vim-startify'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-github.nvim'

" helps find project root
Plug 'airblade/vim-rooter'

" editorconfig support
Plug 'editorconfig/editorconfig-vim'

" commenting out lines
Plug 'tpope/vim-commentary'

" highlight colors
Plug 'norcalli/nvim-colorizer.lua'

" styled components
Plug 'styled-components/vim-styled-components'

" graphql support
Plug 'jparise/vim-graphql'

" Visual LSP symbols
Plug 'simrat39/symbols-outline.nvim'

call plug#end()

" automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

