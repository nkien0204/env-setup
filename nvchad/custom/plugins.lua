local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "go",
        "cpp",
        "vim",
        "lua",
        "yaml",
        "rust",
        "bash",
        "python",
        "markdown",
        "javascript",
        "typescript",
        "markdown_inline",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "folke/which-key.nvim",
    lazy = false,
    config = function()
      local wk = require "which-key"
      wk.register(require "custom.configs.whichkey")
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    config = function()
      require("trouble").setup()
      require("core.utils").load_mappings "trouble"
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      require("diffview").setup()
      require("core.utils").load_mappings "diffview"
    end,
  },
  -- Debugger
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.nvim-dap"

      -- read config from .vscode/launch.json
      require("dap.ext.vscode").load_launchjs(".nvim/launch.json", { codelldb = { "c", "cpp", "rust", "go" } })
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    config = function()
      require("dapui").setup()
      require("core.utils").load_mappings "dapui"
    end,
    dependencies = {
      { "mfussenegger/nvim-dap" },
      { "theHamsta/nvim-dap-virtual-text" },
    },
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup()
      require("core.utils").load_mappings "hop"
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "ThePrimeagen/harpoon",
    require("core.utils").load_mappings "harpoon",
    config = function()
      require "custom.configs.harpoon"
    end,
  },
  {
    "fatih/vim-go",
    lazy = false,
    ft = { "go" },
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    init = function()
      require("core.utils").load_mappings "nvimtree"
    end,
    opts = function()
      return require "plugins.configs.nvimtree"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "nvimtree")
      opts.view.adaptive_size = true
      require("nvim-tree").setup(opts)
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "VeryLazy",
    require("core.utils").load_mappings "lspsaga",
    config = function()
      require("lspsaga").setup {}
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
  },
}

return plugins
