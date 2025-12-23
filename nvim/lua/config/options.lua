-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set the cursor style for different modes in Neovim
vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25-blinkwait300-blinkon200-blinkoff150",
  "r-cr:hor20",
  "o:hor50",
}

vim.opt.relativenumber = false
vim.opt.colorcolumn = "80"
vim.opt.cursorcolumn = false
-- vim.cmd([[ hi Normal guibg=NONE ]]) -- Enable the trans
vim.opt.mouse = ""
-- vim.opt.foldenable = false
-- vim.opt.signcolumn = "auto"
-- vim.opt.foldcolumn = "0"
-- vim.opt.foldcolumn = "auto"
