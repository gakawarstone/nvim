local lsp = require("lspconfig")

lsp.html.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

Html_formatter = { require("formatter.defaults.prettier") }
