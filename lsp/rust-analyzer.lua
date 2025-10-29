return {
	cmd = { 'rust-analyzer' },
	filetypes = { 'rust' },
	root_markers = { '.git', 'Cargo.toml'},
	settings = {
		cargo = { allFeatures = true },
		imports = { group = { enable = false } },
		completion = { postfix = { enable = false } },
		checkOnSave = { command = false },
		diagnostics = { enable = true },
		rustfmt = { enable = true },
	},
}
