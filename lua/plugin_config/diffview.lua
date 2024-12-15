vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { silent = true, noremap = true, desc = "DiffViewOpen" })
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { silent = true, noremap = true, desc = "DiffViewClose" })
vim.keymap.set(
	"n",
	"<leader>dh",
	":DiffviewFileHistory<CR>",
	{ silent = true, noremap = true, desc = "DiffViewFileHistory" }
)
