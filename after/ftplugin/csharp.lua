require("plugins.mason").ensure_installed({ "csharp-language-server", "csharpier" })

vim.lsp.enable("csharp_ls")

require("conform").formatters_by_ft.cs = { "csharpier" }
