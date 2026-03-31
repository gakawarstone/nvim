local fmt = require("conform")

-- Use pyslp cause of cpu 100 bug pyright
vim.lsp.enable("pyright")

fmt.formatters_by_ft.python = { "ruff_format" }
