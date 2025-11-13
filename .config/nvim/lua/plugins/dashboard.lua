return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
      " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
      " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
      " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "  Find file", "<cmd>lua require('telescope').extensions.file_browser.file_browser({ prompt_title = 'File Browser', hidden = true , grouped = true })<CR>"),
      -- dashboard.button("t", "  Find text", ":Telescope live_grep<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("l", "  Lazy settings", ":Lazy<CR>"),
      dashboard.button("c", "  Config", "<cmd>lua require('telescope').extensions.file_browser.file_browser({ prompt_title = 'Neovim Config', cwd = '~/.config/nvim', grouped = true, hidden = true })<CR>"),
      dashboard.button("q", "  Exit", ":qa<CR>"),
    }
      -- dashboard.section.footer.val = "I Use Neovim BTW!"
    -- local alpha = require("alpha")
    -- local dashboard = require("alpha.themes.dashboard")
    -- local stats = require("lazy").stats()
    -- local user = vim.loop.os_getenv("USER") or "Unknown"
    -- local date = os.date(" Date: %A, %d %B %Y")
    --   dashboard.section.footer.val = {
    --   " User: " .. user,
    --   date,
    -- }


      alpha.setup(dashboard.config)
  end,
}




