-- settings.lua
vim.opt.termguicolors = true
vim.opt.splitright = true
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
vim.opt.cursorcolumn = false
vim.cmd([[ hi Normal guibg=NONE ]]) -- Enable the trans
vim.opt.termguicolors = true  
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.colorcolumn = "80"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmode = false
vim.opt.ruler = false

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
-- vim.api.nvim_set_hl(0, "Comment", { italic = false })
-- vim.api.nvim_set_hl(0, "Keyword", { italic = false })
-- vim.api.nvim_set_hl(0, "Function", { italic = false })
-- vim.api.nvim_set_hl(0, "Type", { italic = false })
-- vim.api.nvim_set_hl(0, "Identifier", { italic = false })
-- vim.api.nvim_set_hl(0, "Statement", { italic = false })
-- vim.api.nvim_set_hl(0, "@keyword.return", { italic = false })
--

