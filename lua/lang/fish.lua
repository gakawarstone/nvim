require("plugins.mason").ensure_installed({ "fish-indent" })

require("conform").formatters_by_ft.fish = { "fish_indent" }
