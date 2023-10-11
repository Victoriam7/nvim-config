require"nvim-tree".setup { 
    view = {
        width = 35,
        mappings = {
            list = {
                { key = "d", action = "refresh" },
                { key = "D", action = "refresh" },
            },
        },
    },
    renderer = {
        icons = {
            webdev_colors = true,
            symlink_arrow = "",
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
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
                    unstaged = "χ",
                    staged = "✓",
                    unmerged = "",
                    renamed = "󰑕",
                    untracked = "󰓎",
                    deleted = "",
                    ignored = "",
                },
            },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
    },
}

-- Define map as keymap function for convenience 
local map = vim.api.nvim_set_keymap

-- Keybind code suggestions
map('n', '<leader>s', ':lua vim.lsp.buf.code_action()<CR>', {noremap = true})

