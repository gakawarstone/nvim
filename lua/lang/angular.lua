local lsp = require("lspconfig")

lsp.angularls.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})
