return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets" },

	-- use a release tag to download pre-built binaries
	version = "*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		--
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = { preset = "super-tab" },
		completion = {
			menu = {
				auto_show = false,
			},
			ghost_text = {
				enabled = true,
			},
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		sources = {
			-- default = { "lsp", "path", "snippets", "buffer" },
			default = { "lsp", "path", "snippets", "buffer", "copilot" },
			-- default = { "lsp", "path", "snippets", "buffer", "minuet" },
			-- default = { "minuet" },
			-- default = { "copilot" },
			providers = {
				minuet = {
					name = "minuet",
					module = "minuet.blink",
					async = true,
					-- Should match minuet.config.request_timeout * 1000,
					-- since minuet.config.request_timeout is in seconds
					timeout_ms = 300,
					score_offset = 50, -- Gives minuet higher priority among suggestions
				},
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					timeout_ms = 300,
					score_offset = 50,
					async = true,
				},
			},
		},

		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
