require("toggleterm").setup({
	size = 120,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = false,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

-- toggleterm
vim.api.nvim_set_keymap(
	"n",
	"<leader>tt",
	"<cmd>lua require('toggleterm').toggle()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"t",
	"<leader>tt",
	"<C-\\><C-n><cmd>lua require('toggleterm').toggle()<CR>",
	{ noremap = true, silent = true }
)
