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
	local ok, mr = pcall(require, "mason-registry")
	if not ok then
		vim.notify("mason registry not available; skipping ensure_installed", vim.log.levels.WARN)
		return
	end
	for _, name in ipairs(packages) do
		if not mr.has_package(name) then
			vim.notify(string.format("mason: unknown package %q; skipping", name), vim.log.levels.WARN)
		else
			local p = mr.get_package(name)
			if not p:is_installed() then
				p:install()
			end
		end
	end
end

return M
