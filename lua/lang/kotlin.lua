require("plugins.mason").ensure_installed({ "kotlin-language-server", "ktlint" })

vim.lsp.enable("kotlin_language_server")

require("conform").formatters_by_ft.kotlin = { "ktlint" }
