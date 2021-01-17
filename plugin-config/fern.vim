" disable netrw.
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" custom settings and mappings.
let g:fern#default_hidden = 1
let g:fern#drawer_width = 45
let g:fern#renderer = "nerdfont"
let g:fern#disable_default_mappings = 1

function! FernInit() abort
  " movement keys
  nmap <buffer> h <Plug>(fern-action-collapse)
  " j - Works even when defaults are disabled
  " k - Works even when defaults are disabled
  nmap <buffer> l <Plug>(fern-action-expand)

  " opens
  nmap <buffer> <CR> <Plug>(fern-action-open:select)
  nmap <buffer> H <Plug>(fern-action-open:split)
  nmap <buffer> V <Plug>(fern-action-open:vsplit)

  " file handling
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> M <Plug>(fern-action-move)
  nmap <buffer> N <Plug>(fern-action-new-path)
  nmap <buffer> dd <Plug>(fern-action-trash)

  " copy path
  nmap <buffer> y <Plug>(fern-action-yank:path)

  " manual refresh
  nmap <buffer> r <Plug>(fern-action-reload)

  " mark multiple files for another action
  nmap <buffer> m <Plug>(fern-action-mark)

  " cancel
  nmap <buffer> <Esc> <Plug>(fern-action-cancel)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

