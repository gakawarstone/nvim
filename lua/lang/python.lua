local lsp = require("lspconfig")

-- Use pyslp cause of cpu 100 bug pyright
-- Setup pyright with capabilities
lsp.pylsp.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

Python_formatter = { require("formatter.filetypes.python").black }
