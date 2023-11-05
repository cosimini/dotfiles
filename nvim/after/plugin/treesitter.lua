-- Setting treesitter is a little more involved using lazy.nvim
config_treesitter = function () 
    local configs = require("nvim-treesitter.configs")
    local treesitter_parsers_path = "~/.config/nvim/treesitter"

    configs.setup({
        parser_install_dir = treesitter_parsers_path, 
        vim.opt.runtimepath:append(treesitter_parsers_path),
        ensure_installed = {"python", "c", "bash", "latex"},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
    })
end

config_treesitter()
