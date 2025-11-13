return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    vim.cmd("colorscheme tokyonight")

    -- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#a9b1d6" })
  end,
}
