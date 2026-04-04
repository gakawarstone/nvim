require("plugins.mason").ensure_installed({ "html-lsp", "emmet-language-server", "prettier" })

vim.lsp.enable("html")

vim.lsp.enable("emmet_language_server")

require("conform").formatters_by_ft.html = { "prettier" }
