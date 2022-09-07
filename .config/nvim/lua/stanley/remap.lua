local nnoremap = require("stanley.keymaps").nnoremap
local inoremap = require("stanley.keymaps").inoremap
local vnoremap = require("stanley.keymaps").inoremap

-- netrw
nnoremap("<leader>e",":E<CR>")
-- telescope remaps
nnoremap("<leader>fd", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>ff", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fp", "<cmd>lua vim.lsp.buf.format()<CR>")
nnoremap("<leader>fe", "<cmd>Telescope diagnostics<CR>")
vnoremap("<C-S-a>", "\"+y")
-- go to normal mode from insert mde, use ctrl l
inoremap("<C-l>", "<Esc>")

