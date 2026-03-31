return {
	{
		"zbirenbaum/copilot.lua",
		enabled = false,
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false, debounce = 3000 },
			panel = { enabled = false },
			filetypes = {
				python = true,
				cs = true,
				["*"] = false,
			},
		},
	},
	{
		"fang2hou/blink-copilot",
		enabled = false,
		opts = {
			timeout_ms = 3000,
			score_offset = 50,
		},
	},
}
