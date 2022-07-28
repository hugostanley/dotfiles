local configs = require"nvim-treesitter.configs"
configs.setup{
	ensure_installed = {"c","ruby","lua","javascript","typescript","css","scss","html"},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}
