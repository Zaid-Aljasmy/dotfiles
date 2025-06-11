return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        open_mapping = [[<c-\>]],  
        direction = "horizontal",  
        size = 60,  
      }
    end
  }
}

