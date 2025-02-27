return {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("kanagawa-paper").setup({
            undercurl = false,
            transparent = false,
            gutter = false,
            dimInactive = false,
            terminalColors = true,
            commentStyle = {},
            functionStyle = {},
            keywordStyle = {},
            statementStyle = {},
            typeStyle = {},
            colors = {},
            overrides = function(colors)
                return {}
            end
        })
        vim.cmd.colorscheme("kanagawa-paper")
    end
}
