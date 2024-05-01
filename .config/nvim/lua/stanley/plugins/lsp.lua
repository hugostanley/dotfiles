return {
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
            keymap.set("n", "gd", vim.lsp.buf.definition, opts)

            opts.desc = "Go to declaration"
            keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)

            opts.desc = "Go to implementation"
            keymap.set("n", "<leader>gI", vim.lsp.buf.implementation, opts)

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

        lspconfig["elixirls"].setup({
            cmd = { "/home/hugostanley/elixir-ls/language_server.sh" },
            capabilities = capabilities,
            on_attach = on_attach
        })

        -- lspconfig["elixir-ls"].setup({
        --     capabilities = capabilities,
        --     on_attach = on_attach,
        --     autostart = true
        -- })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["volar"].setup({
            filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["solargraph"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["tailwindcss"].setup({
            filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango",
                "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs",
                "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks",
                "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss",
                "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte" },
            capabilities = capabilities,
            init_options = {
                userLanguages = {
                    eruby = "erb"
                }
            },
            root_dir = require("lspconfig.util").root_pattern('tailwind.config.js', 'tailwind.config.cjs',
                'tailwind.config.mjs', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.cjs',
                'postcss.config.mjs', 'postcss.config.ts', 'package.json', 'node_modules', '.git',
                'config/tailwind.config.js'),
            settings = {
                tailwindCSS = {
                    classAttributes = { "class:", "class", "className", "class:list", "classList", "ngClass" },
                    lint = {
                        cssConflict = "warning",
                        invalidApply = "error",
                        invalidConfigPath = "error",
                        invalidScreen = "error",
                        invalidTailwindDirective = "error",
                        invalidVariant = "error",
                        recommendedVariantOrder = "warning"
                    },
                    validate = true
                }
            },
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
                "html", "typescriptreact", "javascriptreact", "css", "sass", "eruby", "heex"
            }
        })
    end
}
