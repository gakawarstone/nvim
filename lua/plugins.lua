local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("_plugins.snacks"),
	"navarasu/onedark.nvim",
	"nvim-treesitter/nvim-treesitter",
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	},

	"neovim/nvim-lspconfig",

	"williamboman/mason.nvim",

	"powerman/vim-plugin-ruscmd",

	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},

	"stevearc/conform.nvim",

	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	"wakatime/vim-wakatime",

	"cheap-glitch/vim-v",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"IlyasYOY/obs.nvim",
		dependencies = {
			"IlyasYOY/coredor.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		lazy = true,
		ft = "md",
	},

	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},

	"ggandor/leap.nvim",

	"lhKipp/nvim-nu",

	"sindrets/diffview.nvim",

	require("_plugins.leap"),
	require("_plugins.blink"),
	-- require("_plugins.fastspell"),
	{
		"glacambre/firenvim",
		build = ":call firenvim#install(0)",
	},

	-- |:ColorizerAttachToBuffer|
	-- NOTE: error detected if opens file
	-- {
	-- 	"norcalli/nvim-colorizer.lua",
	-- 	-- lazy = true,
	-- 	config = function()
	-- 		require("colorizer").setup()
	-- 	end,
	-- },
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup({
				highlighter = {
					auto_enable = true,
				},
			})
		end,
	},
})
