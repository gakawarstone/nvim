local lsp = require("lspconfig")
local fmt = require("conform")

lsp.clangd.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.c = { "clang-format" }
