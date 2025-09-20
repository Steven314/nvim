local opts = function()
  local options = require("nvchad.configs.cmp")
  local cmp = require("cmp")

  options.completion = { completeopt = "menu,menuone,noselect" }
  options.mapping["<CR>"] = cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.insert,
    select = false,
  })

  return options
end

return opts
