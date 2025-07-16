-- Keybindings:

-- Enable zen mode
vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
-- Disable netrw banner
vim.g.netrw_banner = 0
-- copy line shortcut
vim.keymap.set("v", "<M-s>", '"+y')
-- Open the netrw file explorer
vim.keymap.set("n", "<leader>f", ":Ex<CR>", { desc = "Open netrw file explorer" })
-- Close the buffer tab 
vim.keymap.set("n", "<leader>x", "<cmd>bd!<CR>", { desc = "Force close buffer (bd!)" })

-- Set shortcut key to run python file
vim.keymap.set("n", "<leader>q", function()
  vim.cmd("update")
  local filename = vim.fn.expand("%")
  vim.cmd('vsplit | terminal python3 ' .. filename)
  vim.cmd("startinsert")
end, { noremap = true, silent = true })

-- Set shortcut key to run & compile c++ file
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("update")
  local output = "./" .. vim.fn.expand("%:r")
  vim.cmd("vsplit | terminal g++ " .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r") .. " && " .. output)
  vim.cmd("startinsert")
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
