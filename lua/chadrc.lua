-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everforest",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    TelescopePromptTitle = { bg = "black", fg = "red" },
    TelescopeResultsTitle = { bg = "black", fg = "green" },
    TelescopePreviewTitle = { bg = "black", fg = "blue" },
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round"
  },

  cmp = { style = "default" },

  telescope = { style = "bordered" }
}

M.nvdash = {
  load_on_startup = true
}

return M
