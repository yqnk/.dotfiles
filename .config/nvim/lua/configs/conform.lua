local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },

    c = { "clang_format" },
    h = { "clang_format" },
    cpp = { "clang_format" },

    rust = { "rustfmt" },
  },
  formatters = {
    shfmt = { prepend_args = { "-i", "4" } }
  },
  format_on_save = {
     -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
  },
  -- log_level = vim.log.levels.ERROR,
}

require("conform").setup(options)
