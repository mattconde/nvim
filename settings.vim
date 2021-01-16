syntax enable

set autoindent                                                    " maintain indent of current line
set background=dark                                               " tell vim what the background color looks like
set backspace=indent,start,eol                                    " allow unrestricted backspacing in insert mode
set belloff=all                                                   " never ring the bell for any reason
set cmdheight=2                                                   " More space for displaying messages
set clipboard=unnamedplus                                         " Copy paste between vim and everything else
set colorcolumn=80                                                " Set highlighted column
set completeopt=menuone,noinsert,noselect                         " Disable auto insert when using nvim lsp
set conceallevel=0                                                " So that I can see `` in markdown files
set cursorline                                                    " Enable highlighting of the current line
set encoding=utf-8                                                " The encoding displayed 
set expandtab                                                     " Converts tabs to spaces
set fileencoding=utf-8                                            " The encoding written to file
set formatoptions-=cro                                            " Stop newline continution of comments
set guicursor=                                                    " Disable blinking for the n-v-c modes
set hidden                                                        " allows you to hide buffers with unsaved changes without being prompted
set incsearch
set iskeyword+=-                                                  " treat dash separated words as a word text object"
set list
set listchars=eol:¬
set listchars+=nbsp:⦸
set listchars+=space:·
set listchars+=tab:>-
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=trail:~
set mouse=a                                                       " enable mouse for all modes
set noswapfile
set nobackup                                                      " This is recommended by coc
set nowritebackup                                                 " This is recommended by coc
set undofile
set undodir=~/.config/nvim/undodir
set nowrap                                                        " Display long lines as just one line
set number                                                        " Line numbers
set pumheight=10                                                  " Makes popup menu smaller
set ruler                                                         " Show the cursor position all the time
set relativenumber                                                " Relative line numbers
set scrolloff=30                                                  " start scrolling n lines before edge of viewport
set splitbelow                                                    " Horizontal splits will automatically be below
set splitright                                                    " Vertical splits will automatically be to the right
set shiftwidth=2                                                  " Change the number of space characters inserted for indentation
set smarttab                                                      " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                                                   " Makes indenting smart
set showtabline=0                                                 " Disable tabline at the top
set shortmess+=c                                                  " Don't pass messages to ins-completion-menu
set signcolumn=yes                                                " Always show the signcolumn, otherwise it would shift the text each time
set t_Co=256                                                      " Support 256 colors
set tabstop=2 softtabstop=2                                       " Insert 2 spaces for a tab
set termguicolors
set updatetime=750                                                " Faster completion - default is 4000 ms

