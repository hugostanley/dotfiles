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

vim.api.nvim_exec([[
		set foldmethod=expr
		set foldexpr=nvim_treesitter#foldexpr()
]], true)
