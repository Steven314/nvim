---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle Transparency"
    },


    -- Open Custom Settings
    ["<leader>,"] = { "<cmd> cd /home/steven/.config/nvim/lua/custom <CR>", "Open NvChad Settings" },
  },

  -- Save with Crtl-S
  i = {
    ["<C-s>"] = { "<cmd> w <CR>", "Save Current Buffer" }
  },

  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- Keybinds for switching buffers, Alt+(number)
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle File Tree" },
    ["<leader>o"] = { "<cmd> NvimTreeFocus <CR>", "Focus File Tree" }
  }
}

M.vimtex = {
  plugin = true,

  n = {
    ["<leader>lc"] = { "<cmd> VimtexCompile <CR>", "Compile LaTeX" },
    ["<leader>lv"] = { "<cmd> VimtexView <CR>", "View PDF" },
  }
}


require("core.utils").load_mappings("vimtex")

return M
