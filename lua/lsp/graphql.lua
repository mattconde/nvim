-- npm install -g graphql-language-service-cli

local on_attach = require'completion'.on_attach

require'lspconfig'.graphql.setup{ on_attach=on_attach }

