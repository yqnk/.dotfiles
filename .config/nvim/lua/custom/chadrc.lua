---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "decay",
  theme_toggle = { "decay", "decay" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
