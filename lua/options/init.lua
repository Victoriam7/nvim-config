-- GENERAL OPTIONS
------------------

-- Convenience function
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ','

vim.opt.path = '.,,**'

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.textwidth = 80

vim.cmd('filetype plugin indent on')

vim.o.fileencoding = 'utf-8'

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.clipboard = "unnamedplus"

vim.o.scrolloff = 3
vim.wo.wrap = false
vim.o.sidescrolloff = 5

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.showmode = false

vim.wo.signcolumn = "auto:2"

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = false
vim.bo.expandtab = false

vim.o.mouse = ""

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99

vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

vim.cmd([[
	set signcolumn=yes
	autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- Mapping
map('n', '<leader>o', ':setlocal spell! spelllang=en_us<CR>', {noremap = true})

map('n', '<leader>q', ':bp | sp | bn | bd<CR>', {noremap = true})

map('n', '<leader>FF', ':FindFiles<CR>', {noremap = true})
map('n', '<leader>ff', ':find ', {noremap = true})
map('t', '<esc>', '<C-\\><C-n>', {noremap = true})

map('n', '<C-h>', '<C-w>h', { noremap = true })
map('n', '<C-j>', '<C-w>j', { noremap = true })
map('n', '<C-k>', '<C-w>k', { noremap = true })
map('n', '<C-l>', '<C-w>l', { noremap = true })

vim.cmd [[
cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'close' : 'q')<CR>
cabbrev wq <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'close' : 'wq')<CR>
]]


-- LANGUAGE SPECIFIC OPTIONS
----------------------------
vim.cmd('au FileType c,h,cpp,hpp setl shiftwidth=8 tabstop=8 shiftwidth=8')
vim.cmd('au FileType rs setl shiftwidth=4 tabstop=4 expandtab')
