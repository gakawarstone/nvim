local lsp = require("lspconfig")
local fmt = require("conform")

-- dotnet tool install --global csharp-ls
lsp.csharp_ls.setup({
	capabilities = require("utils.lsp").capabilities,
	on_attach = require("utils.lsp").on_attach,
})

fmt.formatters_by_ft.cs = { "csharpier" }
