require("plugins.mason").ensure_installed({ "jdtls", "clang-format" })

vim.lsp.enable("jdtls")

require("conform").formatters_by_ft.java = { "clang-format" }

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client and client.name == "jdtls" then
			client.server_capabilities.semanticTokensProvider = nil
		end
	end,
})
