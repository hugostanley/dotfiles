local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

local something = function ()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
	vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
	vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {buffer=0})
end

require"lspconfig".tsserver.setup{
	capabilities = capabilities,
	on_attach = something
}
require"lspconfig".cssls.setup{
	capabilities = capabilities,
	on_attach = something
}

require"lspconfig".solargraph.setup{
  capabilities = capabilities,
  on_attach = something,
}

require"lspconfig".html.setup{
	capabilities = capabilities,
	on_attach = something
}
