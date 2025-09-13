require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Crtl + S to save.
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Buffer Save" })

-- Transparency
map(
  { "n" },
  "<leader>tt",
  function()
    require("base46").toggle_transparency()
  end,
  { desc = "Toggle Transparency" }
)
