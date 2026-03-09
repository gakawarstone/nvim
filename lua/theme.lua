require("onedark").setup({
	highlights = {
		["@variable"] = { fg = "$red" },
		["@lsp.type.variable"] = { fg = "$red" },
		TSImport = { fg = "$yellow" },
	},
})

local status, ts_configs = pcall(require, "nvim-treesitter.configs")
if status then
	ts_configs.setup({
		ensure_installed = {
			"lua",
			"python",
			"v",
			"solidity",
			"markdown",
			"typescript",
			"scss",
			"html",
			"javascript",
			"css",
			"go",
			"rust",
			"angular",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
	})
end

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

-- vim.cmd("colorscheme onedark")
vim.cmd("colorscheme catppuccin")
