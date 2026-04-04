require("plugins.mason").ensure_installed({ "rust_analyzer", "rustfmt" })

vim.lsp.enable("rust_analyzer")

require("conform").formatters_by_ft.rust = { "rustfmt" }
