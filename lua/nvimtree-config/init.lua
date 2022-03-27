require"nvim-tree".setup {
  view = {
    mappings = {
      list = {
        { key = "d",                            action = "refresh" },
        { key = "D",                            action = "refresh" },
      },
    },
    width = 35,
    auto_resize = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  number = true,
}

-- Define map as keymap function for convenience 
local map = vim.api.nvim_set_keymap

-- Keybind code suggestions
map('n', '<leader>s', ':lua vim.lsp.buf.code_action()<CR>', {noremap = true})
