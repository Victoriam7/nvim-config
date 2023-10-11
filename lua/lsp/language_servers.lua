--Setup lspconfig. 
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

require'lspconfig'.texlab.setup{
}

require'lspconfig'.fortls.setup{
    cmd = {
        'fortls',
        '--lowercase_intrinsics',
        '--hover_signature',
        '--hover_language=fortran90',
        '--use_signature_help'
    }
}
