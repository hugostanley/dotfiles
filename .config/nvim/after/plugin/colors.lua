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
    transparent_background = true
})

function ColorMe(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMe("tokyonight-night")
