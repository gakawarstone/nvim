local lsp = require("lspconfig")
local fmt = require("conform")

lsp.clangd.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.c = { "clang-format" }
