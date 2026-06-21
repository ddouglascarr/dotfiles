local navbuddy = require("nvim-navbuddy")
local cmp_nvim_lsp = require('cmp_nvim_lsp')

vim.lsp.config('gopls', {
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
  end,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

vim.lsp.enable('gopls')
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP rename" })

