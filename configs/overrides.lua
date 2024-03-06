local M = {}

M.treesitter = {
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
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
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
  },
}

-- git support in nvimtree
M.nvimtree = {
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
  },
}

M.telescope = {
  defaults = {
    layout_config = {
      horizontal = {
        prompt_position = "bottom"
      }
    }
  }
}

M.cmp = {
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
}

return M
