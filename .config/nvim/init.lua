-- Load core config and initialize lazy.nvim plugin manager

require("custom_plugins.latex_pdf_preview") -- My custom plugin for LaTeX preview
require("config.keybinds")
require("config.lazy")
require("config.settings")
-- require("lazy").setup("plugins")
-- require("lazy").setup("plugins.ui")
-- require("lazy").setup("plugins.completion")
-- require("lazy").setup("plugins.themes")
-- require("lazy").setup("plugins.editor")
-- require("lazy").setup("plugins.tools")

