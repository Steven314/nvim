local configs = require("nvchad.configs.lspconfig")

local on_attach    = configs.on_attach
local on_init      = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers   = { "html", "cssls", "tsserver", "pyright", "r_language_server" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.ltex.setup {
  on_init        = on_init,
  on_attach      = on_attach,
  capabilities   = capabilities,
  settings = {
      ltex = { checkFrequency = "save" }
  }
}

lspconfig.marksman.setup {
  on_init      = on_init,
  on_attach    = on_attach,
  capabilities = capabilities,
  filetypes    = { 'markdown', '.qmd' },
  root_dir = lspconfig.util.root_pattern('.git', '.marksman.toml', '_quarto.yml')
}

-- require("mason").setup()
-- require("mason-lspconfig").setup()
-- require("mason-lspconfig").setup_handlers({
--   ["ltex"] = function()
--     
-- })
