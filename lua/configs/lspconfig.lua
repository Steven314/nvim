require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  tinymist = {
    filetypes = { "typst" }
  },
  markdown_oxide = {
    filetypes = { "markdown" }
  },
  lua = {
    filetypes = { "lua" }
  }
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
