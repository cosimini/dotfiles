-- My settings
require("settings")
require("keymaps")
-- Setup plugin manager
-- Plugin specific settings are applied by the scripts in after/plugins
vim.opt.rtp:prepend("~/.config/nvim/lazy.nvim/")
require("lazy").setup("plugins")
