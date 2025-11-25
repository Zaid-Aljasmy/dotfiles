return {
  "NvChad/nvim-colorizer.lua",
  lazy = false,
  config = function()
    require("colorizer").setup({
      filetypes = {
        "*",
        -- "css",
        -- "html",
        -- "lua",
      },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = false,
      },
    })
  end,
}
