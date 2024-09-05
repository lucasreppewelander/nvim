require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader><leader>", ":Telescope find_files <CR>")
map("x", "<leader>p", [["_dP]])
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map({ "n", "v" }, "Y", "y$")
map("n", "<C-p>", ":Telescope git_files<CR>")
map("n", "<leader>sg", ":Telescope live_grep<CR>")
