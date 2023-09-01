local lsp = require("lspconfig")

lsp.rust_analyzer.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

Rust_formatter = { require("formatter.filetypes.rust").rustfmt }
