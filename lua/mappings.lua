require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

-- map("i", "ne", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-H>", "<C-w>")

-- Toggle Transparency
map("n", "<leader>tt", function ()
  require("base46").toggle_transparency()
end, { desc = "Toggle Transparency" })

-- TMUX Navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>",  { desc = "TMUX Window Left"  })
map("n", "<C-i>", "<cmd> TmuxNavigateRight<CR>", { desc = "TMUX Window Right" })
map("n", "<C-n>", "<cmd> TmuxNavigateDown<CR>",  { desc = "TMUX Window Down"  })
map("n", "<C-e>", "<cmd> TmuxNavigateUp<CR>",    { desc = "TMUX Window Up"    })

-- Control+S to save
map( {"n", "i"}, "<C-s>", "<cmd> w <CR>", { desc = "Nvim Save" })

-- Open NvChad Settings
map("n", "<leader>,", "<cmd> cd ~/.config/nvim/lua <CR>", { desc = "NvChad Open Lua Folder" })

-- Indentation
-- map("v", ">", ">gv", { desc = "Indentation More" })
-- map("v", "<", "<gv", { desc = "Indentation Less" })

-- NvimTree
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "NvimTree Toggle File Tree" })
map("n", "<leader>o", "<cmd> NvimTreeFocus <CR>",  { desc = "NvimTree Focus File Tree"  })

-- VimTeX
map("n", "<leader>lc", "<cmd> VimtexCompile <CR>", { desc = "VimTeX Compile PDF" })
map("n", "<leader>lv", "<cmd> VimtexView <CR>",    { desc = "VimTeX View PDF"    })

-- Harpoon
-- map("n", "<leader>a", function() require("harpoon"):list():append() end, { desc = "Harpoon Append to List"   })
-- map("n", "<leader>d", function() require("harpoon"):list():remvoe() end, { desc = "Harpoon Remove From List" })
