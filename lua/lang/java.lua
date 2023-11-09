local lsp = require("lspconfig")
local fmt = require("conform")

lsp.jdtls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.java = { "google-java-format" }
