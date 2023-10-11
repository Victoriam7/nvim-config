return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  -- lucidus
  use {'Victoriam7/lucidus.nvim'}

  -- tree-sitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  -- lualine
  use { 'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- bufferline
  use {'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons'}

  use { 'kyazdani42/nvim-web-devicons' }
  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  -- nvim-cmp
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}

  -- tokyonight
  use {'folke/tokyonight.nvim'}
end)
