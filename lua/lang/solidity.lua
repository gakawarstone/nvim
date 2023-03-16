local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp = require("lspconfig")

-- :LspInstall solc
lsp.solidity.setup({
	capabilities = capabilities,
	settings = {
		-- example of global remapping
		solidity = {
			includePath = "",
			remapping = {
				["@OpenZeppelin/"] = "OpenZeppelin/openzeppelin-contracts@4.6.0/",
				["@chainlink/"] = "smartcontractkit/chainlink-brownie-contracts@0.6.1",
			},
		},
	},
})

-- npm install -g prettier prettier-plugin-solidity
Solidity_formatter = { require("formatter.defaults.prettier") }
