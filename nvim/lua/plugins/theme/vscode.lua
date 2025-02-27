return {
    "rockyzhang24/arctic.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
    branch = "main",
    priority = 1000,
    lazy = false,
    config = function()
        vim.cmd.colorscheme("arctic")
    end
}
