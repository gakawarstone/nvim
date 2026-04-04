return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		statuscolumn = {
			enabled = true,
			left = { "mark", "sign", "git" },
			right = { "fold" },
		},
		lazygit = { enabled = true },
		quickfile = { enabled = true },
		select = { enabled = true },
		explorer = {
			enabled = true,
		},
		picker = {
			enabled = true,
			layout = "telescope",
			sources = {
				explorer = {
					layout = {
						preset = "sidebar",
						auto_hide = { "input" },
					},
					focus = "list",
				},
			},
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
