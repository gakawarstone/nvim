require("plugins.mason").ensure_installed({ "typescript-language-server", "prettier" })

vim.lsp.enable("ts_ls")

require("plugins.mason").ensure_installed({ "tailwindcss" })
vim.lsp.enable("tailwindcss")

require("conform").formatters_by_ft.typescript = { "prettier" }
