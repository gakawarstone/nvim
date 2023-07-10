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

require("nvim-web-devicons").setup({
	-- override_by_filename = {
	-- 	["dockerfile"] = {
	-- 		icon = "",
	-- 		color = "#458ee6",
	-- 		cterm_color = "68",
	-- 		name = "Docker",
	-- 	},
	-- 	[".dockerignore"] = {
	-- 		icon = "",
	-- 		color = "#458ee6",
	-- 		cterm_color = "68",
	-- 		name = "Docker",
	-- 	},
	-- 	["docker-compose.yaml"] = {
	-- 		icon = "",
	-- 		color = "#458ee6",
	-- 		cterm_color = "68",
	-- 		name = "Docker",
	-- 	},
	-- 	["docker-compose.yml"] = {
	-- 		icon = "",
	-- 		color = "#458ee6",
	-- 		cterm_color = "68",
	-- 		name = "Docker",
	-- 	},
	-- },
	override_by_extension = {
		-- ["cs"] = {
		-- 	icon = "",
		-- 	-- color = "#596706",
		-- 	color = "#005ca5",
		-- 	cterm_color = "58",
		-- 	name = "Cs",
		-- },
		["csproj"] = {
			icon = "",
			color = "#854CC7",
			cterm_color = "58",
			name = "Dotnet",
		},
	},
})

require("nvim-tree").setup({
	view = {
		adaptive_size = true,
	},
	mappings = {
		list = { { key = "u", action = "dir_up" }, { key = "l", action = "cd" } },
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})

require("lualine").setup({
	options = {
		theme = "onedark",
		globalstatus = true,
	},
	sections = {
		lualine_b = { "branch" },
		lualine_x = { "filetype" },
		lualine_y = {},
	},
})

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
	},
})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("obs").setup({
	vault_home = "~/Obsidian",
})

local cmp = require("cmp")
local obs = require("obs")
-- config for nvim-cmp
local cmp_source = require("obs.cmp-source")
cmp.register_source("obs", cmp_source.new())

-- config for obs.nvim
local group = vim.api.nvim_create_augroup("ObsNvim", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	group = group,
	pattern = "*.md",
	desc = "Setup notes nvim-cmp source",
	callback = function()
		if obs.vault:is_current_buffer_in_vault() then
			require("cmp").setup.buffer({
				sources = {
					{ name = "obs" },
					{ name = "luasnip" },
				},
			})
		end
	end,
})

require("luasnip.loaders.from_vscode").lazy_load()

local function open_nvim_tree()
	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Autoformat on save
cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])

-- TODO: Move
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _Lazygit_toggle()
	lazygit:toggle()
end
