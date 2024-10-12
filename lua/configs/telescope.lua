return {
  defaults = {
    layout_config = {
      horizontal = {
        prompt_position = "bottom"
      },

    },

    mappings = {
      i = {
        ["<esc>"] = require("telescope.actions").close
      }
    }
  }
}
