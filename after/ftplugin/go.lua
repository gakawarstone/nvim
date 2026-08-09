require("plugins.mason").ensure_installed({ "gopls" })

vim.lsp.enable("gopls")

require("conform").formatters_by_ft.go = { "gofmt" }
