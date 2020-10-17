" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" use Esc less hopefully
inoremap jk <Esc>

" avoid unintentional switches to Ex mode.
nnoremap Q <nop>

nnoremap <leader>q :q<CR>

nnoremap <leader>w :w<CR>

" un-highlight after a search
nnoremap <leader>a :set nohlsearch<CR>

" make X behave like d without adding removed data to a register
nnoremap X "_d
nnoremap XX "_dd
vnoremap X "_d
vnoremap x "_d
nnoremap x "_d

" delete current buffer
nnoremap <leader>d :bdelete<CR>

" toggle file explorer
nnoremap <leader>e :Fern . -drawer -reveal=% -toggle<CR>

" search
" currently broken in telescope - https://github.com/nvim-lua/telescope.nvim/issues?q=is%3Aissue+is%3Aopen+live_grep
" nnoremap <C-g> :lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<CR>
nnoremap <C-g> :Rg<CR>

" search word
nnoremap <C-f> :lua require('telescope.builtin').grep_string(require('telescope.themes').get_dropdown({ search = vim.fn.expand("<cword>") }))<CR>

" explore files
nnoremap <C-p> :lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({}))<CR>

" navigate open buffers
nnoremap <leader>b :Buffers<CR>

" navigate available commands
nnoremap <leader>c :Commands<CR>

" navigate changed git files
nnoremap <leader>g :GFiles?<CR>

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nnoremap s <Plug>(easymotion-overwin-f)

" move selected or current lines up and down
xnoremap <silent> K :call Move_up()<CR>
xnoremap <silent> J :call Move_down()<CR>

" better window navigation
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

