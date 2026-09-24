require("plugins.mason").ensure_installed({
	"angularls",
	"tailwindcss",
	"html-lsp",
	"emmet-language-server",
	"prettier",
})

vim.lsp.enable("angularls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("html")
vim.lsp.enable("emmet_language_server")

require("conform").formatters_by_ft.html = { "prettier" }
