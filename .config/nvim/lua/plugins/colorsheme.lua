return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    transparent = false,
    terminal_colors = true,
    config = function()
    vim.cmd[[colorscheme carbonfox]]
    -- vim.api.nvim_set_hl(0, "Visual", { bg = "#504945", fg = "NONE" }) -- enable this only for gruvbox theme
    end,
  },
}

