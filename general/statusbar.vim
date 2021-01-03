" colors
let s:bg       = g:dracula#palette.bg[0]
let s:bglight  = g:dracula#palette.bglighter[0]
let s:bgdark   = g:dracula#palette.bgdarker[0]
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

function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi statusline guibg='.s:bg.' guifg='.s:comment
    exe 'hi User1 guibg='.s:bg.' guifg='.s:pink
    exe 'hi User2 guibg='.s:bg.' guifg='.s:comment
    exe 'hi User3 guibg='.s:bg.' guifg='.s:bglight
    exe 'hi User4 guibg='.s:bg.' guifg='.s:comment
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi statusline guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User1 guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User2 guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User3 guibg='.s:yellow.' guifg='.s:bg
    exe 'hi User4 guibg='.s:yellow.' guifg='.s:bg
  elseif (mode() ==# 'i')
    exe 'hi statusline guibg='.s:purple.' guifg='.s:bg
    exe 'hi User1 guibg='.s:purple.' guifg='.s:bg
    exe 'hi User2 guibg='.s:purple.' guifg='.s:bg
    exe 'hi User3 guibg='.s:purple.' guifg='.s:bg
    exe 'hi User4 guibg='.s:purple.' guifg='.s:bg
  elseif (mode() ==# 'c')
    exe 'hi statusline guibg='.s:pink.' guifg='.s:bg
    exe 'hi User1 guibg='.s:pink.' guifg='.s:bg
    exe 'hi User2 guibg='.s:pink.' guifg='.s:bg
    exe 'hi User3 guibg='.s:pink.' guifg='.s:bg
    exe 'hi User4 guibg='.s:pink.' guifg='.s:bg
  else
    echo 'WARNING: Displaying Orange statusline for mode: '.mode()
    exe 'hi statusline guibg='.s:orange.' guifg='.s:bg
    exe 'hi User1 guibg='.s:orange.' guifg='.s:bg
    exe 'hi User2 guibg='.s:orange.' guifg='.s:bg
    exe 'hi User3 guibg='.s:orange.' guifg='.s:bg
    exe 'hi User4 guibg='.s:orange.' guifg='.s:bg
  endif

  return ''
endfunction

set lazyredraw
set laststatus=2
set noshowmode
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

