local set = vim.opt
set.fileencoding = "utf-8"
set.encoding = "utf-8"

set.textwidth = 80
set.colorcolumn = "80"

set.relativenumber = true
set.number = true

set.errorbells = false

set.smarttab = true
set.smartindent = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.cursorline = false
set.cursorcolumn = false
set.list = true
set.listchars:append {
    lead = "·",
}


set.breakindent = true
set.ignorecase = true

set.autoindent = true

set.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
set.syntax = "on"


set.hlsearch = false
set.incsearch = true
set.smartcase = true

set.scrolloff = 8
set.signcolumn = "yes"
set.completeopt = { "menuone", "noinsert", "noselect" }
set.splitbelow = true
set.splitright = true
set.termguicolors = true
vim.g.mapleader = " "
vim.cmd("let g:netrw_bufsettings='noma nomod nu nowrap ro nobl rnu'")
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_liststyle=0")
vim.cmd("let g:netrw_keepdir=1")
vim.cmd("let g:netrw_browse_split=20")
vim.cmd("set mouse=")
