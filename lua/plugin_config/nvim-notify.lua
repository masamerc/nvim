require("notify").setup({
	render = "minimal",
	stages = "fade_in_slide_out",
})
-- nvim-notify
vim.keymap.set("n", "<leader>sn", function()
	require("notify").history()
end, { desc = "Notify" })
