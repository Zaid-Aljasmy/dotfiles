return {
  {
    "folke/tokyonight.nvim",  -- original gruvbox 
    lazy = false,
    priority = 1000,
    contrast = "medium",
    config = function()
    vim.cmd[[colorscheme tokyonight ]]
    -- vim.api.nvim_set_hl(0, "Visual", { bg = "#504945", fg = "NONE" }) -- enable this only for gruvbox theme
    local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "" }
    for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

    -- nvim-tree background fix to match tokyonight
    vim.cmd [[
      highlight NvimTreeNormal guibg=NONE
      highlight NvimTreeNormalNC guibg=NONE
      highlight NvimTreeEndOfBuffer guibg=NONE
    ]]

    end,
  },

  -- nvim-autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {
        check_ts = true,
      }
    end
  }
}

