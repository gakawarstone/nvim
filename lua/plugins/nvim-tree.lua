return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			view = {
				adaptive_size = true,
			},
			actions = {
				open_file = {
					-- quit_on_open = true,
				},
			},
		},
	},
}
