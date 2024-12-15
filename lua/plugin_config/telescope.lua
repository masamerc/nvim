require("telescope").setup({
	defaults = {
		file_ignore_patterns = { ".git/", "node_modules/", "vendor/", ".cache/" },
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		grep_string = {
			additional_args = { "--hidden" },
		},
		live_grep = {
			additional_args = { "--hidden" },
		},
	},
})

require("telescope").load_extension("git_worktree")
require("telescope").load_extension("lazygit")

-- enable telescope fzf native
require("telescope").load_extension("neoclip")

require("telescope").load_extension("fzf")
require("telescope").load_extension("notify")

vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[F]ile by [G]rep" })
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "[F]ind existing [B]uffers" })
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").resume, { desc = "[F]ind [R]usume" })
vim.keymap.set("n", "<leader>fq", require("telescope.builtin").quickfix, { desc = "[F]ind [Q]uickfix" })
vim.keymap.set("n", "<leader>fm", require("telescope.builtin").marks, { desc = "[F]ind [M]arks" })
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "[Git] [F]iles" })
vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "[G]it [S]tatus" })
vim.keymap.set(
	"n",
	"<Leader>gw",
	"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
	{ desc = "[G]it [W]orktree" }
)

vim.keymap.set("n", "<leader>fj", require("telescope.builtin").jumplist, { desc = "[F]ind [J]umplist" })

vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)
