local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  -- python
  -- b.diagnostics.mypy.with { filetypes = { "python" } },
  b.diagnostics.ruff.with { filetypes = { "python" } },

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
