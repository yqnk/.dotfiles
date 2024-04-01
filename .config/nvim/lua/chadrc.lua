---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tomorrow_night",
  transparency = true,
  cmp = {
    style = "default",
    icons = true,
    selected_item_bg = "simple",
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
}

return M
