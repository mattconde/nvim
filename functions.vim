" turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd!
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" quickly flashes to highlight the yanked text
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({ higroup = "Substitute", timeout = 400, on_macro = true })
augroup END

" helpers for reliably moving lines
function! s:Visual()
  return visualmode() == 'V'
endfunction

function! s:Move(address, at_limit)
  if s:Visual() && !a:at_limit
    execute "'<,'>move " . a:address
    call feedkeys('gv=', 'n')
  endif
  call feedkeys('gv', 'n')
endfunction

function! Move_up() abort range
  let l:at_top=a:firstline == 1
  call s:Move("'<-2", l:at_top)
endfunction

function! Move_down() abort range
  let l:at_bottom=a:lastline == line('$')
  call s:Move("'>+1", l:at_bottom)
endfunction

" use rg to search for text strings in project
command! -bang -nargs=* FindText
  \ call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --no-ignore --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \ fzf#vim#with_preview(),
  \ <bang>0)

" use rg to search for text strings in project whilst respecting git ignore
command! -bang -nargs=* GFindText
  \ call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!*.lock" --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \ fzf#vim#with_preview(),
  \ <bang>0)
