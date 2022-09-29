-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use { 'embark-theme/vim', as = 'embark' }
  use { "catppuccin/nvim", as = "catppuccin" }
  use "EdenEast/nightfox.nvim"
  use 'B4mbus/oxocarbon-lua.nvim'

  --cmp
  use 'hrsh7th/nvim-cmp' --cmp plugin
  use 'hrsh7th/cmp-nvim-lsp' --cmp plugin
  use 'hrsh7th/cmp-nvim-lua' --cmp plugin
  use 'hrsh7th/cmp-buffer' --cmp plugin
  use 'hrsh7th/cmp-path' --cmp plugin
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'

  --snippets
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

  -- main lsp plugin
  use 'neovim/nvim-lspconfig'

  -- tresitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- telescope && suggested dependencies
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- auto pairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'windwp/nvim-ts-autotag'

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

end)
