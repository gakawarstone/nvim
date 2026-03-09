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
map("n", "<leader>tt", ":NvimTreeToggle<CR>", default_opts)
map("n", "<leader>tf", ":NvimTreeFocus<CR>", default_opts)

-- Jump list gt
map("n", "gt", "<C-o>", default_opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", default_opts)
map("n", "<leader>gc", ":Telescope git_commits<CR>", default_opts)
map("n", "<leader>gb", ":Telescope git_branches<CR>", default_opts)

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
