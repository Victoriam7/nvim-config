require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "javascript", "lua", "c", "cpp", "cmake", "json", "latex", "make", "python", "regex", "css"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
