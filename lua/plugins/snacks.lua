return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		lazygit = { enabled = true },
		quickfile = {
			-- your quickfile configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		picker = {
			layout = "telescope",
		},
		matcher = {
			frecency = true, -- frecency bonus
		},
	},
}
