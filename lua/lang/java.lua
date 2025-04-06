local lsp = require("lspconfig")
local fmt = require("conform")

lsp.jdtls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

-- fmt.formatters_by_ft.java = { "google-java-format" }
fmt.formatters_by_ft.java = { "clang-format" }

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		-- Example: Disable for TypeScript/JavaScript (tsserver)
		if client.name == "jdtls" then
			client.server_capabilities.semanticTokensProvider = nil
		end
	end,
})
