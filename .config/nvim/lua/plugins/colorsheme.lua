return {
  {
    "morhetz/gruvbox",  -- original gruvbox theme
    lazy = false,
    priority = 1000,
    contrast = "medium",
    config = function()
    vim.cmd[[colorscheme gruvbox ]]
    vim.api.nvim_set_hl(0, "Visual", { bg = "#504945", fg = "NONE" }) -- enable this only for gruvbox theme
    local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "" }
    for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end
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
