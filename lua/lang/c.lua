local fmt = require("conform")

vim.lsp.enable("clangd")

fmt.formatters_by_ft.c = { "clang-format" }
