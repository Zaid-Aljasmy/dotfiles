return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add          = { text = "│" },
      change       = { text = "│" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
    },
    current_line_blame = true,
  },
  keys = {
    { "<leader>gb", "<cmd>Gitsigns blame_line<CR>", desc = "Git Blame current line" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview current hunk" },
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset current hunk" },
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage current hunk" },
    { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "Undo stage hunk" },
    { "]g", "<cmd>Gitsigns next_hunk<CR>", desc = "Next git hunk" },
    { "[g", "<cmd>Gitsigns prev_hunk<CR>", desc = "Previous git hunk" },
    { "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle current line blame" },
    { "<leader>gd", "<cmd>Gitsigns diffthis<CR>", desc = "Git diff this" },
  },
}

