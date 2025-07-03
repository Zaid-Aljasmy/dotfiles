return {
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup({
        window = {
          width = function()
            return vim.api.nvim_win_get_width(0)
          end,
        },
      })
    end
  }
}

