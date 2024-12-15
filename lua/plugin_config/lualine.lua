local workenv = os.getenv("WORK_ENV")

require("lualine").setup({
	options = {
		theme = "auto",
		icons_enabled = true,
		disabled_filetypes = { "neo-tree" },
	},
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(str)
					-- return ' ' .. str
					return " " .. str
				end,
				color = { gui = "bold" },
			},
		},
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1,
			},
		},
	},
})
