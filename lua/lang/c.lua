require("plugins.mason").ensure_installed({ "clangd", "clang-format" })

vim.lsp.enable("clangd")

require("conform").formatters_by_ft.c = { "clang-format" }
