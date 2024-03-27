vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.scrolloff = 7
vim.opt.wrap = false
vim.opt.updatetime = 100
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.colorcolumn = "120"

-- neovide
vim.opt.guifont = "JetBrainsMono Nerd Font"
vim.g.neovide_cursor_vfx_mode = "railgun"

-- vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
--   callback = function()
--     vim.lsp.buf.document_highlight()
--   end,
-- })

vim.api.nvim_create_autocmd({ "CursorMoved" }, {
	callback = function()
		vim.lsp.buf.clear_references()
	end,
})
