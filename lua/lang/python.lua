local lsp = require("lspconfig")
local fmt = require("conform")

-- Use pyslp cause of cpu 100 bug pyright
-- Setup pyright with capabilities
lsp.pyright.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.python = { "ruff_format" }
