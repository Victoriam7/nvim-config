--Setup lspconfig. 
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.ccls.setup{
  capabilities = capabilities,
}

require'lspconfig'.java_language_server.setup{
  cmd = {'java-language-server'},
  capabilities = capabilities,
}

require'lspconfig'.pylsp.setup{
  capabilities = capabilities,
}

