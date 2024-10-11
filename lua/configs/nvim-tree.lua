return {
  filters = { dotfiles = true },
  git = {
    enable = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      }
    },
    add_trailing = true,
    root_folder_label = ":~:s?$?/..?",
    -- indent_markers = { enable = true }
  }
}
