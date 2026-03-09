local lsp = require("lspconfig")
local fmt = require("conform")

lsp.gopls.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.go = { "gofmt" }
