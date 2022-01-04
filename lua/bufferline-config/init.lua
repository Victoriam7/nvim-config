require("bufferline").setup{
 options = {
    left_trunc_marker = '',
    right_trunc_marker = '',
    show_buffer_icons = true, -- file type icons
    show_buffer_close_icons = false,
    show_close_icon = false,
  }
}

-- Keymapping for switching tabs and closing current buffer
vim.cmd [[
    nnoremap <silent><TAB> :BufferLineCycleNext<CR>
    nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
    nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
]]
