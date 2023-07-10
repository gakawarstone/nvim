local lsp = require("lspconfig")

-- dotnet tool install --global csharp-ls
lsp.csharp_ls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

-- Csharp_formatter = { require("formatter.filetypes.cs").dotnetformat }
function Csharp_formatter()
	return {
		exe = "dotnet-csharpier",
		args = {},
		stdin = true,
	}
end
