local lsp = require("lspconfig")

-- :MasonInstall vls
lsp.vls.setup({
	capabilities = require("utils.lsp").capabilities,
})
