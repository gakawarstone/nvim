require("formatter").setup({
	filetype = {
		markdown = Markdown_formatter,
		lua = Lua_formatter,
		python = Python_formatter,
		solidity = Solidity_formatter,
		typescript = Typescript_formatter,
		html = Html_formatter,
		yaml = Yaml_formatter,
		java = Java_formatter,
		cs = Csharp_formatter,
		rust = Rust_formatter,
	},
})

-- Autoformat on save
vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
