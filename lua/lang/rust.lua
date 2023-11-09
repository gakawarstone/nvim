local lsp = require("lspconfig")
local fmt = require("conform")

lsp.rust_analyzer.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.rust = { "rustfmt" }
