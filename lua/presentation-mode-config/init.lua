local map = vim.api.nvim_set_keymap

local function presentation_mode()
	vim.cmd('colorscheme quiet')
	vim.wo.number = false
	vim.o.cmdheight = 0
	vim.wo.relativenumber = false
	vim.o.showtabline = 0
	require('lualine').hide()
	vim.cmd('Hardtime disable')
	map('n', '<left>', ':silent bp<CR>', {noremap = false})
	map('n', '<right>', ':silent bn<CR>', {noremap = false})
	map('n', '<F2>', ':hi ColorColumn ctermbg=darkred guibg=darkred<CR>:set cc=80<CR>', {noremap = false})
end

vim.api.nvim_create_user_command('PresentationMode', presentation_mode, {})
