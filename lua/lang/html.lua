local fmt = require("conform")

vim.lsp.enable("html")

vim.lsp.enable("emmet_language_server")

fmt.formatters_by_ft.html = { "prettier" }
