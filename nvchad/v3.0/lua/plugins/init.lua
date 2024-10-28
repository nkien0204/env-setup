return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
      },
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
        "prisma",
      },
    },
  },

  {
    "folke/which-key.nvim",
    lazy = false,
    config = function()
      local wk = require "which-key"
      wk.add(require "configs.whichkey")
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
    end,
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
    config = function()
      require("diffview").setup()
    end,
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.nvim-dap"

      -- read config from .vscode/launch.json
      require("dap.ext.vscode").load_launchjs(".nvim/launch.json", { codelldb = { "c", "cpp", "rust", "go" } })
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    config = function()
      require("dapui").setup()
    end,
    dependencies = {
      { "mfussenegger/nvim-dap" },
      { "theHamsta/nvim-dap-virtual-text" },
      { "nvim-neotest/nvim-nio" },
    },
  },

  {
    "phaazon/hop.nvim",
    lazy = false,
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup()
    end,
  },

  {
    "nvim-lua/plenary.nvim",
  },

  {
    "ThePrimeagen/harpoon",
    config = function()
      require "configs.harpoon"
    end,
  },

  {
    "fatih/vim-go",
    lazy = false,
    ft = { "go" },
  },

  {
    "nvimdev/lspsaga.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.lsp-saga"
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

  {
    "github/copilot.vim",
    event = "VeryLazy",
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    event = "VeryLazy",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = true, -- Enable debugging
    },
    keys = {
      { "<leader>co", ":CopilotChat ", desc = "CopilotChat - Chat with Copilot" },
      { "<leader>cl", ":CopilotChatToggle<CR>", desc = "Toggle Copilot Chatbox" },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "configs.nvim-tree"
    end,
  },

  { "echasnovski/mini.icons", version = false },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    opts = {
      open_mapping = [[<c-\>]],
      insert_mappings = true,
      terminal_mappings = true,
      on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<D-v>", [[<C-\><C-n>"+p]], { noremap = true, silent = true })
      end,
    },
  },

  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require "configs.nvim-cmp"
    end,
  },
}
