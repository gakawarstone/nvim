require("plugins.mason").ensure_installed({ "typescript-language-server", "prettier" })

vim.lsp.enable("ts_ls")

require("conform").formatters_by_ft.javascript = { "prettier" }
