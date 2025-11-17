return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add          = { text = "▎" },
      change       = { text = "▎" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol',
      delay = 500,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',

    preview_config = {
      border = "rounded",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1
    },

    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      map('n', '<leader>gb', gs.blame_line, "Git Blame current line")
      map('n', '<leader>gp', gs.preview_hunk, "Preview current hunk")
      map('n', '<leader>gr', gs.reset_hunk, "Reset current hunk")
      map('n', '<leader>gs', gs.stage_hunk, "Stage current hunk")
      map('n', '<leader>gu', gs.undo_stage_hunk, "Undo stage hunk")
      map('n', ']g', gs.next_hunk, "Next git hunk")
      map('n', '[g', gs.prev_hunk, "Previous git hunk")
      map('n', '<leader>gt', gs.toggle_current_line_blame, "Toggle current line blame")
      map('n', '<leader>gd', gs.diffthis, "Git diff this")
    end
  },
}

