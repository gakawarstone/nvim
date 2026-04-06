require("plugins.mason").ensure_installed({ "yamlfmt" })

require("conform").formatters_by_ft.yaml = { "yamlfmt" }
require("conform").formatters_by_ft.yml = { "yamlfmt" }
