-- edits a file then opens it's contents in lms chat set up for gpt-oss-20b with custom prompt
local filename = ...
vim.cmd("e " .. filename)
local file_buf = vim.api.nvim_get_current_buf()
vim.api.nvim_create_autocmd("BufWritePost", {
  buffer = file_buf,
  once = true,
  callback = function()
    local f = io.open(filename, "r")
    local text = f:read("*a")
    f:close()
    vim.fn.termopen("pi \"`cat " .. filename .. " `\" ")
  end
})

