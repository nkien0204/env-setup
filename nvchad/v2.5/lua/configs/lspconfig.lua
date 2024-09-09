-- disable because i'm using lsp-saga's configuration instead

-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
-- local capabilities = require("nvchad.configs.lspconfig").capabilities

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

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = on_attach,
    -- on_init = on_init,
    -- capabilities = capabilities,
  }
end
