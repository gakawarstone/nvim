return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		opts = {
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			-- defaults = {
			-- 	vimgrep_arguments = {
			-- 		"rg",
			-- 		"--color=never",
			-- 		"--no-heading",
			-- 		"--with-filename",
			-- 		"--line-number",
			-- 		"--column",
			-- 		"--smart-case",
			-- 		"--hidden",
			-- 		"--glob=!.git/*",
			-- 	},
			-- },
		},
	},
}
