local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

packer.startup(function()
  local use = use
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use {
    "SmiteshP/nvim-navbuddy",
    requires = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
        "nvim-telescope/telescope.nvim" -- Optional
    }
  }

  -- fzf
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- typescript
  use {'prettier/vim-prettier', run = 'npm install' }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/eslint.nvim'

  -- copilot
  use 'github/copilot.vim'

  -- zettle
  use 'vimwiki/vimwiki'
  use 'michal-h21/vim-zettel'

  -- snippets

  use 'dcampos/nvim-snippy'

  end
)
