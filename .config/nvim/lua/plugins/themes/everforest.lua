return {
  "sainnhe/everforest",
  lazy = false,           
  priority = 1000,       
  config = function()

    vim.g.everforest_background = "hard"         
    vim.g.everforest_transparent_background = false 
    vim.opt.termguicolors = true       

    local code_style = {
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
    }

    local highlights = {
       Visual = { bg = "#2E383C", fg = "NONE" },
    }

    vim.cmd("colorscheme everforest")
  end,
}



