local function buf_option(...)
  vim.api.nvim_buf_set_option(bufnr, ...)
end

local function on_attach(client)
  -- one day...
end

return on_attach
