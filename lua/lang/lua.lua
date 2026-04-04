require("plugins.mason").ensure_installed({ "lua-language-server", "stylua" })

local fmt = require("conform")

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})
vim.lsp.enable("lua_ls")

fmt.formatters_by_ft.lua = { "stylua" }
