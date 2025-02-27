return {
    "eddyekofo94/gruvbox-flat.nvim",
    lazy = false,
    priority = 1000,
    enabled = true,
    config = function()
        vim.g.gruvbox_flat_style = "dark" -- or hard
        vim.cmd.colorscheme("gruvbox-flat")
    end
}
