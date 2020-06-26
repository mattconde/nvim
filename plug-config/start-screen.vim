let g:startify_custom_header = [
        \ '                                       __                        __  ',
        \ '        _____   ____     ____     ____/ /  ___          _____   / /_ ',
        \ '       / ___/  / __ \   / __ \   / __  /  / _ \        / ___/  / __ \',
        \ '      / /__   / /_/ /  / / / /  / /_/ /  /  __/  _    (__  )  / / / /',
        \ '      \___/   \____/  /_/ /_/   \__,_/   \___/  (_)  /____/  /_/ /_/ ',
        \ '                                                                     ',
        \ '                                                                     ',
        \]

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

let g:startify_bookmarks = [
            \ { 'c': '~/projects/conde.sh/' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'f': '~/.config/fish/config.fish' },
            \ ]

let g:startify_enable_special = 0

