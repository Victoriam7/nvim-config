require("tokyonight").setup({
    style = "night",
    on_colors = function(colors)
        colors.fg_gutter = "#c2d3d7"
        colors.comment = "#c2d3d7"
        colors.dark5 = "#c2d3d7"
    end,
	transparent = true,
	styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
})

require'nvim-web-devicons'.setup{}

vim.opt.termguicolors = true
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

vim.cmd[[
colorscheme tokyonight-night
]]

