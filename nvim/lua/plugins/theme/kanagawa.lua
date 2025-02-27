return  {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            compile = true,
            undercurl = false,
            commentStyle = {},
            functionStyle = {},
            keywordStyle = {},
            statementStyle = {},
            typeStyle = {},
            transparent = false,
            dimInactive = false,
            terminalColors = true,
            theme = "dragon",
            overrides = function(colors)
                return {}
            end,
        })

        vim.cmd.colorscheme("kanagawa")
    end,
    lazy = false,
    priority = 1000
}
