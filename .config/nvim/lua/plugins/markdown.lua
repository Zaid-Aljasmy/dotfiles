return {
  { "preservim/vim-markdown", ft = "markdown", dependencies = { "godlygeek/tabular" } },
  { "iamcco/markdown-preview.nvim", ft = "markdown", build = "cd app && npm install", init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end
  },
  { "dhruvasagar/vim-table-mode", ft = "markdown" },
  { "SidOfc/mkdx", ft = "markdown" },
}

