return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufWinEnter",
    config = function()
      vim.opt.termguicolors = true
      local bufferline = require("bufferline")
      bufferline.setup {
        options = {
          numbers = "none",
          close_command = function(idx) vim.api.nvim_buf_delete(idx, {force = true}) end,
          right_mouse_command = function(idx) vim.api.nvim_buf_delete(idx, {force = true}) end,
          left_mouse_command = function(idx) vim.api.nvim_set_current_buf(idx) end,
          middle_mouse_command = nil,
          indicator = { icon = " ", style = "icon" },  -- use this ▎ if you want
          buffer_close_icon = "",
          modified_icon = "●",
          close_icon = "",
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_tab_indicators = true,
          persist_buffer_sort = true,
          diagnostics = false,
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },
        },
      }
    end,
  },
}

