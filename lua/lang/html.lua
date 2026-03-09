local lsp = require("lspconfig")
local fmt = require("conform")

lsp.html.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

lsp.emmet_language_server.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.html = { "prettier" }
