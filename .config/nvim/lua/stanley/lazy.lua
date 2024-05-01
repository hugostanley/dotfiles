local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    { import = "stanley.plugins" },

    -- Rails
    "weizheheng/ror.nvim",
    "rcarriga/nvim-notify",
    "stevearc/dressing.nvim",

    -- Status Line
    -- Colorschemes
    { "miikanissi/modus-themes.nvim", priority = 1000 },
    "folke/tokyonight.nvim",
    -- "gruvbox-community/gruvbox",
    { "embark-theme/vim", name = "embark" },
    { "catppuccin/nvim",  name = "catppuccin" },
    "EdenEast/nightfox.nvim",
    "B4mbus/oxocarbon-lua.nvim",
    "nyoom-engineering/oxocarbon.nvim",
    "Shatur/neovim-ayu",
    "rose-pine/neovim",
    "tiagovla/tokyodark.nvim",
    "whatyouhide/vim-gotham",
    "rebelot/kanagawa.nvim",
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    -- "luisiacc/gruvbox-baby",
    { "ellisonleao/gruvbox.nvim",  priority = 1000,  config = true },
    "cocopon/iceberg.vim",
    "sjl/badwolf",
    "olimorris/onedarkpro.nvim",
    "tanvirtin/monokai.nvim",
    "navarasu/onedark.nvim",
    "Tsuzat/NeoSolarized.nvim",
    "projekt0n/github-nvim-theme",
    {
        "maxmx03/solarized.nvim",
        config = function()
            vim.o.background = "dark" -- or "light"

            -- vim.cmd.colorscheme "solarized"
        end
    },


    -- tresitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- telescope && suggested dependencies
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-lua/plenary.nvim",

    -- icons
    "kyazdani42/nvim-web-devicons",

    -- auto pairs
    { "windwp/nvim-autopairs",                    event = "InsertEnter", opts = {} },
    "windwp/nvim-ts-autotag",

    "jose-elias-alvarez/null-ls.nvim",
    "mhartington/formatter.nvim",
    "mfussenegger/nvim-dap",
    "mfussenegger/nvim-lint",
    "MunifTanjim/prettier.nvim",
    "ellisonleao/glow.nvim",
    "folke/trouble.nvim",
    "ThePrimeagen/harpoon",
    "akinsho/git-conflict.nvim",
    "ThePrimeagen/vim-be-good",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },
    -- {
    --     "elixir-tools/elixir-tools.nvim",
    --     version = "*",
    --     event = { "BufReadPre", "BufNewFile" },
    --     config = function()
    --         local elixir = require("elixir")
    --         local elixirls = require("elixir.elixirls")

    --         elixir.setup {
    --             nextls = { enable = true, autostart = true },
    --             credo = {},
    --             elixirls = {
    --                 autostart = true,
    --                 enable = true,
    --                 settings = elixirls.settings {
    --                     dialyzerEnabled = false,
    --                     enableTestLenses = false,
    --                 },
    --                 on_attach = function(client, bufnr)
    --                     -- vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
    --                     -- vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
    --                     -- vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
    --                 end,
    --             }
    --         }
    --     end,
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --     },
    -- }
}

local opts = {}

require("lazy").setup(plugins, opts)
