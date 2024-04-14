local harpoon = require "harpoon"

require("telescope").load_extension "harpoon"

harpoon.setup {
  menu = {
    width = vim.api.nvim_win_get_width(0) - 4,
  },
  global_settings = {
    -- set marks specific to each git branch inside git repository
    mark_branch = true,
  },
  defaults = {
    path_display = { "truncate" },
  },
}

return harpoon
