-- GENERAL OPTIONS
------------------

-- Define map as keymap function for convenience 
local map = vim.api.nvim_set_keymap

-- Set Leader
vim.g.mapleader = ','

-- Enable filetype plugin
vim.cmd('filetype plugin indent on')

-- File Encoding
vim.o.fileencoding = 'utf-8'

-- Split horizontal split below
vim.o.splitbelow = true

-- Split vertical split right
vim.o.splitright = true

-- Enable 24-bit colors
vim.opt.termguicolors = true

-- Enable system wide clipboard access
vim.o.clipboard = "unnamedplus"

-- Min number of lines above and below the cursor
vim.o.scrolloff = 3

-- Disable wrapping and set min number of columns to edge
vim.wo.wrap = false
vim.o.sidescrolloff = 5

-- Enable line numbering
vim.wo.number = true

-- Disable default mode indicator
vim.o.showmode = false

-- Enable sign column in auto mode with a max of 2
vim.wo.signcolumn = "auto:2"

-- Enable tab like behavior on spaces
vim.o.softtabstop = 4

-- Set tab size
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- Expand tabs into spaces
vim.o.expandtab = true
vim.bo.expandtab = true

-- Enable Spelling
map('n', '<leader>o', ':setlocal spell! spelllang=en_us<CR>', {noremap = true})

-- Keybind for toggleing tree view
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true})

-- Keybinds for moving between panes
vim.cmd [[
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
]]

-- LANGUAGE SPECIFIC OPTIONS
----------------------------

-- c/c++ 
vim.cmd('au FileType c,h,cpp,hpp setl shiftwidth=8 softtabstop=8 shiftwidth=8')
