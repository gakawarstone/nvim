local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Системный буфер обмена shift - Y
map("v", "S-Y", '"+y', {})

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>", { noremap = true })

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

-- Go definition using LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", default_opts)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", default_opts)
map("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", default_opts)
map("n", "<leader>e", ":lua vim.diagnosic.open_float<CR>", default_opts)

-- Jump list gt
map("n", "gt", "<C-o>", default_opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", default_opts)

-- ToggleTerm
map("n", "<leader>ot", ":ToggleTerm direction=float<CR>", default_opts)

-- Lazygit
map("n", "<leader><leader>g", "<cmd>lua _Lazygit_toggle()<CR>", default_opts)

-- ChatGPT
map("n", "<leader>gpt", ":ChatGPT<CR>", default_opts)

--- Obsidian
local obs = require("obs")

map("n", "<leader>nn", "<cmd>lua require('obs').vault:follow_link()<CR>", default_opts)

vim.keymap.set("n", "<leader>nT", function()
	obs.vault:run_if_note(function()
		obs.vault:find_and_insert_template()
	end)
end, { desc = "Inserts notes Template" })
