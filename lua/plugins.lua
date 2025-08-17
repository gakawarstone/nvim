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
			-- require("minuet").setup({
			-- 	-- provider = "openai_fim_compatible",
			-- 	provider = "openai_fim_compatible",
			-- 	-- provider = "gemini",
			-- 	-- n_completions = 1, -- recommend for local model for resource saving
			-- 	-- -- I recommend beginning with a small context window size and incrementally
			-- 	-- -- expanding it, depending on your local computing power. A context window
			-- 	-- -- of 512, serves as an good starting point to estimate your computing
			-- 	-- -- power. Once you have a reliable estimate of your local computing power,
			-- 	-- -- you should adjust the context window to a larger value.
			-- 	context_window = 512,
			-- 	provider_options = {
			-- 		gemini = {
			-- 			model = "gemini-2.0-flash",
			-- 			-- system = "see [Prompt] section for the default value",
			-- 			-- few_shots = "see [Prompt] section for the default value",
			-- 			-- chat_input = "See [Prompt Section for default value]",
			-- 			-- stream = true,
			-- 			api_key = "GEMINI_API_KEY",
			-- 			-- optional = {
			-- 			-- 	generationConfig = {
			-- 			-- 		maxOutputTokens = 256,
			-- 			-- 		-- When using `gemini-2.5-flash`, it is recommended to entirely
			-- 			-- 		-- disable thinking for faster completion retrieval.
			-- 			-- 		thinkingConfig = {
			-- 			-- 			thinkingBudget = 0,
			-- 			-- 		},
			-- 			-- 	},
			-- 			-- 	safetySettings = {
			-- 			-- 		{
			-- 			-- 			-- HARM_CATEGORY_HATE_SPEECH,
			-- 			-- 			-- HARM_CATEGORY_HARASSMENT
			-- 			-- 			-- HARM_CATEGORY_SEXUALLY_EXPLICIT
			-- 			-- 			category = "HARM_CATEGORY_DANGEROUS_CONTENT",
			-- 			-- 			-- BLOCK_NONE
			-- 			-- 			threshold = "BLOCK_ONLY_HIGH",
			-- 			-- 		},
			-- 			-- 	},
			-- 			-- },
			-- 		},
			-- 		-- openai_fim_compatible = {
			-- 		-- openai_compatible = {
			-- 		-- 	-- For Windows users, TERM may not be present in environment variables.
			-- 		-- 	-- Consider using APPDATA instead.
			-- 		-- 	api_key = "TERM",
			-- 		-- 	name = "Ollama",
			-- 		-- 	-- end_point = "http://localhost:11434/v1/completions",
			-- 		-- 	end_point = "http://localhost:11434/v1/generate",
			-- 		-- 	model = "deepseek-r1:8b",
			-- 		-- 	-- model = "JetBrains/Mellum-4b-base",
			-- 		-- 	-- model = "deepcoder",
			-- 		-- 	-- optional = {
			-- 		-- 	-- 	max_tokens = 300,
			-- 		-- 	-- 	top_p = 0.9,
			-- 		-- 	-- },
			-- 		-- },
			-- 		openai_fim_compatible = {
			-- 			api_key = "OPENROUTER_API_KEY",
			-- 			end_point = "https://openrouter.ai/api/v1/chat/completions",
			-- 			model = "deepseek/deepseek-r1-0528:free",
			-- 			-- model = "deepseek/deepseek-r1-0528-qwen3-8b",
			-- 			name = "Openrouter",
			-- 			optional = {
			-- 				-- max_tokens =200,
			-- 				top_p = 0.9,
			-- 				provider = {
			-- 					-- Prioritize throughput for faster completion
			-- 					sort = "throughput",
			-- 				},
			-- 			},
			-- 		},
			-- 	},
			-- 	-- Your configuration options here
			-- 	-- provider = "openai_compatible",
			-- 	-- request_timeout = 2.5,
			-- 	-- throttle = 1500, -- Increase to reduce costs and avoid rate limits
			-- 	-- debounce = 600, -- Increase to reduce costs and avoid rate limits
			-- 	-- provider_options = {
			-- 	-- },
			-- })
		end,
	},

	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},

	-- "github/copilot.vim",
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},
	"fang2hou/blink-copilot",
	{
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
		--   -- refer to `:h file-pattern` for more examples
		--   "BufReadPre path/to/my-vault/*.md",
		--   "BufNewFile path/to/my-vault/*.md",
		-- },
		---@module 'obsidian'
		---@type obsidian.config
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/Notes",
				},
			},
		},
	},
	{
})
