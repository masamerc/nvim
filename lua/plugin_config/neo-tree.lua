-- DO NOT USE
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
})
