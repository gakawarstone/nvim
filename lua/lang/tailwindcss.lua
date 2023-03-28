local lsp = require("lspconfig")

lsp.tailwindcss.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})
