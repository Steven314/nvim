local typst = require("typst-preview")

typst.setup()

local map = vim.keymap.set

map(
  'n',
  '<leader>tp',
  '<cmd> TypstPreview <cr>',
  { desc = "Typst Preview" }
)

map(
  'n',
  '<leader>tr',
  '<cmd> !typst compile % <cr>',
  { desc = "Typst Render" }
)
