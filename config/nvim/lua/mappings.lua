vim.api.nvim_set_keymap('n', '<leader>n','<cmd>Explore<cr>', { noremap = true, silent = true })

-- fzf
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>History<cr>', { noremap = true, silent = true })


