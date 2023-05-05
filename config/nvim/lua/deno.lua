local lspconfig = require('lspconfig')
local navbuddy = require("nvim-navbuddy")
local cmp_nvim_lsp = require('cmp_nvim_lsp')

lspconfig.denols.setup({
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
  end,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})
