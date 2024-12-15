-- theme swticher
local workenv = os.getenv("WORK_ENV")

if workenv == "work" then
	vim.cmd("colorscheme catppuccin")
else
	vim.cmd("colorscheme tokyonight-night")
end

-- terraform indent settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "terraform",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})

-- set conceallevel = 0 for json files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "json",
	callback = function()
		vim.opt_local.conceallevel = 0
	end,
})

-- set commentstring for sql
vim.api.nvim_create_autocmd("FileType", {
	pattern = "sql",
	callback = function()
		vim.opt_local.commentstring = "-- %s"
	end,
})

-- line number colors
function LineNumberColors()
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#878787", bold = false })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#bababa", bold = false })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#878787", bold = false })
end

LineNumberColors()
