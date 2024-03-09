local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- lspconfig.lua_ls.setup {
--   on_attach = function(client, _)
--     -- Opt out of semantic token highlighting.
--     client.server_capabilities.semanticTokensProvider = nil
--   end,
-- }

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "lua_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
