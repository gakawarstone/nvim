local fmt = require("conform")

vim.lsp.enable("ts_ls")

fmt.formatters_by_ft.typescript = { "prettier" }
