-- lsp
local navbuddy = require("nvim-navbuddy")
local cmp_nvim_lsp = require('cmp_nvim_lsp')

vim.lsp.config('ts_ls', {
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
  single_file_support = false,
})

vim.lsp.config('denols', {
  on_attach = function(client, bufnr)
      navbuddy.attach(client, bufnr)
  end,
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, {"deno.json", "deno.jsonc"})
    if root then
      on_dir(root)
    end
  end,
  lint = true,
})

vim.lsp.config('ruby_lsp', {})
vim.lsp.enable({'ts_ls', 'denols', 'ruby_lsp'})


-- eslint
local tbl_add_reverse_lookup = vim.tbl_add_reverse_lookup
local tbl_islist = vim.tbl_islist
vim.tbl_add_reverse_lookup = function(tbl)
  for k, v in pairs(tbl) do
    tbl[v] = k
  end
  return tbl
end
vim.tbl_islist = vim.islist
local eslint = require("eslint")

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
vim.tbl_add_reverse_lookup = tbl_add_reverse_lookup
vim.tbl_islist = tbl_islist
