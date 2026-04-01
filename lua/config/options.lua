vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true -- Включаем нумерацию строк
vim.opt.relativenumber = true -- Вкл. относительную нумерацию строк

vim.opt.termguicolors = true --  24-bit RGB colors

-- Tabs
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = 4 -- shift 4 spaces when tab
vim.opt.tabstop = 4 -- 1 tab == 4 spaces
vim.opt.smartindent = true -- autoindent new lines

vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.opt_local.wrap = true
	end,
})
