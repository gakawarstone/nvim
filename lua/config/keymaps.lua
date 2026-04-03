local map = vim.keymap.set
local default_opts = { silent = true }

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>")
map("t", "jj", "<C-\\><C-n>")

-- Стрелочки откл. Использовать hjkl
map("", "<up>", ':echoe "Use k"<CR>', default_opts)
map("", "<down>", ':echoe "Use j"<CR>', default_opts)
map("", "<left>", ':echoe "Use h"<CR>', default_opts)
map("", "<right>", ':echoe "Use l"<CR>', default_opts)

-- Toggle tree
map("n", "<leader>tt", function()
	Snacks.picker.explorer({ hidden = true })
end, default_opts)
map("n", "<leader>tf", function()
	Snacks.picker.explorer({ hidden = true, reveal = true })
end, default_opts)

-- Jump list gt
map("n", "gt", "<C-o>", default_opts)

-- Snacks
map("n", "<leader>ff", function()
	Snacks.picker.files({ hidden = true })
end, default_opts)
map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, default_opts)
map("n", "<leader>ft", function()
	Snacks.picker.colorschemes()
end, default_opts)
map("n", "<leader>gc", function()
	Snacks.picker.git_log()
end, default_opts)
map("n", "<leader>gb", function()
	Snacks.picker.git_branches()
end, default_opts)

map("n", "<leader>cn", ":cn<CR>", default_opts)
map("n", "<leader>cp", ":cp<CR>", default_opts)

map("n", "<leader>nn", "<cmd>ObsNvimFollowLink<cr>")
map("n", "<leader>nr", "<cmd>ObsNvimRandomNote<cr>")
map("n", "<leader>nN", "<cmd>ObsNvimNewNote<cr>")
map("n", "<leader>nd", "<cmd>ObsNvimDailyNote<cr>")
map("n", "<leader>nrn", "<cmd>ObsNvimRename<cr>")
map("n", "<leader>nT", "<cmd>ObsNvimTemplate<cr>")
map("n", "<leader>nM", "<cmd>ObsNvimMove<cr>")
map("n", "<leader>nb", "<cmd>ObsNvimBacklinks<cr>")
map("n", "<leader>nfj", "<cmd>ObsNvimFindInJournal<cr>")
map("n", "<leader>nff", "<cmd>ObsNvimFindNote<cr>")
map("n", "<leader>nfg", "<cmd>ObsNvimFindInNotes<cr>")
map("n", "<leader>jj", "<cmd>CodeCompanionChat<cr>")
