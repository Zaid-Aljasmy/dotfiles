return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        open_mapping = [[<c-\>]],  
        direction = "float",  
        size = 100,  
      }
    end
  }
}

