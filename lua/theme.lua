require("onedark").setup({
	highlights = {
		["@variable"] = { fg = "$red" },
		TSImport = { fg = "$yellow" },
	},
})

require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "v", "solidity", "markdown" },
	highlight = {
		enable = true,
	},
})
