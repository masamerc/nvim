-- disable netrw at the very start of init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable diagnostics
vim.diagnostic.config({ virtual_text = true })

-- general
require("remap")
require("options")

-- plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local opts = {}

local plugins = {
	require("plugins.common"),
}

require("lazy").setup(plugins, opts)

-- plugin configurations
require("plugin_config.telescope")
require("plugin_config.bufferline")
require("plugin_config.noice")
require("plugin_config.null-ls")
require("plugin_config.obsidian")
require("plugin_config.treesitter")
require("plugin_config.lsp")
require("plugin_config.harpoon")
require("plugin_config.misc")
require("plugin_config.lualine")
require("plugin_config.diffview")
require("plugin_config.neo-tree")
require("plugin_config.oil")

-- load format options
require("format")
