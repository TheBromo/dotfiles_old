return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Gruvbox Theme
  use 'morhetz/gruvbox'
  -- Zsh like Dash
  use {
      'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Formatting for a lot of files
  use 'sbdchd/neoformat'

end)
