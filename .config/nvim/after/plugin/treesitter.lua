local configs = require"nvim-treesitter.configs"
configs.setup{
	ensure_installed = {"c","ruby","lua","javascript","typescript","css","scss","html","json","json5","markdown","markdown_inline", "jsdoc", "fish"},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}
