-- lsp
local lspconfig = require'lspconfig'
local navbuddy = require("nvim-navbuddy")

lspconfig.tsserver.setup{
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
  end
}

-- prettier
vim.cmd [[
  augroup PrettierOnSave
    autocmd!
    autocmd BufWritePre *.js,*.jsx,*.ts,*.tx :Prettier
  augroup END
]]

-- eslint
local null_ls = require("null-ls")
local eslint = require("eslint")

null_ls.setup()

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = true,
      types = { "directive", "problem", "suggestion", "layout" },
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})

