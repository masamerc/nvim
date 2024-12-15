-- lazygit: remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" })

-- bdelete: remaps
vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<CR>", { desc = "Close buffer" })

-- rust vim: general
vim.g.rustfmt_autosave = 1

-- neoclip: remaps
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope neoclip<CR>", { desc = "neoclip" })

-- mini: remaps
vim.keymap.set("n", "<leader>e", "<Cmd>lua MiniFiles.open()<CR>")

-- trouble
vim.keymap.set("n", "<leader>xx", "<Cmd>Trouble diagnostics toggle<CR>", { desc = "Toggle trouble" })
vim.keymap.set(
	"n",
	"<leader>xb",
	"<Cmd>Trouble diagnostics toggle filter.buf=0<CR>",
	{ desc = "Toggle trouble (Current Buffer)" }
)

-- kanagawa
require("kanagawa").setup({
	theme = "dragon",
})

vim.keymap.set("n", "<C-Left>", "<cmd>TmuxNavigateLeft<CR>", { desc = "TmuxNavigateLeft" })
vim.keymap.set("n", "<C-Right>", "<cmd>TmuxNavigateRight<CR>", { desc = "TmuxNavigateRight" })
vim.keymap.set("n", "<C-Up>", "<cmd>TmuxNavigateUp<CR>", { desc = "TmuxNavigateUp" })
vim.keymap.set("n", "<C-Down>", "<cmd>TmuxNavigateDown<CR>", { desc = "TmuxNavigateDown" })

-- copilot & codeium enable / disable
vim.keymap.set("n", "<leader>gce", "<cmd>Copilot enable<CR>", { desc = "Enable copilot" })
vim.keymap.set("n", "<leader>gcd", "<cmd>Copilot disable<CR>", { desc = "Disable copilot" })
vim.keymap.set("n", "<leader>coe", "<cmd>Codeium Enable<CR>", { desc = "Enable codeium" })
vim.keymap.set("n", "<leader>cod", "<cmd>Codeium Disable<CR>", { desc = "Disable codeium" })

-- procrastinate.nvim
vim.keymap.set("n", "<leader>t", "<cmd>InsertTodo<CR>", { desc = "Insert todo" })
