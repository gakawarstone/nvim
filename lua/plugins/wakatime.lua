return {
	"wakatime/vim-wakatime",
	lazy = false,
	config = function()
		vim.cmd("silent! WakaTimeStatusBarDisable")
	end,
}
