call plug#begin('~/.config/nvim/autoload/plugged')

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

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" helps find project root
Plug 'airblade/vim-rooter'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" editorconfig support
Plug 'editorconfig/editorconfig-vim'

" commenting out lines
Plug 'tpope/vim-commentary'

" handle parens in pairs 
Plug 'jiangmiao/auto-pairs'

" better wrapping commands
Plug 'tpope/vim-surround'

" highlight colors
Plug 'norcalli/nvim-colorizer.lua'

" styled components
Plug 'styled-components/vim-styled-components'

" graphql support
Plug 'jparise/vim-graphql'

call plug#end()

" automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

