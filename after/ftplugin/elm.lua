require("plugins.mason").ensure_installed({ "elm-language-server" })

vim.lsp.enable("elmls")

require("conform").formatters_by_ft.elm = { "elm_format" }
