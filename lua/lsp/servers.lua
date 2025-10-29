-- Neovim 0.11+ native LSP configuration
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Set default capabilities for all LSP servers
vim.lsp.config('*', {
    capabilities = capabilities,
})

-- Configure ccls (C/C++)
vim.lsp.config('ccls', {
    cmd = { 'ccls' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_markers = { '.ccls', 'compile_commands.json', '.git' },
    capabilities = capabilities,
    on_new_config = function(config)
        config.capabilities = capabilities
    end,
})

-- Configure Java Language Server
vim.lsp.config('java_language_server', {
    cmd = { 'java-language-server' },
    filetypes = { 'java' },
    root_markers = { 'build.gradle', 'pom.xml', '.git' },
    capabilities = capabilities,
})

-- Configure Pyright (Python)
vim.lsp.config('pyright', {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', '.git' },
    capabilities = capabilities,
})

-- Configure TexLab (LaTeX)
vim.lsp.config('texlab', {
    cmd = { 'texlab' },
    filetypes = { 'tex', 'bib' },
    root_markers = { '.latexmkrc', '.git' },
})

-- Configure fortls (Fortran)
vim.lsp.config('fortls', {
    cmd = {
        'fortls',
        '--lowercase_intrinsics',
        '--hover_signature',
        '--hover_language=fortran90',
        '--use_signature_help'
    },
    filetypes = { 'fortran' },
    root_markers = { '.fortls', '.git' },
})

-- Configure lua_ls (Lua)
vim.lsp.config('lua_ls', {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '.git' },
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
})

-- Configure gopls (Go)
vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_markers = { 'go.work', 'go.mod', '.git' },
})

-- Configure rust_analyzer (Rust)
-- Note: Do not enable if using rustaceanvim plugin
vim.lsp.config('rust_analyzer', {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { '.git'},
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = true,
            procMacro = {
                enable = true,
            },
            cargo = {
                buildScripts = {
                    enable = false,
                },
            },
        },
    },
})

-- Configure gdscript (Godot)
vim.lsp.config('gdscript', {
    cmd = { 'nc', 'localhost', '6005' },
    filetypes = { 'gd', 'gdscript', 'gdscript3' },
    root_markers = { 'project.godot', '.git' },
})

-- Enable all configured LSP servers
vim.lsp.enable({
    'ccls',
    'java_language_server',
    'pyright',
    'texlab',
    'fortls',
    'lua_ls',
    'gopls',
    'rust_analyzer',
    'gdscript',
})
