return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
      end,
      config = function()
        vim.o.foldmethod = "expr"
        vim.o.foldexpr = "nvim_treesitter#foldexpr()"
        vim.o.foldlevel = 1
      end,
    },
  },
  config = function()
    require("orgmode").setup({
      org_agenda_files = { "~/org/*" },
      org_default_notes_file = "~/org/refile.org",
      org_hide_leading_stars = true,
      org_hide_emphasis_markers = true,
      org_indent_mode = "indent", 
      org_agenda_start_on_weekday = 1,
    })
  end,
}

