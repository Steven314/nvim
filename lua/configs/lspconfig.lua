require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  tinymist = {
    filetypes = { "typst" },
    settings = {
      formatterMode = "typstyle",
      exportPdf = "onType",
      semanticTokens = "disable"
    }
  },
  markdown_oxide = {
    filetypes = { "markdown" }
  },
  lua = {
    filetypes = { "lua" }
  },
  jsonls = {}
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
