-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp = require("lspconfig")

-- Setup pyright with capabilities
lsp.pyright.setup({
	capabilities = capabilities,
})

Python_formatter = require("formatter.filetypes.python").autopep8
