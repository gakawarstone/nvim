local M = {
	"williamboman/mason.nvim",
}

M.opts = {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
}

M.ensure_installed = function(packages)
	local mr = require("mason-registry")
	for _, name in ipairs(packages) do
		if mr.has_package(name) then
			local p = mr.get_package(name)
			if not p:is_installed() then
				p:install()
			end
		end
	end
end

return M
