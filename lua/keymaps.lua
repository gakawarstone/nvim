local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>", { noremap = true })
map("t", "jj", "<C-\\><C-n>", { noremap = true })

-- Стрелочки откл. Использовать hjkl
map("", "<up>", ':echoe "Use k"<CR>', default_opts)
map("", "<down>", ':echoe "Use j"<CR>', default_opts)
map("", "<left>", ':echoe "Use h"<CR>', default_opts)
map("", "<right>", ':echoe "Use l"<CR>', default_opts)

-- map the leader key
map("n", "<Space>", "", {})
vim.g.mapleader = " " -- 'vim.g' sets global variables

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

vim.keymap.set("n", "<leader>nn", "<cmd>ObsNvimFollowLink<cr>")
vim.keymap.set("n", "<leader>nr", "<cmd>ObsNvimRandomNote<cr>")
vim.keymap.set("n", "<leader>nN", "<cmd>ObsNvimNewNote<cr>")
vim.keymap.set("n", "<leader>nd", "<cmd>ObsNvimDailyNote<cr>")
vim.keymap.set("n", "<leader>nrn", "<cmd>ObsNvimRename<cr>")
vim.keymap.set("n", "<leader>nT", "<cmd>ObsNvimTemplate<cr>")
vim.keymap.set("n", "<leader>nM", "<cmd>ObsNvimMove<cr>")
vim.keymap.set("n", "<leader>nb", "<cmd>ObsNvimBacklinks<cr>")
vim.keymap.set("n", "<leader>nfj", "<cmd>ObsNvimFindInJournal<cr>")
vim.keymap.set("n", "<leader>nff", "<cmd>ObsNvimFindNote<cr>")
vim.keymap.set("n", "<leader>nfg", "<cmd>ObsNvimFindInNotes<cr>")
vim.keymap.set("n", "<leader>jj", "<cmd>CodeCompanionChat<cr>")
