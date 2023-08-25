-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

  -- Rails
  use("weizheheng/ror.nvim")
  use 'rcarriga/nvim-notify'
  use 'stevearc/dressing.nvim'
	-- Status Line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- Colorschemes
	use("folke/tokyonight.nvim")
	use("gruvbox-community/gruvbox")
	use({ "embark-theme/vim", as = "embark" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("EdenEast/nightfox.nvim")
	use("B4mbus/oxocarbon-lua.nvim")
	use("Shatur/neovim-ayu")
	use("rose-pine/neovim")
	use("whatyouhide/vim-gotham")
	use("rebelot/kanagawa.nvim")
	use("luisiacc/gruvbox-baby")
  use("cocopon/iceberg.vim")
  use("sjl/badwolf")
  use("olimorris/onedarkpro.nvim")
  use("tanvirtin/monokai.nvim")
  use("navarasu/onedark.nvim")
  use ({ 'projekt0n/github-nvim-theme' })

	-- main lsp plugin
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	-- tresitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- telescope && suggested dependencies
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-lua/plenary.nvim")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- auto pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("windwp/nvim-ts-autotag")

	use("jose-elias-alvarez/null-ls.nvim")

	use("mhartington/formatter.nvim")
	use("mfussenegger/nvim-dap")
	use("mfussenegger/nvim-lint")
	use("MunifTanjim/prettier.nvim")

	use({ "ellisonleao/glow.nvim" })

  use("folke/trouble.nvim")

	-- buffer markers
	use("ThePrimeagen/harpoon")

	use("akinsho/git-conflict.nvim")
	-- Vim game
	use("ThePrimeagen/vim-be-good")
	-- git
	use("tpope/vim-fugitive")

	-- markdown
	-- Packer
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			{"MunifTanjim/nui.nvim"},
			{"nvim-lua/plenary.nvim"},
			{"nvim-telescope/telescope.nvim"},
		},
	})
end)
