return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		opts = {
			options = {
				-- theme = "onedark",
				globalstatus = true,
			},
			sections = {
				lualine_b = { "branch" },
				lualine_x = { "filetype" },
				lualine_y = {},
			},
		},
	},
}
