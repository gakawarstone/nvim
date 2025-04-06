-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp = require("lspconfig")

-- :MasonInstall vls
lsp.vls.setup({
	capabilities = Capabilities,
})
