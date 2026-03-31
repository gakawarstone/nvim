local fmt = require("conform")

vim.lsp.enable("gopls")

fmt.formatters_by_ft.go = { "gofmt" }
