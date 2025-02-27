return {
    "nvimdev/oceanic-material",
    lazy = false,
    priority = 1000,
    config = function()
        vim.o.background = "dark"
        
        -- ocean, medium, deep, darker
        vim.g.oceanic_material_background = "darker"

        vim.cmd.colorscheme("oceanic_material")
    end
}
