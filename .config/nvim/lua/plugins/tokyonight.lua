return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night", -- valid options: storm, moon, night, day
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      conditionals = { bold = false },
      loops = { bold = false },
      strings = { bold = false },
      keywords = { bold = false },
      functions = { bold = false },
      variables = { bold = false },
      numbers = { bold = false },
      operators = { bold = false },
      constants = { bold = false },
      types = { bold = false },
      sidebars = "transparent",
      floats = "transparent",
    },
    -- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#a9b1d6" })
  },
}
