return {
    -- fugitive
    -- {
    --     "tpope/vim-fugitive",
    --     lazy = false
    -- },

    {
        "cohama/lexima.vim",
        lazy = false,
    },

    -- harpoon (detail setup is in which.lua)
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = "nvim-lua/plenary.nvim",
        lazy = true
    },

    -- telescope (detail setup is in which.lua)
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            pickers = {
                find_files = {
                    disable_devicons = true
                }
            }
        },
        lazy = true
    },

    -- undo tree
    {
        "mbbill/undotree",
        url = "https://github.com/mbbill/undotree",
        lazy = true
    },

    -- zen mode
    {
        "folke/zen-mode.nvim",
        lazy = false,
        opts = {
            window = {
                width = 0.5
            }
        }
    },

    -- {
    --    "m4xshen/hardtime.nvim",
    --    lazy = false,
    --    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    --    opts = {}
    -- }
}
