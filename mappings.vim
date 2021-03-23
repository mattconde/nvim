" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" use Esc less hopefully
inoremap jk <Esc>

" avoid unintentional switches to Ex mode.
nnoremap Q <nop>

" un-highlight after a search
nnoremap <leader>a :set nohlsearch<CR>

" make X behave like d without adding removed data to a register
nnoremap X "_d
nnoremap XX "_dd
vnoremap X "_d
vnoremap x "_d
nnoremap x "_d

" toggle file explorer
nnoremap <leader>e :Fern . -drawer -reveal=% -toggle<CR>

" move selected or current lines up and down
xnoremap <silent> K :call Move_up()<CR>
xnoremap <silent> J :call Move_down()<CR>

" better window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" better splits
nnoremap <leader>h :vsplit<CR>
nnoremap <leader>j :split<CR>
nnoremap <leader>k :split<CR>
nnoremap <leader>l :vsplit<CR>

" telescope

" explore files
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<CR>

" search
nnoremap <C-g> <cmd>lua require('telescope.builtin').live_grep()<CR>

" search word under cursor
nnoremap <C-f> <cmd>lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>

" search word under cursor in buffer
nnoremap <C-s> /<C-r><C-w><CR>

" navigate open buffers
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<CR>

" help
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<CR>

" explore files from nvim config in projects
nnoremap <leader>vrc <cmd>lua require('plugin-config.telescope').search_nvim_config()<CR>

" lsp
nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <silent> <leader>= <cmd>lua vim.lsp.buf.formatting()<CR>
