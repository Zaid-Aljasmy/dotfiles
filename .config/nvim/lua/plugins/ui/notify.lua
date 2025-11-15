return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",  
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        cmdline = {
          enabled = true,
          view = "cmdline_popup",
          opts = {
            position = {
              row = "50%",
              col = "50%",
            },
            size = {
              width = 60,
              height = "auto",
            },
            border = {
              style = "rounded",
              padding = { 1, 2 },
            },
          },
        },
        popupmenu = {
          enabled = true,
          backend = "nui",
        },
      })

      require("notify").setup({
        -- background_colour = "#000000",
       })

      vim.notify = require("notify")
    end,
  }
}


