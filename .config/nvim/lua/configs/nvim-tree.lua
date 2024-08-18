return {
  git = { enable = false },
  filters = {
    custom = { 'node_modules', '.git', '.cache' },
    dotfiles = false,
    exclude = { '.github' },
  },
  view = {
    side = 'left',
  },
  renderer = { highlight_git = true },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = { enable = true },
}
