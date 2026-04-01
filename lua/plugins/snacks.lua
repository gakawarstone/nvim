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
			enabled = true,
			layout = "telescope",
		},
		matcher = {
			frecency = true, -- frecency bonus
		},
	},
	config = function(_, opts)
		require("snacks").setup(opts)
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				if vim.fn.argv(0) == "" then
					Snacks.picker.files({ hidden = true })
				end
			end,
		})
	end,
}
