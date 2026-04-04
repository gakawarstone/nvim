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

local theme = vim.env.GKTHEME
if theme == "light" then
	vim.cmd("colorscheme catppuccin-latte")
else
	vim.cmd("colorscheme catppuccin-mocha")
end
