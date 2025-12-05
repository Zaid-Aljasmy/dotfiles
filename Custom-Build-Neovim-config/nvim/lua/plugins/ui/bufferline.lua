return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local icons = {
        ui = {
          Close = "",
          Left = "",
          Right = "",
          Modified_alt = "●",
        },
      }
      local normal_bg = vim.api.nvim_get_hl(0, { name = "Normal" }).bg
      local opts = {
        options = {
          always_show_bufferline = true,
          close_command = "bdelete! %d",
          right_mouse_command = "bdelete! %d",
          tab_size = 10,
          separator_style = "thin",
          -- indicator = { icon = " ", style = "icon" }, -- "icon" ▎ "underline"
          show_buffer_icons = true,
          show_tab_indicators = true,
          show_buffer_close_icons = true,
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count)
            return "(" .. count .. ")"
          end,
          numbers = nil,
          max_name_length = 20,
          max_prefix_length = 13,
          buffer_close_icon = icons.ui.Close,
          left_trunc_marker = icons.ui.Left,
          right_trunc_marker = icons.ui.Right,
          modified_icon = icons.ui.Modified_alt,
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              highlight = "Directory",
              padding = 0,
            },
            {
              filetype = "trouble",
              text = "LSP Outline",
              text_align = "center",
              padding = 0,
            },
          },
        },
        highlights = {
          fill = { bg = normal_bg },
          background = { bg = normal_bg },
          buffer_visible = { bg = normal_bg },
          buffer_selected = { bg = normal_bg },
          close_button = { bg = normal_bg },
          close_button_visible = { bg = normal_bg },
          close_button_selected = { bg = normal_bg },
          tab = { bg = normal_bg },
          tab_selected = { bg = normal_bg },
          modified = { bg = normal_bg },
          duplicate = { bg = normal_bg},
          duplicate_visible = { bg = normal_bg },
          duplicate_selected = { bg = normal_bg },
          separator = { fg = normal_bg, bg = normal_bg }, 
          separator_selected = { fg = normal_bg, bg = normal_bg }
        },
      }

      require("bufferline").setup(opts)
    end,
  },
}

