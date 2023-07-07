local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "cssls", "cssmodules_ls", "html", "gopls", "bashls", "denols", "solang" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["pylsp"].setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W291', 'E303', 'E302','E266', 'W293', "E301", "E501", "W391"}
        }
      }
    }
  }
}
