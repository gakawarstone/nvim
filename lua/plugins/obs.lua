return {
	{
		"IlyasYOY/obs.nvim",
		enabled = false,
		opts = {
			vault_home = "~/Notes",
		},
		dependencies = {
			"IlyasYOY/coredor.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		lazy = true,
		ft = "md",
	},
}
