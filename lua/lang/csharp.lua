local lsp = require("lspconfig")
local fmt = require("conform")

-- dotnet tool install --global csharp-ls
lsp.csharp_ls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

fmt.formatters_by_ft.cs = { "csharpier" }
