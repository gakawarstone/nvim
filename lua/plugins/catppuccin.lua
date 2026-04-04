local theme = vim.env.GKTHEME
local flavour = theme == "light" and "latte" or "mocha"

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = flavour,
		},
	},
}
