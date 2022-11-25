local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк

-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors
cmd'colorscheme onedark'
