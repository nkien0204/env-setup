local conform = require "conform"

conform.setup {
  formatters_by_ft = {
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { "prettier" },
    typescript = { "prettier" },
    lua = { "stylua" },
    rust = { "rustfmt" },
    go = { "goimports", "gofumt" },
  },
  format_on_save = {
    timeout_ms = 500,
    async = false,
    lsp_fallback = true,
  },
  formatters = {
    rustfmt = {
      command = "rustfmt",
      args = { "--edition", "2021" },
    },
    gofmt = {
      command = "goimports",
    },
  },
}
