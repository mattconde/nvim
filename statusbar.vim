" colors
let s:bg       = g:dracula#palette.bg[0]
let s:bglight  = g:dracula#palette.bglight[0]
let s:bglighter= g:dracula#palette.bglighter[0]
let s:bgdark   = g:dracula#palette.bgdark[0]
let s:bgdarker = g:dracula#palette.bgdarker[0]
let s:fg       = g:dracula#palette.fg[0]
let s:selection= g:dracula#palette.selection[0]
let s:comment  = g:dracula#palette.comment[0]
let s:cyan     = g:dracula#palette.cyan[0]
let s:green    = g:dracula#palette.green[0]
let s:orange   = g:dracula#palette.orange[0]
let s:pink     = g:dracula#palette.pink[0]
let s:purple   = g:dracula#palette.purple[0]
let s:red      = g:dracula#palette.red[0]
let s:yellow   = g:dracula#palette.yellow[0]

" Background colors for terminal windows
exe 'hi NormalNC guibg='.s:bgdark.' guifg='.s:comment
exe 'hi StatusLineNC guibg='.s:bgdark.' guifg='.s:comment

let g:currentmode={
      \ 'n'   : 'Normal',
      \ 'no'  : 'N·Operator Pending',
      \ 'v'   : 'Visual',
      \ 'V'   : 'V·Line',
      \ 'x22' : 'V·Block',
      \ 's'   : 'Select',
      \ 'S'   : 'S·Line',
      \ 'x19' : 'S·Block',
      \ 'i'   : 'Insert',
      \ 'R'   : 'Replace',
      \ 'Rv'  : 'V·Replace',
      \ 'c'   : 'Command',
      \ 'cv'  : 'Vim Ex',
      \ 'ce'  : 'Ex',
      \ 'r'   : 'Prompt',
      \ 'rm'  : 'More',
      \ 'r?'  : 'Confirm',
      \ '!'   : 'Shell',
      \ 't'   : 'Terminal'
      \}

" set local statusline for fern buffers
au FileType fern setlocal statusline=%5*\\
exe 'hi User5 guibg='.s:bg.' guifg='.s:bg

exe 'hi statusline guibg='.s:purple.' guifg='.s:comment
exe 'hi User1 guibg='.s:bg.' guifg='.s:comment
exe 'hi User2 gui=bold'
exe 'hi User3 gui=bold'

function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi statusline guibg='.s:purple.' guifg='.s:comment
    exe 'hi User1 guibg='.s:purple.' guifg='.s:bg
    exe 'hi User2 gui=bold guibg='.s:purple.' guifg='.s:bg
    exe 'hi User3 gui=bold guibg='.s:purple.' guifg='.s:bg
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi statusline guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User1 guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User2 gui=bold guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User3 gui=bold guibg='.s:yellow.' guifg='.s:bg
  elseif (mode() ==# 'i')
    exe 'hi statusline guibg='.s:green.' guifg='.s:bg
    exe 'hi User1 guibg='.s:green.' guifg='.s:bg
    exe 'hi User2 gui=bold guibg='.s:green.' guifg='.s:bg
    exe 'hi User3 gui=bold guibg='.s:green.' guifg='.s:bg
  elseif (mode() ==# 'c')
    exe 'hi statusline guibg='.s:pink.' guifg='.s:bg
    exe 'hi User1 guibg='.s:pink.' guifg='.s:bg
    exe 'hi User2 gui=bold guibg='.s:pink.' guifg='.s:bg
    exe 'hi User3 gui=bold guibg='.s:pink.' guifg='.s:bg
  else
    exe 'hi statusline guibg='.s:orange.' guifg='.s:bg
    exe 'hi User1 guibg='.s:orange.' guifg='.s:bg
    exe 'hi User2 gui=bold guibg='.s:orange.' guifg='.s:bg
    exe 'hi User3 gui=bold guibg='.s:orange.' guifg='.s:bg
  endif

  return ''
endfunction

set lazyredraw
set laststatus=2
set noshowmode
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%1*\                                     " Space
set statusline+=%2*\%<%F%m%r%h%w                         " File path, modified, readonly, helpfile, preview
set statusline+=%1*\ ‹‹                                  " Separator
set statusline+=%1*\ %Y                                  " Filetype
set statusline+=%1*\ ››                                  " Separator
set statusline+=%=                                       " Right Side
set statusline+=%1*\ ‹‹                                  " Separator
set statusline+=%1*\ %02v\ %02l/%L                       " Column Line TotalLines
set statusline+=%1*\ ››                                  " Separator
set statusline+=%3*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%1*\                                     " Space

