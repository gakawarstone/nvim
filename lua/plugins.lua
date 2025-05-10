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
	require("_plugins.markdown_preview"),

	{
		"milanglacier/minuet-ai.nvim",
		config = function()
			require("minuet").setup({
				provider = "openai_fim_compatible",
				-- n_completions = 1, -- recommend for local model for resource saving
				-- -- I recommend beginning with a small context window size and incrementally
				-- -- expanding it, depending on your local computing power. A context window
				-- -- of 512, serves as an good starting point to estimate your computing
				-- -- power. Once you have a reliable estimate of your local computing power,
				-- -- you should adjust the context window to a larger value.
				context_window = 512,
				provider_options = {
					openai_fim_compatible = {
						-- For Windows users, TERM may not be present in environment variables.
						-- Consider using APPDATA instead.
						api_key = "TERM",
						name = "Ollama",
						end_point = "http://localhost:11434/v1/completions",
						model = "qwen2.5-coder:14b",
						optional = {
							max_tokens = 56,
							top_p = 0.9,
						},
					},
				},
				-- Your configuration options here
				-- provider = "openai_compatible",
				-- request_timeout = 2.5,
				-- throttle = 1500, -- Increase to reduce costs and avoid rate limits
				-- debounce = 600, -- Increase to reduce costs and avoid rate limits
				-- provider_options = {
				-- 	openai_compatible = {
				-- 		api_key = "OPENROUTER_API_KEY",
				-- 		end_point = "https://openrouter.ai/api/v1/chat/completions",
				-- 		model = "deepseek/deepseek-chat-v3-0324",
				-- 		name = "Openrouter",
				-- 		optional = {
				-- 			max_tokens = 56,
				-- 			top_p = 0.9,
				-- 			provider = {
				-- 				-- Prioritize throughput for faster completion
				-- 				sort = "throughput",
				-- 			},
				-- 		},
				-- 	},
				-- },
			})
		end,
	},
})
