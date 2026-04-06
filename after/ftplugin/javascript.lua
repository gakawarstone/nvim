require("plugins.mason").ensure_installed({
	"typescript-language-server",
	"prettier",
	"tailwindcss",
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("tailwindcss")

require("conform").formatters_by_ft.javascript = { "prettier" }
