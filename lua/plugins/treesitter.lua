return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		main = "nvim-treesitter.configs",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			auto_install = true,
			highlight = {
				enable = true,
			},
		},
	},
}
