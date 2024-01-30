require("tokyonight").setup({
    style = "night",
    on_colors = function(colors)
        colors.fg_gutter = "#707cb2"
        colors.comment = "#709db2"
        colors.dark5 = "#709db2"
    end
})

--vim.opt.termguicolors = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

vim.cmd[[
colorscheme tokyonight-night
]]

