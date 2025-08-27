return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufWinEnter",
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup({
        options = {
          numbers = "none",
          close_command = "bdelete! %d",
          right_mouse_command = "bdelete! %d",
          left_mouse_command = "buffer %d",
          middle_mouse_command = nil,
          indicator = {
            icon = " ", -- choose this ▎ if you want no separators between buffers
            style = "icon",
          },
          buffer_close_icon = "",
          modified_icon = "●",
          close_icon = "",
          show_buffer_icons = false,
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
      })
    end,
  },
}
