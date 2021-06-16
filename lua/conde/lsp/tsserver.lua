-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}
