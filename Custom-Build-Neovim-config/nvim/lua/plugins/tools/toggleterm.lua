return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        open_mapping = [[<c-\>]],
        direction = "float",
        size = 100,
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "FloatBorder",
            background = "Normal",
          },
        },
      }
    end
  }
}

