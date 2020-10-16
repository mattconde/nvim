" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['%'] = [ ':source ~/.config/nvim/init.vim'               , 'source %' ]
let g:which_key_map['a'] = [ ':set nohlsearch'                               , 'clear selection highlights']
let g:which_key_map['b'] = [ ':Buffers'                                      , 'search open buffers']
let g:which_key_map['c'] = [ ':Commands'                                     , 'search commands']
let g:which_key_map['d'] = [ ':bdelete'                                      , 'delete buffer']
let g:which_key_map['e'] = [ ':Fern . -drawer -reveal=% -toggle'             , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                        , 'split below' ]
let g:which_key_map['q'] = [ 'q'                                             , 'quit' ]
let g:which_key_map['v'] = [ '<C-W>v'                                        , 'split right' ]
let g:which_key_map['w'] = [ 'w'                                             , 'write' ]

" Group mappings
"" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ }

"" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : [':FloatermNew'                                   , 'terminal'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

