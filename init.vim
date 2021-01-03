source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/fern.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/start-screen.vim

luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" theme
let g:dracula_italic=0
let g:airline_theme='dracula'
colorscheme dracula
highlight Normal ctermbg=None

" import statusbar after theme because it uses a lot of dracula colors
" and sets a lot of highlights itself
source $HOME/.config/nvim/general/statusbar.vim
