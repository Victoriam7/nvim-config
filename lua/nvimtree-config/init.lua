vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require"nvim-tree".setup {
  git = {
	enable = true,
	ignore = false,
  },

  view = {
	number = true,
	relativenumber = true,
	width = 35,
  },

  renderer = {
    icons = {
      git_placement = "before",
      modified_placement = "after",
      diagnostics_placement = "signcolumn",
      bookmarks_placement = "signcolumn",
      symlink_arrow = "  ",
      glyphs = {
        bookmark = "",
        modified = "",
		folder = {
		  arrow_closed = "",
		  arrow_open = "",
		  default = "",
		  open = "",
		  empty = "",
		  empty_open = "",
		  symlink = "",
		  symlink_open = "",
		},
		git = {
          unstaged = "",
          staged = "✓",
          unmerged = "",
          renamed = "",
          untracked = "o",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

-- Define map as keymap function for convenience 
local map = vim.api.nvim_set_keymap

-- Keybind code suggestions
map('n', '<leader>n', ':NvimTreeToggle<CR>', {noremap = true})
