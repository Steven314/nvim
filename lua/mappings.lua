require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Control Backspace
map("i", "<C-H>", "<C-w>")

-- Toggle Transparency
map(
  "n",
  "<leader>tt",
  function()
    require("base46").toggle_transparency()
  end,
  { desc = "Toggle Transparency" }
)

-- Crtl+S to save
map({"n", "i"}, "<C-s>", "<cmd> w <CR>", { desc = "Nvim Save" })

-- CD into the settings directory on Windows or Linux
if vim.loop.os_uname().sysname == "Windows_NT" then
  SETTINGS_PATH = os.getenv("LOCALAPPDATA") .. "/nvim"
else
  SETTINGS_PATH = "~/.config/nvim"
end

map({"n"}, "<leader>,", "<cmd> cd " .. SETTINGS_PATH .. "<CR>", { desc = "Nvim Open Settings" })

