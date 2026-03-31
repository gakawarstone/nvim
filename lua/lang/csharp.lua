local fmt = require("conform")

-- dotnet tool install --global csharp-ls
vim.lsp.enable("csharp_ls")

fmt.formatters_by_ft.cs = { "csharpier" }
