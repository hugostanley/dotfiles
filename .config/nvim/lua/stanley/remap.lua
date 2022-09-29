local nnoremap = require("stanley.keymaps").nnoremap
local inoremap = require("stanley.keymaps").inoremap
local vnoremap = require("stanley.keymaps").vnoremap

-- netrw
nnoremap("<leader>e",":E<CR>")
-- telescope remaps
nnoremap("<leader>fd", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>ff", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fp", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")
nnoremap("<leader>fe", "<cmd>Telescope diagnostics<CR>")
nnoremap("<leader>fj", "<cmd>Telescope buffers<CR>")
vnoremap("<leader>y", '"+y')
-- go to normal mode from insert mde, use ctrl l
inoremap("<C-l>", "<Esc>")

