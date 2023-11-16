vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '[b', '<cmd>bprev<CR>', opts)
vim.keymap.set('n', ']b', '<cmd>bnext<CR>', opts)
vim.keymap.set('n', '<Leader>bd', '<cmd>bdelete<CR>', opts)

