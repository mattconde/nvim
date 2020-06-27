" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" TAB will move to next buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go to the previous buffer
nnoremap <silent> <S-TAB> :bprevious<CR>

" Use Esc less hopefully
inoremap jk <Esc>
inoremap kj <Esc>

" Open Netrw, and resize
nnoremap <leader>v :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move selected or current lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

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
