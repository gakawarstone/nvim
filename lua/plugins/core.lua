return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
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
		opts = {
			pickers = {
				find_files = {
					hidden = true,
				},
			},
			defaults = {
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
					"--hidden",
					"--glob=!.git/*",
				},
			},
		},
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

	"lhKipp/nvim-nu",

	"sindrets/diffview.nvim",

	{
		"glacambre/firenvim",
		build = ":call firenvim#install(0)",
	},

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

	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false, debounce = 3000 },
			panel = { enabled = false },
			filetypes = {
				python = true,
				cs = true,
				["*"] = false,
			},
		},
	},
	"fang2hou/blink-copilot",
	{
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
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
		"dmtrKovalenko/fff.nvim",
		build = "cargo build --release",
		opts = {
			-- pass here all the options
		},
	},
	{
		"nullromo/fishtank.nvim",
		opts = {}, -- specify options here
		config = function(_, opts)
			local fishtank = require("fishtank")
			fishtank.setup(opts)
		end,
	},
	{
		"cajames/copy-reference.nvim",
		opts = {
			register = "+",
		}, -- optional configuration
		keys = {
			{ "yr", "<cmd>CopyReference file<cr>", mode = { "n", "v" }, desc = "Copy file path" },
			{ "yrr", "<cmd>CopyReference line<cr>", mode = { "n", "v" }, desc = "Copy file:line reference" },
		},
	},

	{
		"yousefhadder/markdown-plus.nvim",
		ft = "markdown",
		config = function()
			require("markdown-plus").setup({
				table = {
					keymaps = { -- Table-specific keymaps (prefix based)
						prefix = "<leader><leader>t", -- default: "<leader>t"  prefix for table ops
					},
				},
			})
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
