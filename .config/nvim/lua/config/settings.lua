-- settings.lua
vim.cmd("language en_US.UTF-8")
vim.opt.mouse = ""
vim.opt.number = true 
vim.opt.relativenumber = false 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.cmd([[ hi Normal guibg=NONE ]]) -- Enable the trans
vim.opt.termguicolors = true  
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false
vim.opt.colorcolumn = ""
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmode = false
vim.opt.ruler = false
-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
-- Restore cursor position:
vim.cmd([[
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
]])

-- Set the cursor style for different modes in Neovim
vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25-blinkwait300-blinkon200-blinkoff150",
  "r-cr:hor20",
  "o:hor50",
}
-- Set syntax highlighting for .cpp files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.cmd("syntax enable")
  end,
})



