local lsp = require("lspconfig")

lsp.tsserver.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

Typescript_formatter = { require("formatter.defaults.prettier") }