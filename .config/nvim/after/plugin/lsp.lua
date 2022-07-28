local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport=true

local something = function ()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
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
	on_attach = something
}
require"lspconfig".html.setup{
	capabilities = capabilities,
	on_attach = something
}
