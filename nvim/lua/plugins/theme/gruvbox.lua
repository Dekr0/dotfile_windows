return {
    'sainnhe/gruvbox-material',
     lazy = false,
     priority = 1000,
     config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_diagnostic_text_highlight = true
        vim.g.gruvbox_material_diagnostic_line_highlight = true
        vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
        vim.g.gruvbox_material_spell_foreground = "colored"
        vim.cmd.colorscheme('gruvbox-material')
     end
}
