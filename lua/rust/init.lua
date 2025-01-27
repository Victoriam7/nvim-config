local rt = require("rust-tools")

local map = vim.api.nvim_set_keymap

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<Leader>h", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

vim.cmd([[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]])

map('n', "<leader>dl", ":call vimspector#Launch()<cr>", {noremap = true})
map('n', "<leader>dr", ":call vimspector#Reset()<cr>", {noremap = true})
map('n', "<leader>dn", ":call vimspector#StepOver()<cr>", {noremap = true})
map('n', "<leader>do", ":call vimspector#StepOut()<cr>", {noremap = true})
map('n', "<leader>di", ":call vimspector#StepInto()<cr>", {noremap = true})
map('n', "<leader>dc", ":call vimspector#Continue()<cr>", {noremap = true})
map('n', "<leader>dbt", ":call vimspector#ToggleBreakpoint()<cr>", {noremap = true})
map('n', "<leader>dbc", ":call vimspector#ClearBreakpoints()<cr>", {noremap = true})
map('n', "<leader>dw", ":call vimspector#AddWatch()<cr>", {noremap = true})
map('n', "<leader>de", ":call vimspector#Evaluate()<cr>", {noremap = true})
