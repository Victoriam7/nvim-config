return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  -- Color scheme
  use {'Victoriam7/lucidus.nvim'}

  -- tree-sitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  -- lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
end)
