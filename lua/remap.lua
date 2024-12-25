vim.g.mapleader = " "

-- use ; for cmd mode
vim.keymap.set("n", ";", ":", { noremap = true })

-- stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- remap jk to esc
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- remap E to move to the end of the line
vim.api.nvim_set_keymap("n", "E", "$", { noremap = true, silent = true })

-- move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Neotree: remaps
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>ngs", "<Cmd>Neotree git_status<CR>")
vim.keymap.set("n", "<leader>nb", "<Cmd>Neotree buffers<CR>")

-- window switch
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", { silent = true, noremap = true })

-- bind shift+h to :bprev
vim.api.nvim_set_keymap("n", "H", ":bprev<cr>", { noremap = true, silent = true })

-- bind shift+l to :bnext
vim.api.nvim_set_keymap("n", "L", ":bnext<cr>", { noremap = true, silent = true })

-- bind Ctrl+/ to clear search
vim.api.nvim_set_keymap("n", "<leader>cs", ":nohlsearch<CR>", { noremap = true, silent = true })
