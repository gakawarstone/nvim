vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer сам себя
	use("wbthomason/packer.nvim")

	use("navarasu/onedark.nvim")

	-- Highlight, edit, and navigate code using a fast incremental parsing library
	use("nvim-treesitter/nvim-treesitter")
	-- Collection of configurations for built-in LSP client
	use("neovim/nvim-lspconfig")
	-- use("williamboman/nvim-lsp-installer") FIXME: deprecated
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	-- Автодополнялка
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("saadparwaiz1/cmp_luasnip")
	--- Автодополнлялка к файловой системе
	use("hrsh7th/cmp-path")
	-- Snippets plugin
	use("L3MON4D3/LuaSnip")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	-- Даже если включена русская раскладка vim команды будут работать
	use("powerman/vim-plugin-ruscmd")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("mhartington/formatter.nvim")

	-- Todo highlighter
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- Comments
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Float terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Autopair
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Packer
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	-- Wakatime
	use("wakatime/vim-wakatime")

	-- Vim in browser
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})

	use("cheap-glitch/vim-v")

	-- use({ "neoclide/coc.nvim", branch = "release" })

	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})

	use({
		"IlyasYOY/obs.nvim",
		requires = {
			"IlyasYOY/coredor.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	use({
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})
end)
