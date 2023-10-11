require('plugins')
require('options')
require('icons-config')
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('nvimtree-config')
require('telescope-config')
require('lsp')


-- Colorscheme
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.cmd('colorscheme tokyonight')
