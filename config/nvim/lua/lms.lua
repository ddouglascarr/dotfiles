local M = {}

--- Return the buffer number of a terminal named *TermScratch*.
--- @return integer|nil  buf number if found, nil otherwise
local function find_term_buf()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_option(bufnr, "buflisted") then
      local name = vim.fn.bufname(bufnr)
      if name == "TermScratch" then
        return bufnr
      end
    end
  end
end

--- Switch to the terminal buffer named *TermScratch* if it exists,
--- otherwise create a new terminal, rename its buffer and switch to it.
function M.switch_to_term_scratch()
  local bufnr = find_term_buf()

  if bufnr then
    -- terminal exists – just jump to it
    vim.api.nvim_set_current_buf(bufnr)
  else
    -- create a new terminal and rename it
    vim.cmd("terminal")
    bufnr = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_name(bufnr, "TermScratch")
  end
end


-- ------------------------------------------------------------------
-- Key‑binding: <leader>tt → switch_to_term_scratch()
-- ------------------------------------------------------------------
vim.api.nvim_set_keymap(
  "n",                 -- mode: normal
  "<leader>tt",        -- key sequence
  ":lua require('lms').switch_to_term_scratch()<CR>", -- command
  { noremap = true, silent = true }                   -- options
)

return M
