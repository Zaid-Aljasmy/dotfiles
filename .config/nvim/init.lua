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
  vim.cmd("w")
  local filename = vim.fn.expand("%")

  vim.system({ "python3", filename }, { text = true }, function(obj)
    if obj.code == 0 then
      vim.notify("Output:\n" .. obj.stdout, vim.log.levels.INFO)
    else
      vim.notify("Error:\n" .. obj.stderr, vim.log.levels.ERROR)
    end
  end)
end, { noremap = true, silent = true })

-- Compile the C++ code
vim.keymap.set("n", "<leader>g", function()
  vim.cmd("w")
  local filename = vim.fn.expand("%")
  local output = vim.fn.expand("%:r")
  local compile_cmd = { "g++", filename, "-o", output }

  vim.system(compile_cmd, { text = true }, function(obj)
    if obj.code == 0 then
      vim.notify("Compilation succeeded", vim.log.levels.INFO)
    else
      vim.notify("Compilation failed:\n" .. obj.stderr, vim.log.levels.ERROR)
    end
  end)
end, { noremap = true, silent = true })

-- Set shortcut key to run C++ code
vim.keymap.set("n", "<leader>r", function()
  local output = "./" .. vim.fn.expand("%:r")

  vim.system({ output }, { text = true }, function(obj)
    if obj.code == 0 then
      vim.notify("Output:\n" .. obj.stdout, vim.log.levels.INFO)
    else
      vim.notify("Runtime error:\n" .. obj.stderr, vim.log.levels.ERROR)
    end
  end)
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
