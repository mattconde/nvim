source $HOME/.config/nvim/plugins.vim

luafile $HOME/.config/nvim/lua/init.lua

source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugin-config/fern.vim
source $HOME/.config/nvim/plugin-config/start-screen.vim

" theme
let g:dracula_italic=0
let g:airline_theme='dracula'
colorscheme dracula
highlight Normal ctermbg=None

" import statusbar after theme because it uses a lot of dracula colors
" and sets a lot of highlights itself
source $HOME/.config/nvim/statusbar.vim
