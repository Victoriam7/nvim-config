vim.cmd[[
set t_8f=[38;2;%lu;%lu;%lum        " set foreground color
set t_8b=[48;2;%lu;%lu;%lum        " set background color
colorscheme tokyonight-night
set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor
]]
require("tokyonight").setup({
    style = "night",
})

--vim.opt.termguicolors = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
