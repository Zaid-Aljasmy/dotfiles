-- Load core config and initialize lazy.nvim plugin manager

require("custom_plugins.latex_pdf_preview") -- My custom plugin for LaTeX preview
require("config.keybinds")
require("config.lazy")
require("config.settings")
require("lazy").setup("plugins")
