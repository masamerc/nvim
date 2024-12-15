-- env switch
local work_env = os.getenv("WORK_ENV")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
local plugins = {}

if work_env == "work" then
	plugins = {
		require("plugins.common"),
		require("plugins.copilot"),
	}
else
	plugins = {
		require("plugins.common"),
		require("plugins.codeium"),
	}
end

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
require("plugin_config.rose-pine")
require("plugin_config.diffview")
-- require("plugin_config.toggleterm")

-- load format options
require("format")
