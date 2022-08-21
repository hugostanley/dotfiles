local set = vim.opt

set.number = true
set.relativenumber= true

set.errorbells=false

set.smarttab=true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

set.breakindent=true

set.autoindent=true

set.guicursor = ""
set.syntax="on"


set.hlsearch=false
set.incsearch=true
set.smartcase=true

set.scrolloff=8
set.signcolumn="yes"
set.completeopt={"menuone","noinsert","noselect"}
set.fileencoding="utf-8"
set.splitbelow=true
set.splitright=true
set.termguicolors=true
vim.g.mapleader=" "
vim.cmd("let g:netrw_bufsettings='noma nomod nu nowrap ro nobl rnu'")
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_browse_split=20")
vim.cmd("let g:airline_powerline_fonts=1")
vim.cmd("set mouse=")
vim.g.airline_theme="minimalist"
