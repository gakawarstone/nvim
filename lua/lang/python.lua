require("plugins.mason").ensure_installed({ "pyright", "ruff" })

vim.lsp.enable("pyright")

require("conform").formatters_by_ft.python = { "ruff_format" }
