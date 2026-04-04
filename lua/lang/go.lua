require("plugins.mason").ensure_installed({ "gopls", "gofmt" })

vim.lsp.enable("gopls")

require("conform").formatters_by_ft.go = { "gofmt" }
