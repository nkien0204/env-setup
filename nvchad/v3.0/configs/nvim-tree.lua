local options = {
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    adaptive_size = true,
  },
}

require("nvim-tree").setup(options)
