return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", 
      background = {    
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, 
      show_end_of_buffer = false,    
      term_colors = true,           
      styles = {                   
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "italic" },
        functions = {},
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {            
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = true,
        treesitter = true,
        lsp_trouble = true,
        mason = true,
        nvim_cmp = true,
        dashboard = true,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}

