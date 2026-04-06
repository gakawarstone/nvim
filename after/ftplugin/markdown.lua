require("plugins.mason").ensure_installed({ "marksman", "prettier" })

vim.lsp.enable("marksman")

require("conform").formatters_by_ft.markdown = { "prettier" }
