local dap = require "dap"

vim.fn.sign_define("DapBreakpoint", { text = "⬢", texthl = "Yellow", linehl = "", numhl = "Yellow" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "Green", linehl = "ColorColumn", numhl = "Green" })

dap.adapters.delve = {
  type = "server",
  port = "${port}",
  executable = {
    command = "dlv",
    args = { "dap", "-l", "127.0.0.1:${port}" },
  },
}

dap.adapters.go = dap.adapters.delve

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
  },
}

-- configurations
dap.configurations.go = {}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
  },
}

dap.configurations.c = dap.configurations.cpp

-- rust setup ----------------------------------------------------------------------------------------------------------
-- Get the path to `codelldb` installed by Mason.nvim
local codelldb_path = require("mason-registry").get_package("codelldb"):get_install_path() .. "/extension"
local codelldb_bin = codelldb_path .. "/adapter/codelldb"
-- local codelldb_bin = "/Users/kn/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/adapter/codelldb"

-- Configure the LLDB adapter
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = codelldb_bin,
    args = { "--port", "${port}" },
  },
}

return dap
