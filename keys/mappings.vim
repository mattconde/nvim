" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" Simulate same TAB behavior in VSCode
" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Use Esc less hopefully
inoremap jk <Esc>
inoremap kj <Esc>

" Ctrl P use fzf :GFiles
nnoremap <C-p> :Files<CR>

" Shortcut for searching with RipGrep via fzf
nnoremap <leader>g :Rg <C-R>=expand("<cword>")<CR><CR>

" Show undotree
nnoremap <leader>u :UndotreeShow<CR>

" Open a file tree, and resize
nnoremap <leader>v :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" disable arrows in most modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" disable arrows in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
