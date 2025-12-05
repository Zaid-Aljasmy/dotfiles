-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Redo shortcut
vim.keymap.set("n", "<M-r>", "<C-r>", { noremap = true })
-- Open the netrw file explorer
vim.keymap.set("n", "<leader>cd", ":Ex<CR>", { desc = "Open netrw file explorer" })
