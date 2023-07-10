local lsp = require("lspconfig")
--
-- Java_formatter = { require("formatter.filetypes.java").clangformat }

function Java_formatter()
	return {
		exe = "clang-format",
		args = {
			"--style=Google",
			"--assume-filename=.java",
			"-style='{BasedOnStyle: Google, IndentWidth: 4, UseTab: Never}'",
			-- "-style='{IndentWidth: 4, UseTab: Never}'",
		},
		stdin = true,
	}
end

lsp.jdtls.setup({
	capabilities = Capabilities,
	on_attach = On_attach,
})

-- function Java_formatter()
-- 	return {
-- 		exe = "clang-format",
-- 		args = {
-- 			-- "--style=Google",
-- 			-- "--assume-filename=.java",
-- 			"-style='{BasedOnStyle: Google, IndentWidth: 4, UseTab: Never}'",
-- 			-- "-style='{IndentWidth: 4, UseTab: Never}'",
-- 			-- "-indent-width=4",
-- 		},
-- 		stdin = true,
-- 	}
-- end
