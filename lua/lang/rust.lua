local fmt = require("conform")

vim.lsp.enable("rust_analyzer")

fmt.formatters_by_ft.rust = { "rustfmt" }
