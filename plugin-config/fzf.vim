let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Normal', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'

" Customize fzf colors to match your color scheme
let g:fzf_colors = {
\ 'fg': ['fg', 'Normal'],
\ 'bg': ['bg', 'Normal'],
\ 'hl': ['fg', 'Search'],
\ 'fg+': ['fg', 'Normal'],
\ 'bg+': ['bg', 'Normal'],
\ 'hl+': ['fg', 'DraculaOrange'],
\ 'info': ['fg', 'DraculaPurple'],
\ 'border': ['fg', 'Ignore'],
\ 'prompt': ['fg', 'DraculaGreen'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker': ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header': ['fg', 'Comment'] }

