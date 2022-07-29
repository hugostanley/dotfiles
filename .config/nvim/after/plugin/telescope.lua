require('telescope').setup{
	defaults={
		prompt_prefix="$ "
	},
	mappings = {
		i = {
			["<c-a>"] = function() print('hello world') end -- woahh this is a lua function anonym func and it ends with th 'end'
		}
	}
}
require('telescope').load_extension('fzf')
