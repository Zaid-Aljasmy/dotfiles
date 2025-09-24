return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",          -- valid options: storm, moon, night, day
      transparent = true,       -- transparent background
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
  end,
}

