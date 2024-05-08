-- Vim Options

-- Spaces and Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Leader Definition
vim.g.mapleader = " "

-- Plugin Keymaps (for whatever reason this messes with opts not loading)
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
