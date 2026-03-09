local lsp = require("lspconfig")
local fmt = require("conform")

lsp.rust_analyzer.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.rust = { "rustfmt" }
