-- Keybindings:

-- Set shortcut key to build and view latex file (Plugin made by me)
vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  ":lua require('custom_plugins.latex_pdf_preview').build_and_view()<CR>",
  { noremap = true, silent = true }
)

-- Enable zen mode
vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })

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

-- Navigate between windows
vim.keymap.set("n", "<M-Left>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Down>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Up>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Right>", "<C-w>l", { noremap = true, silent = true })

-- Navigate between tabs
vim.keymap.set("n", "<C-Right>", ":bnext<CR>", { desc = "Next buffer with Ctrl+Right" })
vim.keymap.set("n", "<C-Left>", ":bprevious<CR>", { desc = "Previous buffer with Ctrl+Left" })

-- Fast horizontal movement (left/right) with Shift + Arrow keys in normal mode
vim.keymap.set("n", "<S-Right>", "7l", { noremap = true, silent = true })  -- Move 7 characters right
vim.keymap.set("n", "<S-Left>", "7h", { noremap = true, silent = true })   -- Move 7 characters left

-- Fast horizontal movement (left/right) with Shift + Arrow keys in visual mode
vim.keymap.set("v", "<S-Right>", "7l", { noremap = true, silent = true })  -- Move 7 characters right
vim.keymap.set("v", "<S-Left>", "7h", { noremap = true, silent = true })   -- Move 7 characters left

-- Fast vertical movement (up/down) with Shift + Arrow keys in normal mode
vim.keymap.set("n", "<S-Down>", "4j", { noremap = true, silent = true })   -- Move 4 lines down
vim.keymap.set("n", "<S-Up>", "4k", { noremap = true, silent = true })     -- Move 4 lines up

-- Fast vertical movement (up/down) with Shift + Arrow keys in visual mode
vim.keymap.set("v", "<S-Down>", "4j", { noremap = true, silent = true })   -- Move 4 lines down
vim.keymap.set("v", "<S-Up>", "4k", { noremap = true, silent = true })     -- Move 4 lines up

-- Fast vertical movement (up/down) with Shift + Arrow keys in insert mode
vim.keymap.set("i", "<S-Down>", "<C-o>4j", { noremap = true, silent = true })   -- Move 4 lines down
vim.keymap.set("i", "<S-Up>", "<C-o>4k", { noremap = true, silent = true })     -- Move 4 lines up

-- Esc to exit insert mode
vim.keymap.set("i", "<A-c>", "<Esc>", { noremap = true, silent = true })

-- Redo shortcut
vim.keymap.set("n", "<M-r>", "<C-r>", { noremap = true })

-- split window
vim.keymap.set("n", "ss", ":split", { noremap = true, silent = true })
vim.keymap.set("n", "sv", ":vsplit", { noremap = true, silent = true })

-- Increase vertical split width (Alt + Shift + Right Arrow)
vim.keymap.set('n', '<A-S-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })

-- Decrease vertical split width (Alt + Shift + Left Arrow)
vim.keymap.set('n', '<A-S-Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- Increase window height (Alt + Shift + Up Arrow)
vim.keymap.set('n', '<A-S-Down>', ':resize +2<CR>', { noremap = true, silent = true })

-- Decrease window height (Alt + Shift + Down Arrow)
vim.keymap.set('n', '<A-S-Up>', ':resize -2<CR>', { noremap = true, silent = true })

