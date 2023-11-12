local lsp = require("lspconfig")
local fmt = require("conform")

lsp.gopls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.go = { "gofmt" }
