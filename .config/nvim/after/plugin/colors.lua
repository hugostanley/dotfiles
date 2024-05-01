local M = {}
-- Available colorschemes
-- 1. Tokyonight (light, storm, night)
-- 2. Gruvbox
-- 3. Nightfox (Terafox, duskfox, etc)
-- 4. Embark
-- 5. Catpuccin
-- 6. oxocarbon-lua
-- 7. ayu-dark
-- 8. gotham
-- 0. iceberg
-- 10.kanagawa
-- 11. badwolf
-- 12. github_dark
-- 13. modus
-- vim.opt.termguicolors = false
vim.opt.background = "dark"
vim.g["gruvbox_contrast_dark"] = 'hard'
vim.g.oxocarbon_lua_transparent = true

require("rose-pine").setup({
    disable_background = false,
    disable_float_background = true
})

require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent"
    }
})

require('onedark').setup {
    style = 'darker',
}
require('onedark').load()

require('github-theme').setup({
    options = {
        terminal_colors = false
    }
})

require('solarized').setup({
    theme = 'neo' -- or comment to use solarized default theme.
})

require('tokyodark').setup({
    transparent_background = false
})

require("gruvbox").setup({
    transparent_background = true,
    transparent_mode = true
})

require("catppuccin").setup({
    transparent_background = false,
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    }
})

-- Default options
require("modus-themes").setup({
    -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
    -- `auto` will automatically set style based on background set with vim.o.background
    style = "auto",
    variant = "default",  -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
    transparent = false,  -- Transparent background (as supported by the terminal)
    dim_inactive = false, -- "non-current" windows are dimmed
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    },

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,
})

function ColorMe(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe("tokyonight-moon")
