require("plugins.mason").ensure_installed({ "prettier", "tailwindcss-language-server" })

require("conform").formatters_by_ft.css = { "prettier" }
vim.lsp.enable("tailwindcss")
