require("plugins.mason").ensure_installed({ "prettier" })

require("conform").formatters_by_ft.css = { "prettier" }
