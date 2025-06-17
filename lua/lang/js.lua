local lsp = require("lspconfig")
local fmt = require("conform")

lsp.ts_ls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.javascript = { "prettier" }
