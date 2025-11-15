-- settings.lua
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.cmd("language en_US.UTF-8")
vim.opt.mouse = ""
vim.g.mapleader = ' '
vim.opt.number = true 
vim.opt.relativenumber = true 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
-- vim.cmd([[ hi Normal guibg=NONE ]]) -- Enable the trans
vim.opt.termguicolors = true  
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes:1" -- Enable signcolumn
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmode = false
vim.opt.ruler = false

-- Disable netrw banner
vim.g.netrw_banner = 0

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

-- disable italic font in the code
-- local function remove_italic(group)
--   local ok, syntax = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
--   if ok and syntax then
--     syntax.italic = false
--     vim.api.nvim_set_hl(0, group, syntax)
--   end
-- end
--
-- remove_italic("Keyword")
-- remove_italic("Statement")
-- remove_italic("Type")
-- remove_italic("Namespace")
-- remove_italic("@namespace")
-- remove_italic("@type")
-- remove_italic("@keyword")
-- remove_italic("@keyword.namespace")
-- remove_italic("Comment")
-- remove_italic("@comment")

-- Silence lazy.nvim config reload warning
vim.notify_original = vim.notify
vim.notify = function(msg, ...)
  if msg:match("Re%-sourcing your config is not supported with lazy.nvim") then
    return
  end
  return vim.notify_original(msg, ...)
end
-- Change file explorer name 
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "NvimTree_*",
    callback = function()
        vim.bo[0].buflisted = true
        vim.api.nvim_buf_set_name(0, "File Explorer")
    end,
})

