return {
  auto_install = true,
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "shfmt",

    -- cpp
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",

    -- make etc
    "autotools-language-server", -- autotools_ls
    "cmake-language-server",
  },
}
