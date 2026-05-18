-- edits a file then opens it's contents in lms chat set up for gpt-oss-20b with custom prompt
local filename = ...
vim.cmd("e " .. filename)
local file_buf = vim.api.nvim_get_current_buf()
vim.api.nvim_create_autocmd("BufWritePost", {
  buffer = file_buf,
  once = true,
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(file_buf, 0, -1, false)
    local text = table.concat(lines, "\n") .. "\n"
    -- vim.cmd("split")
    local t = vim.fn.termopen(vim.fn.expand("~/.local/bin/lmsgpt"))
    vim.defer_fn(function()
      vim.fn.chansend(t, text)
    end, 500)
  end
})

