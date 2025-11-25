return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.moonflyTransparent = false      
    vim.g.moonflyTerminalColors = true   
    vim.g.moonflyItalics = true          
    vim.g.moonflyUnderlineMatchParen = true

    vim.cmd("colorscheme moonfly")
  end,
}



