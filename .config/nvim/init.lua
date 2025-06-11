-- Disable netrw banner
vim.g.netrw_banner = 0
-- copy line shortcut
vim.keymap.set("v", "<C-s>", '"+y')
-- Open the netrw file explorer
vim.keymap.set("n", "<leader>f", ":Ex<CR>", { desc = "Open netrw file explorer" })
-- Close the buffer tab 
vim.keymap.set("n", "<leader>x", "<cmd>bd!<CR>", { desc = "Force close buffer (bd!)" })
-- Set shortcut key to run python file
--vim.api.nvim_set_keymap('n', '<leader>r', ':w<CR>:!python3 %<CR>', { noremap = true, silent = true })
-- Compile the C++ code
vim.keymap.set("n", "<leader>g", function()
  vim.cmd("w")
  local filename = vim.fn.expand("%")
  local output = vim.fn.expand("%:r")
  local compile_cmd = string.format("g++ %s -o %s", filename, output)
  vim.cmd("! " .. compile_cmd)
end, { noremap = true, silent = true })
-- Set shortcut key to run C++ code
vim.keymap.set("n", "<leader>r", function()
  local output = vim.fn.expand("%:r")
  local run_cmd = string.format("./%s", output)
  vim.cmd("! " .. run_cmd)
end, { noremap = true, silent = true })

-- Silence lazy.nvim config reload warning
vim.notify_original = vim.notify
vim.notify = function(msg, ...)
  if msg:match("Re%-sourcing your config is not supported with lazy.nvim") then
    return
  end
  return vim.notify_original(msg, ...)
end
-- Load core config and initialize lazy.nvim plugin manager
require("config.lazy")
require("config.settings")
require("lazy").setup("plugins")
