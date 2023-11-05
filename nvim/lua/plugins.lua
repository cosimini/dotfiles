-- Plugins list
return{
    {   -- Gruvbox colorscheme (I'm using it everywhere)
        "ellisonleao/gruvbox.nvim"
    },
    {   -- A folder-tree viewer
        "nvim-tree/nvim-tree.lua"
    },
    {   -- Telescope, everybody likes it
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim'}
    },
    {   -- Highlight indentation
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl"
    },
    {   -- Treesitter plugin
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {   -- The best LaTeX plugin so far
        'lervag/vimtex'
    },
}
