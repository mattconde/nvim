" status options
set lazyredraw
set laststatus=2
set noshowmode

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

" background colors for terminal windows
exe 'hi NormalNC guibg='.s:bgdark

" active statusline groups 1-4
exe 'hi User1 gui=bold guibg='.s:bg.' guifg='.s:fg
exe 'hi User2 gui=bold guibg='.s:bg.' guifg='.s:fg
exe 'hi User3 gui=bold guibg='.s:bg.' guifg='.s:fg
exe 'hi User4 gui=bold guibg='.s:bg.' guifg='.s:fg

" not active statusline groups 5-8
exe 'hi User5 guibg='.s:bgdark.' guifg='.s:comment
exe 'hi User6 guibg='.s:bgdark.' guifg='.s:comment
exe 'hi User7 guibg='.s:bgdark.' guifg='.s:comment
exe 'hi User8 guibg='.s:bgdark.' guifg='.s:comment

function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi statusline guibg='.s:purple.' guifg='.s:bglight
    exe 'hi User1 gui=bold guibg='.s:purple.' guifg='.s:bgdarker
    exe 'hi User2 guibg='.s:purple.' guifg='.s:bglight
    exe 'hi User3 guibg='.s:purple.' guifg='.s:bglight
    exe 'hi User4 gui=bold guibg='.s:purple.' guifg='.s:bgdarker
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi statusline guibg='.s:yellow.' guifg='.s:bglight
    exe 'hi User1 gui=bold guibg='.s:yellow.' guifg='.s:bgdarker
    exe 'hi User2 guibg='.s:yellow.' guifg='.s:bglight
    exe 'hi User3 guibg='.s:yellow.' guifg='.s:bglight
    exe 'hi User4 gui=bold guibg='.s:yellow.' guifg='.s:bgdarker
  elseif (mode() ==# 'i')
    exe 'hi statusline guibg='.s:pink.' guifg='.s:bglight
    exe 'hi User1 gui=bold guibg='.s:pink.' guifg='.s:bgdarker
    exe 'hi User2 guibg='.s:pink.' guifg='.s:bglight
    exe 'hi User3 guibg='.s:pink.' guifg='.s:bglight
    exe 'hi User4 gui=bold guibg='.s:pink.' guifg='.s:bgdarker
  elseif (mode() ==# 'c')
    exe 'hi statusline guibg='.s:green.' guifg='.s:bglight
    exe 'hi User1 gui=bold guibg='.s:green.' guifg='.s:bgdarker
    exe 'hi User2 guibg='.s:green.' guifg='.s:bglight
    exe 'hi User3 guibg='.s:green.' guifg='.s:bglight
    exe 'hi User4 gui=bold guibg='.s:green.' guifg='.s:bgdarker
  else
    exe 'hi statusline guibg='.s:orange.' guifg='.s:bglight
    exe 'hi User1 gui=bold guibg='.s:orange.' guifg='.s:bgdarker
    exe 'hi User2 guibg='.s:orange.' guifg='.s:bglight
    exe 'hi User3 guibg='.s:orange.' guifg='.s:bglight
    exe 'hi User4 gui=bold guibg='.s:orange.' guifg='.s:bgdarker
  endif

  return ''
endfunction

" active
let s:a_statusline='%{ChangeStatuslineColor()}%1* %<%F%m%r%h%w %2* ‹‹ %Y ›› %= %3* ‹‹ %02v %02l/%L ›› %4* %{toupper(g:currentmode[mode()])} '
" inactive
let s:na_statusline='%5* %<%F%m%r%h%w '

" select which statusline to use
function! GetBufferStatus(w)
  return a:w==winnr() ? s:a_statusline : s:na_statusline
endfunction

" set status line
function! s:RefreshStatus()
  for i in range(1, winnr('$'))
    call setwinvar(i, '&statusline', '%!GetBufferStatus(' . i . ')')
  endfor
endfunction

autocmd VimEnter,WinEnter,BufWinEnter * call <SID>RefreshStatus()
