local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.ccls.setup{
    capabilities = capabilities,
}

require'lspconfig'.java_language_server.setup{
    cmd = {'java-language-server'},
    capabilities = capabilities,
}

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
}

require'lspconfig'.texlab.setup{}

require'lspconfig'.fortls.setup{
    cmd = {
        'fortls',
        '--lowercase_intrinsics',
        '--hover_signature',
        '--hover_language=fortran90',
        '--use_signature_help'
    }
}

require'lspconfig'.lua_ls.setup {
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            version = 'LuaJIT'
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
            }
          }
        }
      })
      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end
}

require'lspconfig'.gopls.setup{}
