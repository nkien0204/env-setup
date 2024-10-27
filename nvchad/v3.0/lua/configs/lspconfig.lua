-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "rust_analyzer",
  "pyright",
  "gopls",
  "html",
  "ts_ls",
  "cssls",
  "yamlls",
  "angularls",
  "prismals",
  "taplo",
  "clangd",
}
local nvlsp = require "nvchad.configs.lspconfig"
local ooo = function(client, bufnr)
  nvlsp.on_attach(client, bufnr)
  -- need to map HERE because it will be overriden by system's LSP if we map in mappings.lua
  vim.keymap.set("n", "gd", ":Lspsaga goto_definition<CR>", { buffer = bufnr })
  vim.keymap.set("n", "gi", ":Lspsaga finder imp<CR>", { buffer = bufnr })
  vim.keymap.set("n", "gr", ":Lspsaga finder ref<CR>", { buffer = bufnr })
  vim.keymap.set("n", "gh", function()
    vim.lsp.buf.document_highlight()
  end)
  vim.keymap.set("n", "ga", ":Lspsaga code_action<CR>")
  vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>")
end

-- map("n", "gd", ":Lspsaga goto_definition<CR>")
-- map("n", "gi", ":Lspsaga finder imp<CR>")
-- map("n", "gr", ":Lspsaga finder ref<CR>")
-- map("n", "gh", function()
--   vim.lsp.buf.document_highlight()
-- end)
-- map("n", "ga", ":Lspsaga code_action<CR>")
-- map("n", "K", ":Lspsaga hover_doc<CR>")

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = ooo,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
