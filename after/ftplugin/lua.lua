require("plugins.mason").ensure_installed({ "lua-language-server", "stylua" })

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			telemetry = {
				enable = false,
			},
		},
	},
})
vim.lsp.enable("lua_ls")

require("conform").formatters_by_ft.lua = { "stylua" }
