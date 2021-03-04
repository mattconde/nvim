lua require("conde")

" explore files
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>p :lua require('telescope.builtin').find_files()<CR>

" search
nnoremap <C-g> :lua require('telescope.builtin').live_grep()<CR>

" search word under cursor
nnoremap <C-f> :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>

" search word under cursor in buffer
nnoremap <C-s> /<C-r><C-w><CR>

" navigate open buffers
nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>

" help
nnoremap <leader>h :lua require('telescope.builtin').help_tags()<CR>

" explore files from nvim config in projects
nnoremap <leader>vrc :lua require('conde.telescope').search_nvim_config()<CR>

