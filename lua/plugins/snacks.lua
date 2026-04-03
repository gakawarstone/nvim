return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
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
		input = {
			enabled = true,
			win = {
				relative = "cursor",
				width = function(win)
					return math.max(40, #(win.opts.prompt or "") + 20)
				end,
				row = 1,
				col = 0,
			},
		},
		matcher = {
			frecency = true, -- frecency bonus
		},
		notifier = {
			enabled = true,
			timeout = 3000,
		},
	},
	config = function(_, opts)
		require("snacks").setup(opts)
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				if vim.fn.argv(0) == "" then
					Snacks.picker.smart({ hidden = true })
				end
			end,
		})
	end,
}
