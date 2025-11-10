require('config.lazy')

-- preferences
vim.opt.clipboard:append { "unnamedplus" }
vim.opt.termguicolors = true
vim.opt.number = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.cursorline = true
vim.opt.fixeol = true
vim.opt.ttimeoutlen = 10
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.errorbells = false

-- keymap
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "jj", "<Esc>", opts)
keymap("n", ";", ":", opts)
