return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "configs.lspconfig"
      require("nvchad.configs.lspconfig").defaults()
    end, -- Override to setup mason-lspconfig
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- python stuff
        "mypy",
        "ruff",
        "pyright",
        "debugpy",
      }
    }
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "bottom"
          }
        }
      }
    }
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
        add_trailing = true,
        root_folder_label = true,
        indent_markers = { enable = true },
      }
    }
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({

      })
    end
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    -- config = function()
    --   dofile(vim.g.base46_cache .. "rainbowdelimiters")
    --   require('nvchad.integrations.rainbow-delimiters.setup').setup {
    --     -- query = {
    --     --   latex = 'rainbow-blocks',
    --     -- }
    --   }
    -- end
  },

  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    config = function()
      dofile(vim.g.base46_cache .. "codeactionmenu")
    end
  },

  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup({
        debounce_delay = 1000
      })
    end
  },

  {
    "lervag/vimtex",
    ft = "tex",
    init = function()
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_latexmk = {
        options = {
          '-shell-escape'
        }
      }
    end,
  },

  -- python specific
  {
    "mfussenegger/nvim-dap",
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap"
    },
    config = function()
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },

  -- Markdown
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = require("configs.peek").keys,
    opts = require("configs.peek").opts
  },

  -- C++
  {
    'cdelledonne/vim-cmake',
    ft = "cpp",
    init = function()
      vim.g.cmake_link_compile_commands = 1
    end
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    lazy = false,
    config = function()
      local harpoon = require('harpoon')
      harpoon:setup({})

      -- basic telescope configuration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
          end

          require("telescope.pickers").new({}, {
              prompt_title = "Harpoon",
              finder = require("telescope.finders").new_table({
                  results = file_paths,
              }),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
          }):find()
      end

      vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
          { desc = "Open harpoon window" })

     end
  },
  
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "cmp_tabnine" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
      },
      mapping = {
        ["<C-g>"] = function()
          local cmp = require("cmp")

          if cmp.visible_docs() then
            cmp.close_docs()
          else
            cmp.open_docs()
          end
        end
      },
      experimental = {
        ghost_text = true
      },
      window = {
        documentation = require("cmp").config.window.bordered()
      }
    },
    dependencies = {
      "tzachar/cmp-tabnine",
      build = "./install.sh",
      config = function()
        local tabnine = require "cmp_tabnine.config"
        tabnine:setup {
          sort = false,
          show_prediciton_strength = true
        }
      end,
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "latex"
      },
      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
      },
    },
  },
}
