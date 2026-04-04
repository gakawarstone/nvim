require("plugins.mason").ensure_installed({ "solc", "prettier" })

vim.lsp.config("solidity", {
	settings = {
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
require("conform").formatters_by_ft.solidity = { "prettier" }
