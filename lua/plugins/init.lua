return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

    use {'nvim-lualine/lualine.nvim'}

    use {'nvim-tree/nvim-web-devicons'}

    use {'lukas-reineke/indent-blankline.nvim'}

    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}

    use {'folke/tokyonight.nvim'}

    use {'numToStr/Comment.nvim'}

    use {'akinsho/bufferline.nvim',
        tag = "*",
    }
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', 
		},
	}
	use {
	   "m4xshen/hardtime.nvim",
	   requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	}

	use 'mfussenegger/nvim-dap'

    use {
		'mrcjkb/rustaceanvim',
		version = '^5', -- Recommended
	    lazy = false, -- This plugin is already lazy
	}

end)
