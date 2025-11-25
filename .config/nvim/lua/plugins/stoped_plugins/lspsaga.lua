return {
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("lspsaga").setup({
        ui = {
          border = "rounded",
          colors = {
            normal_bg = "#1e222a",
          },
        },
        lightbulb = {
          enable = false,
          enable_in_insert = true,
          sign = true,
          virtual_text = true,
        },
        symbol_in_winbar = {
          enable = false,
          separator = "  ",
          show_file = true,
          folder_level = 2,
          respect_root = false,
        },
        code_action = {
          num_shortcut = true,
          show_server_name = true,
          extend_gitsigns = true,
          keys = {
            quit = "q",
            exec = "<CR>",
          },
        },
      })

      local saga = require("lspsaga")

      local opts = { silent = true, noremap = true }

      vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
      vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
      vim.keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<CR>", opts)
      vim.keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts)
      vim.keymap.set("n", "gs", "<cmd>Lspsaga signature_help<CR>", opts)
      vim.keymap.set("n", "ca", "<cmd>Lspsaga code_action<CR>", opts)
      vim.keymap.set("n", "<leader>mn", "<cmd>Lspsaga rename<CR>", opts)
      vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
      vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
      vim.keymap.set("n", "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
      vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
      vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)
      vim.keymap.set("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>", opts)
      vim.keymap.set("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>", opts)
    end,
  },
}

