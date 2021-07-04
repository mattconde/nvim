-- encoding
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- ui
vim.o.syntax = "enable"
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.cmdheight = 2
vim.o.pumheight = 10
vim.o.cursorline = true
vim.o.colorcolumn = "80"
vim.o.signcolumn = "yes"
vim.o.showtabline = 0
vim.o.ruler = true
vim.o.guicursor = ""
vim.wo.number = true
vim.wo.relativenumber = false
vim.wo.cursorline = true
vim.o.conceallevel = 0
vim.o.list = true
vim.o.listchars = "eol:¬,nbsp:⦸,space:·,tab:>-,extends:>,precedes:<,trail:~"
vim.o.completeopt = "menuone,noselect"

-- behaviours
vim.o.incsearch = true
vim.o.clipboard = "unnamedplus"
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.belloff = "all"
-- undo
vim.o.undofile = true
vim.o.undodir = "/Users/gbmajaco/.config/nvim/undodir"
-- buffer
vim.o.hidden = true
-- indent / tab
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
-- wrapping
vim.o.wrap = false
vim.o.backspace = "indent,eol,start"
-- splitting
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 30
vim.o.mouse = "a"
-- iskeyword below is over written come time to use
-- vim.bo.iskeyword = vim.bo.iskeyword .. ",-"
vim.cmd('set iskeyword+=-')

-- times
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 50
vim.o.updatetime= 300
vim.o.shortmess = "Ic"
vim.o.laststatus = 2

