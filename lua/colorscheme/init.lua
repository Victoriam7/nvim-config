vim.opt.termguicolors = true
require'nvim-web-devicons'.setup{}

require("cyberdream").setup({
    transparent = true,
    italic_comments = true,
    hide_fillchars = false,
    boarderless_pickers = true,
    terminal_colors = true,
    cache = false,
	highlights = {
		Comment = { fg = "#c2d3d7", bg = "NONE", italic = true },
		LineNr = { fg = "#ffffff", bg = "NONE", italic = false },
		CursorLineNr = { fg = "#ffffff", bg = "NONE", italic = true },
	},

    extensions = {
        telescope = true,
        treesitter = true,
        cmp = true,
    },
})

vim.cmd("colorscheme cyberdream")
