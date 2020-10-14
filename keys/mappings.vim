" MAPPINGS
let mapleader = " "
nnoremap <Space> <Nop>

" TAB will move to next buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go to the previous buffer
nnoremap <silent> <S-TAB> :bprevious<CR>

" use Esc less hopefully
inoremap jk <Esc>

" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" make X behave like d without adding removed data to a register
nnoremap X "_d
nnoremap XX "_dd
vnoremap X "_d
vnoremap x "_d
nnoremap x "_d

" search
nnoremap <C-g> :lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<CR>

" search word
nnoremap <C-f> :lua require('telescope.builtin').grep_string(require('telescope.themes').get_dropdown({ search = vim.fn.expand("<cword>") }))<CR>

" explore files
nnoremap <C-p> :lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({}))<CR>

" move selected or current lines up and down
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

xnoremap <silent> K :call Move_up()<CR>
xnoremap <silent> J :call Move_down()<CR>

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

" avoid unintentional switches to Ex mode.
nnoremap Q <nop>
