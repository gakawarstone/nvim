local lsp = require("lspconfig")
local fmt = require("conform")

-- Use pyslp cause of cpu 100 bug pyright
-- Setup pyright with capabilities
lsp.pyright.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.python = { "ruff_format" }
