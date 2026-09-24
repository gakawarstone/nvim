-- Keep `nvim -u /path/to/init.lua` self-contained. Neovim otherwise leaves the
-- user's normal config directory ahead of this repository on runtimepath.
local init_path = debug.getinfo(1, "S").source:sub(2)
local config_root = vim.fs.dirname(init_path)
vim.opt.runtimepath:prepend(config_root)
package.path = table.concat({
	config_root .. "/lua/?.lua",
	config_root .. "/lua/?/init.lua",
	package.path,
}, ";")

require("config.options")
require("config.lazy")
-- lazy.nvim rebuilds runtimepath during setup, so restore this repository for
-- its after/ftplugin and query directories when using an explicit -u path.
vim.opt.runtimepath:prepend(config_root)
vim.opt.runtimepath:append(config_root .. "/after")
require("config.theme")
require("config.keymaps")
