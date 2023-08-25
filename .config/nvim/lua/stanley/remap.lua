vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- netrw
-- netrw


--local name = vim.fn.expand("%")
--- vim.keymap.set("n", "<leader>e",":E<CR>")
--if name == "NetrwTreeListing" then
--  vim.keymap.set("n", "<leader>e", ":30Lexplore <CR>")
--else
--  vim.keymap.set("n", "<leader>e", ":30Lexplore `dirname %`<CR>")
--end
--vim.keymap.set("n", "<leader>e", ":silent 30Lexplore `dirname %`<CR>")
vim.keymap.set("n", "<leader>we", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set("n", "<leader>2", ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set("n", "<leader>9", ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set("n", "<leader>1", ":lua require('harpoon.ui').nav_file(4)<CR>")
vim.keymap.set("n", "<leader>0", ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set("n", "<leader>v", ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n", "<leader>e", ":E<CR>")
vim.keymap.set("n", "<leader>a", ":ChatGPT<CR>")

-- telescope remaps
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>fj", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope git_stash<CR>")
vim.keymap.set("n", "<leader>fa", "<cmd>Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>Telescope colorscheme<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<CR>")

vim.keymap.set("n", "<leader>fp", "<cmd>LspZeroFormat<CR>")
-- git fugitive
vim.keymap.set("n", "<leader>gs", "<cmd>0G<CR>")

-- drag a selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("v", "<leader>y", '"+y')
-- go to normal mode from insert mde, use ctrl l
