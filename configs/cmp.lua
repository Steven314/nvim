local M = {}

M.dependencies = {
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        sort = false,
        show_prediciton_strength = true
      }
    end,
  },
}

return M
