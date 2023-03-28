local lsp = require("lspconfig")

lsp.angularls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})
