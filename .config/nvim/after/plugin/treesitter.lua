local configs = require"nvim-treesitter.configs"

configs.setup{
	ensure_installed = {"c","ruby","lua","javascript","typescript","css","scss","html","json","json5","markdown","markdown_inline", "jsdoc", "fish"},
	sync_install = false,
	ignore_install = {""},
	highlight = {
		enable = true,
		disable = {""},
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
		disable = {""}
	},
  autotag= {
    enable = true,
  }
}

vim.api.nvim_exec([[
		set foldmethod=expr
		set foldexpr=nvim_treesitter#foldexpr()
]], true)
