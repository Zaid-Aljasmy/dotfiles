return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    vim.cmd[[colorscheme tokyonight-night ]]
    -- vim.api.nvim_set_hl(0, "Visual", { bg = "#504945", fg = "NONE" }) -- enable this only for gruvbox theme
    end,
  },
}

