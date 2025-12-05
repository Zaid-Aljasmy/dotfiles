return {
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufReadPre", -- load when buffer is read
    config = function()
      -- ensure termguicolors enabled
      vim.opt.termguicolors = true

      -- setup plugin with official options
      require("nvim-highlight-colors").setup({
        render = "background", -- display mode: background|foreground|virtual
        virtual_symbol = "■", -- symbol for virtual text mode
        virtual_symbol_prefix = "",
        virtual_symbol_suffix = " ",
        virtual_symbol_position = "inline", -- inline | eol | eow
        enable_hex = true, -- highlight hex colors
        enable_short_hex = true, -- highlight short hex
        enable_rgb = true, -- highlight rgb()
        enable_hsl = true, -- highlight hsl()
        enable_ansi = true, -- highlight ansi colors
        enable_hsl_without_function = true, -- highlight hsl without function
        enable_var_usage = true, -- highlight CSS variables
        enable_named_colors = true, -- highlight named colors
        enable_tailwind = false, -- highlight tailwind colors
        custom_colors = { -- custom user-defined colors
          { label = "%-%-theme%-primary%-color", color = "#0f1219" },
          { label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
        },
        exclude_filetypes = {}, -- exclude filetypes
        exclude_buftypes = {}, -- exclude buftypes
        exclude_buffer = function(bufnr) end, -- function to exclude specific buffers
      })
    end,
  },
}
