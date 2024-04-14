local options = {
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true,
  },
}

require("nvim-tree").setup(options)
