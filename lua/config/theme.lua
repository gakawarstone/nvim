require("nvim-web-devicons").setup({
	override_by_extension = {
		["csproj"] = {
			icon = "",
			color = "#854CC7",
			cterm_color = "58",
			name = "Dotnet",
		},
	},
})

vim.cmd("colorscheme catppuccin")
