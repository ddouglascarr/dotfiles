-- lsp
local lspconfig = require'lspconfig'
local navbuddy = require("nvim-navbuddy")
local cmp_nvim_lsp = require('cmp_nvim_lsp')

lspconfig.tsserver.setup{
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
      -- prettier
      vim.cmd [[
        augroup PrettierOnSave
          autocmd!
          autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx :Prettier
        augroup END
      ]]
  end,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
}

lspconfig.denols.setup {
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
  end,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}


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

