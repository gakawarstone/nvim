local lsp = require("lspconfig")
local fmt = require("conform")

lsp.tsserver.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.typescript = { "prettier" }
