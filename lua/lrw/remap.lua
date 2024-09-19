-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word" })
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Show diagnostic float" })
-- Format code
-- vim.keymap.set("n", "<leader>f", "<cmd>!biome format --fix %<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>!biome format --fix %<CR>", { desc = "Format code (biome)" })

vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })

vim.keymap.set("n", "<leader><leader>", ":Telescope find_files <CR>", { desc = "Find files" })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without indent" })
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- vim.keymap.set({ "n", "v" }, "Y", "y$")
vim.keymap.set("n", "<C-p>", ":Telescope git_files<CR>", { desc = "Git files" })
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<CR>", { desc = "Search in project" })

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })
