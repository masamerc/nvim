require("neo-tree").setup({
    window = {
        position = "left",
        width = 40,
        mapping_options = {
            noremap = true,
            nowait = true,
        },
        mappings = {
            ["h"] = "open",
            ["l"] = "open",
        }
    },
    filesystem = {
		commands = {
			-- Override delete to use trash instead of rm
			delete = function(state)
				local path = state.tree:get_node().path
				vim.fn.system({ "trash", vim.fn.fnameescape(path) })
                                require("neo-tree.sources.manager").refresh(state.name)
			end,
		},
	},
})
