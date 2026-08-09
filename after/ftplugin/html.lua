require("plugins.mason").ensure_installed({
	"html-lsp",
	"emmet-language-server",
	"prettier",
	"angular-language-server",
	"tailwindcss-language-server",
})

vim.lsp.enable("html")
vim.lsp.enable("emmet_language_server")
vim.lsp.enable("angularls")
vim.lsp.enable("tailwindcss")

require("conform").formatters_by_ft.html = { "prettier" }
