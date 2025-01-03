require("obsidian").setup({
	workspaces = {
		{
			name = "personal",
			path = "~/Documents/obsidian-vault",
		},
	},

	open_app_foreground = true,
	ui = {
		enable = false,
	},
})

-- remaps
vim.keymap.set("n", "<leader>obo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>obb", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>obl", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>obn", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>obs", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>obq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })
