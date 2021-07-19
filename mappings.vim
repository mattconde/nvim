" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" use Esc less hopefully
inoremap jk <Esc>

" avoid unintentional switches to Ex mode.
nnoremap Q <nop>

" un-highlight after a search
nnoremap <leader>a <cmd>set nohlsearch<CR>

" make X behave like d without adding removed data to a register
nnoremap X "_d
nnoremap XX "_dd
vnoremap X "_d
vnoremap x "_d
nnoremap x "_d

" toggle file explorer
nnoremap <leader>e <cmd>Fern . -drawer -reveal=% -toggle<CR>

" move selected or current lines up and down
xnoremap <silent> K <cmd>call Move_up()<CR>
xnoremap <silent> J <cmd>call Move_down()<CR>

" better window navigation
nnoremap <Left> <C-w>h
nnoremap <Down> <C-w>j
nnoremap <Up> <C-w>k
nnoremap <Right> <C-w>l

" better splits
nnoremap <leader>h <cmd>vsplit<CR>
nnoremap <leader>j <cmd>split<CR>
nnoremap <leader>k <cmd>split<CR>
nnoremap <leader>l <cmd>vsplit<CR>

" telescope

" explore files
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<CR>

nnoremap <C-e> <cmd>lua require('conde.plugin-config.telescope').file_browser()<CR>

" search - live_grep
nnoremap <C-g> <cmd>lua require('telescope.builtin').live_grep { only_sort_text = true, search = '' }<CR>

" search word under cursor
nnoremap <C-f> <cmd>lua require('telescope.builtin').grep_string { only_sort_text = true, search = vim.fn.expand("<cword>") }<CR>

" search word under cursor in buffer
nnoremap <C-s> /<C-r><C-w><CR>

" browse git branches
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<CR>

" browse git commits
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<CR>

" browse git status
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<CR>

" browse git pull requests
nnoremap <leader>gp <cmd>lua require('telescope').extensions.gh.pull_request()<CR>

" help
nnoremap <leader>h <cmd>lua require('telescope.builtin').help_tags()<CR>

" explore language server symbols
nnoremap <leader>s <cmd>SymbolsOutline<CR>

" compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR> compe#confirm('<CR>')

" lsp
nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

nnoremap <silent> <leader>= <cmd>lua vim.lsp.buf.formatting()<CR>
