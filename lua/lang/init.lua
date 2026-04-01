local group = vim.api.nvim_create_augroup("LazyLoadLang", { clear = true })

local function lang(ft, mod)
	vim.api.nvim_create_autocmd("FileType", {
		group = group,
		pattern = ft,
		callback = function()
			pcall(require, "lang." .. mod)
		end,
	})
end

-- Map filetypes to your modules in lua/lang/
lang("fish", "fish")
lang("lua", "lua")
lang("markdown", "md")
lang("python", "python")
lang("kotlin", "kotlin")
lang("solidity", "solidity")
lang({ "v", "vlang" }, "vlang")
lang({ "typescript", "typescriptreact" }, "typescript")
lang({ "angular", "html" }, "angular")
lang({ "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" }, "tailwindcss")
lang("html", "html")
lang({ "yaml", "yml" }, "yaml")
lang("java", "java")
lang("cs", "csharp")
lang("rust", "rust")
lang("go", "go")
lang("json", "json")
lang({ "javascript", "javascriptreact" }, "js")
lang({ "c", "cpp" }, "c")
lang("css", "css")
