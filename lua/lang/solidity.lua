local fmt = require("conform")

-- :LspInstall solc
vim.lsp.config("solidity", {
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
vim.lsp.enable("solidity")

-- npm install -g prettier prettier-plugin-solidity
fmt.formatters_by_ft.solidity = { "prettier" }
