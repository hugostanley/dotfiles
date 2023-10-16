local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.setup {
    defaults = {
        prompt_prefix = "> ",
        windblend = 50
    },
    pickers = {
        find_files = {
            hidden = false
        }

    },
    extensions = {
        file_browser = {
            -- disables netrw and use telescope-file-browser in its place
            theme = "dropdown",
            hijack_netrw = false,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    },
    mappings = {
        i = {
            ["<C-a>"] = function() print('hello world') end -- woahh this is a lua function anonym func and it ends with th 'end'
        }
    },
    border = false

}
-- require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
