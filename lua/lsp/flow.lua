-- npm install -g flow-bin

local on_attach = require'completion'.on_attach

require'lspconfig'.flow.setup{ on_attach=on_attach }
