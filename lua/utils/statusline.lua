require("lualine").setup({
	options = {
		theme = "onedark",
		globalstatus = true,
	},
	sections = {
		lualine_b = { "branch" },
		lualine_x = { "filetype" },
		lualine_y = {},
	},
})
