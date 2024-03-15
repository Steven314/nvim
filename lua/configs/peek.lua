local M = {}

M.keys = {
    {
    "<leader>lm",
        function()
        local peek = require("peek")
            if peek.is_open() then
        peek.close()
        else
        peek.open()
        end
    end,
    desc = "Peek (Markdown Preview)",
    },
}

M.opts = { theme = "dark", app = "browser" }

return M
