local nnoremap = require("stanley.keymaps").nnoremap

-- netrw
nnoremap("<leader>e",":E<CR>")
-- telescope remaps
nnoremap("<leader>fd", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>ff", "<cmd>Telescope live_grep<CR>")
