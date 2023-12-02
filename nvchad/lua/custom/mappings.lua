vim.keymap.set("n", "p", '"0p', {})
vim.keymap.set("n", "t", '""p', {})
vim.keymap.set({ "n", "v" }, "gy", '"+y', {})
vim.keymap.set("n", "<C-t>", ":ToggleTerm direction=float<CR>", {})

local M = {}

M.disabled = {
  n = {
    ["<leader>b"] = "",
    ["<leader>D"] = "",
    ["<leader>n"] = "",
    ["<leader>q"] = "",
    ["<leader>g"] = "",
    ["<leader>r"] = "",
    ["<leader>x"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
}

M.harpoon = {
  plugin = true,

  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "add file",
    },
    ["<leader>hr"] = {
      function()
        require("harpoon.mark").rm_file()
      end,
      "add file",
    },
    ["<leader>he"] = {
      ":Telescope harpoon marks<CR>",
      "toggle menu",
    },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    ["<leader>xx"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close current buffer",
    },
    ["<leader>xa"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Close all buffers",
    },
    ["<leader>xe"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
      end,
      "Close all buffers except current",
    },
    ["<leader>xl"] = {
      function()
        require("nvchad.tabufline").closeBufs_at_direction "left"
      end,
      "Close all left side buffers",
    },
    ["<leader>xr"] = {
      function()
        require("nvchad.tabufline").closeBufs_at_direction "right"
      end,
      "Close all right side buffers",
    },
  },
}

M.whichkey = {
  plugin = true,

  n = {
    ["<leader>wK"] = {
      function()
        vim.cmd "WhichKey"
      end,
      "Which-key all keymaps",
    },
    ["<leader>wk"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "Which-key query lookup",
    },
  },
}

M.trouble = {
  plugin = true,

  n = {
    ["<leader>rx"] = {
      "<cmd>TroubleToggle<CR>",
      "Trouble toggle",
    },
    ["<leader>rw"] = {
      "<cmd>TroubleToggle workspace_diagnostics<CR>",
      "Trouble in workspace",
    },
    ["<leader>rd"] = {
      "<cmd>TroubleToggle document_diagnostics<CR>",
      "Trouble in current file",
    },
    ["<leader>rl"] = {
      "<cmd>TroubleToggle loclist<CR>",
      "Trouble location list",
    },
    ["<leader>rq"] = {
      "<cmd>TroubleToggle quickfix<CR>",
      "Trouble quickfix",
    },
    ["<leader>rr"] = {
      "<cmd>TroubleToggle lsp_references<CR>",
      "Trouble references",
    },
  },
}

M.hop = {
  plugin = true,

  n = {
    ["<leader>q"] = {
      "<cmd>HopWord<CR>",
      "Hop",
    },
  },
}

M.diffview = {
  plugin = true,

  n = {
    ["<leader>gdo"] = {
      "<cmd>DiffviewOpen<CR>",
      "Diff view open",
    },
    ["<leader>gdc"] = {
      "<cmd>DiffviewClose<CR>",
      "Diff view close",
    },
    ["<leader>gdr"] = {
      "<cmd>DiffviewRefresh<CR>",
      "Diff view refresh",
    },
  },
}

M.dapui = {
  plugin = true,

  n = {
    ["<leader>do"] = {
      function()
        require("dapui").open()
      end,
      "Open debugger",
    },
    ["<leader>dx"] = {
      function()
        require("dapui").close()
      end,
      "Close debugger",
    },
    ["<leader>dt"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle menu debugger",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle break point",
    },
    ["<leader>dB"] = {
      function()
        require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
      end,
      "Toggle break point with log message",
    },
    ["<leader>dD"] = {
      function()
        require("dap").clear_breakpoints()
      end,
      "Clear all break points",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue debugging",
    },
    ["<leader>du"] = {
      function()
        require("dap").step_over()
      end,
      "Step over debugging",
    },
    ["<leader>di"] = {
      function()
        require("dap").step_into()
      end,
      "Step into debugging",
    },
    ["<leader>dI"] = {
      function()
        require("dap").step_out()
      end,
      "Step out debugging",
    },
  },
}

return M
