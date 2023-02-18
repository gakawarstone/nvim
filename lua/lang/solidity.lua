local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp = require("lspconfig")

-- :LspInstall solc
lsp.solc.setup({
	capabilities = capabilities,
})

-- npm install -g prettier prettier-plugin-solidity
Solidity_formatter = require("formatter.defaults.prettier")
