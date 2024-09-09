local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    rust = { "rustfmt" },
    go = { "goimports", "gofumt" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "jq" },
    cpp = { "clang-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
