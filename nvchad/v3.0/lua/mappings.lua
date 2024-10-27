require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- clipboard
map("n", "p", '"0p', {})
map("n", "t", '""p', {})
map({ "n", "v" }, "gy", '"+y', {})
map("n", "<D-v>", '"+p', {})

-- nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- lspsaga
-- other mappings are set in lspconfig.lua
vim.g.go_doc_keywordprg_enabled = 0

-- harpoon
map("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
map("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
map("n", "<leader>hr", ":lua require('harpoon.mark').rm_file()<CR>")
map("n", "<leader>he", ":Telescope harpoon marks<CR>")

-- tabufline
map("n", "<leader>xx", ":lua require('nvchad.tabufline').close_buffer()<CR>")
map("n", "<leader>xa", ":lua require('nvchad.tabufline').closeAllBufs()<CR>")
map("n", "<leader>xe", ":lua require('nvchad.tabufline').closeOtherBufs()<CR>")
map("n", "<leader>xl", ":lua require('nvchad.tabufline').closeBufs_at_direction ('left')<CR>")
map("n", "<leader>xr", ":lua require('nvchad.tabufline').closeBufs_at_direction ('right')<CR>")

-- trouble
map("n", "<leader>rx", "<cmd>Trouble diagnostics toggle<CR>")

-- hop
map("n", "<leader>q", "<cmd>HopWord<CR>")

-- diffview
map("n", "<leader>gdo", "<cmd>DiffviewOpen<CR>")
map("n", "<leader>gdc", "<cmd>DiffviewClose<CR>")
map("n", "<leader>gdr", "<cmd>DiffviewRefresh<CR>")
map("n", "<leader>gdh", "<cmd>DiffviewFileHistory<CR>")

-- gitsigns
map("n", "<leader>gb", ":Gitsigns blame_line<CR>")

-- dapui
map("n", "<leader>do", ":lua require('dapui').open()<CR>")
map("n", "<leader>dx", ":lua require('dapui').close()<CR>")
map("n", "<leader>dt", ":lua require('dapui').toggle()<CR>")
map("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>")
map("n", "<leader>dD", ":lua require('dap').clear_breakpoints()<CR>")
map("n", "<leader>dc", ":lua require('dap').continue()<CR>")
map("n", "<leader>du", ":lua require('dap').step_over()<CR>")
map("n", "<leader>di", ":lua require('dap').step_into()<CR>")
map("n", "<leader>dI", ":lua require('dap').step_out()<CR>")

-- Disable mappings
local nomap = vim.keymap.del
nomap("n", "<leader>h")
