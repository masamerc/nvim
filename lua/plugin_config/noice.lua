require("noice").setup({
	messages = {
		enabled = true,
		view = "mini",
	},
	notify = {
		enabled = true,
		view = "mini",
		stages = "fade_in_slide_out",
		render = "minimal",
	},
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		long_message_to_split = true, -- long messages will be sent to a split
		bottom_search = true,
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
	routes = {
		{
			filter = {
				event = "msg_show",
				kind = "",
				find = "written",
			},
			opts = { skip = true },
		},
		{
			view = "mini",
			filter = { event = "msg_showmode" },
		},
		{
			view = "mini",
			filter = { event = "msg_show" },
		},
	},
})

vim.api.nvim_set_keymap("n", "<leader>nn", ":NoiceDismiss<CR>", { noremap = true })
