return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

    use {'nvim-lualine/lualine.nvim'}

    use {'nvim-tree/nvim-web-devicons'}

    use {'lukas-reineke/indent-blankline.nvim'}

    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}

	use { "scottmckendry/cyberdream.nvim" }

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

    -- use 'simrat39/rust-tools.nvim'
    -- use 'mrcjkb/rustaceanvim'

	use 'puremourning/vimspector'

	use 'tpope/vim-fugitive'

	use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'tpope/vim-dadbod'
	use 'kristijanhusak/vim-dadbod-ui'

	use "OXY2DEV/markview.nvim"

	use "chrisgrieser/nvim-lsp-endhints"
end)
