local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },

    -- Don't define so conform falls back to LSP
    -- c = { "clang_format" },
    -- h = { "clang_format" },
    -- cpp = { "clang_format" },

    rust = { "rustfmt" }, -- its not fucking deprecated
  },
  formatters = {
    shfmt = { prepend_args = { "-i", "4" } },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
  -- log_level = vim.log.levels.ERROR,
}

require("conform").setup(options)
