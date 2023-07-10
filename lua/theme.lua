require("onedark").setup({
	highlights = {
		["@variable"] = { fg = "$red" },
		["@lsp.type.variable"] = { fg = "$red" },
		TSImport = { fg = "$yellow" },
	},
})

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"python",
		"v",
		"solidity",
		"markdown",
		"typescript",
		"scss",
		"html",
		"javascript",
		"css",
		"go",
		"rust",
		"angular",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
})
