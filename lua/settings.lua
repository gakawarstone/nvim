local cmd = vim.cmd -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local g = vim.g -- global variables
local opt = vim.opt -- global/buffer/windows-scoped options

opt.number = true -- Включаем нумерацию строк
opt.relativenumber = true -- Вкл. относительную нумерацию строк

-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true --  24-bit RGB colors
cmd("colorscheme onedark")

-- Tabs
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- autoindent new lines

require("cmp").setup({
	sources = { { name = "nvim_lsp" } },
})

require("nvim-tree").setup({
	view = {
		adaptive_size = true,
		mappings = {
			list = { { key = "u", action = "dir_up" }, { key = "l", action = "cd" } },
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})

require("formatter").setup({
	filetype = {
		markdown = Markdown_formatter,
		lua = Lua_formatter,
		python = Python_formatter,
	},
})

-- Autoformat on save
cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
