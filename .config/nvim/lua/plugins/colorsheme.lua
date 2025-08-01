return {
  "folke/tokyonight.nvim",
  lazy = false,            -- Load during startup
  priority = 1000,         -- Ensure it loads before other plugins
  config = function()
    require("tokyonight").setup({
      style = "night",      -- Available styles: dark, cool, deep, warm, warmer, light
      transparent = true, -- Set to true if you want a transparent background
      term_colors = true,  -- Enable terminal colors
      code_style = {
             comments = "NONE",
             conditionals = "NONE",
             constants = "NONE",
             functions = "NONE",
             keywords = "NONE",
             numbers = "NONE",
             operators = "NONE",
             strings = "NONE",
             types = "NONE",
             variables = "NONE",
 -- Style for comments
            -- No special style for keywords
            -- No special style for functions
            -- No special style for strings
            -- No special style for variables
      },
      highlights = {
        -- Customize highlight groups (example: Visual mode background)
        -- Visual = { bg = "#374352", fg = "NONE" },
      },
    })
    require("tokyonight").load() -- Apply the configured theme
  end,
}

