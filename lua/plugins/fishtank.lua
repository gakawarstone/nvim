return {
	{
		"nullromo/fishtank.nvim",
		opts = {}, -- specify options here
		config = function(_, opts)
			local fishtank = require("fishtank")
			fishtank.setup(opts)
		end,
	},
}
