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
    -- Rails
    "weizheheng/ror.nvim",
    "rcarriga/nvim-notify",
    "stevearc/dressing.nvim",
    -- Status Line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { { "kyazdani42/nvim-web-devicons", opt = true } }
    },
    -- Colorschemes
    "folke/tokyonight.nvim",
    "gruvbox-community/gruvbox",
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
    "luisiacc/gruvbox-baby",
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

            vim.cmd.colorscheme "solarized"
        end
    },

    -- main lsp plugin
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets"
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()
            cmp.setup({
                completion = {
                    completeopt = "menu,menuone,preview,noselect",
                },
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-h>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" }
                })

            })
        end
    },
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            local mason = require("mason")
            local mason_lspconfig = require("mason-lspconfig")

            mason.setup({})

            mason_lspconfig.setup({
                ensure_installed = {},
                automatic_installation = true
            })
        end

    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            { "antosha417/nvim-lsp-file-operations", config = true }
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local keymap = vim.keymap
            local opts = { noremap = true, silent = true }
            local on_attach = function(client, bufnr)
                opts.buffer = bufnr

                opts.desc = "Go to definition"
                keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", opts)

                opts.desc = "Go to declaration"
                keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)

                opts.desc = "Format buffer"
                keymap.set("n", "<leader>fp", vim.lsp.buf.format, opts)

                opts.desc = "Rename"
                keymap.set("n", "<leader>re", vim.lsp.buf.rename, opts)

                opts.desc = "References"
                keymap.set("n", "<leader>rr", "<cmd>Telescope lsp_references<CR>", opts)
            end

            local capabilities = cmp_nvim_lsp.default_capabilities()
            local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
            end

            lspconfig["tsserver"].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })

            lspconfig["solargraph"].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })

            lspconfig["tailwindcss"].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })

            lspconfig["cssls"].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })

            lspconfig["clangd"].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })

            lspconfig["lua_ls"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            })

            lspconfig["emmet_ls"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                filetypes = {
                    "html", "typescriptreact", "javascriptreact", "css", "sass", "eruby"
                }
            })
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
    {"windwp/nvim-autopairs", event = "InsertEnter", opts = {}},
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
}

local opts = {}

require("lazy").setup(plugins, opts)
