local quarto = require("quarto")

quarto.setup()

local map = vim.keymap.set

map(
  'n',
  '<leader>qp',
  quarto.quartoPreview,
  { silent = true, noremap = true}
)
