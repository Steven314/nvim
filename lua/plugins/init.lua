return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  --  "nvim-treesitter/nvim-treesitter",
  --  opts = {
  --    ensure_installed = {
  --      "vim", "lua", "vimdoc",
  --      "html", "css"
  --    },
  --  },
  -- },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree"
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope"
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy"
  }
}
