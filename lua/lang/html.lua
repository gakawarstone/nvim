local lsp = require("lspconfig")
local fmt = require("conform")

lsp.html.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

lsp.emmet_language_server.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.html = { "prettier" }
