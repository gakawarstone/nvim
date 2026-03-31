return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		config = function()
			require("nvim-treesitter.configs").setup({
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
			})
		end,
	},
}
