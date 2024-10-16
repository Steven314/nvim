local M = {}

M.ui = {
  theme = "everblush",
  transparency = false,


  -- tabufline = {
  --   lazyload = false,
  --   show_numbers = true
  -- },

  cmp = { style = "default" },

  telescope = { style = "bordered" },

  statusline = {
    theme = "minimal",
    separator_style = "round"
  },


  nvdash = {
    load_on_startup = true,
    header = {
      " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
      " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
      " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
      " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
      " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
      " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
      "                    [ S.L. Carter ]                     "
    }
  },
}

return M
