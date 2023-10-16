local status, gruvbox = pcall(require, 'gruvbox')
if (not status) then return end

gruvbox.setup({
  transparent_mode= true,
  italic= false,
})

vim.g.catppuccin_flavour = 'mocha'

