return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"kotlin",
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
		},
	},
}
