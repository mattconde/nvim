" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Quickly flashes to highlight the yanked text
augroup LuaHighlight
  au!
  au TextYankPost * lua vim.highlight.on_yank { higroup = "Substitute", timeout = 300, on_macro = true }
augroup END
