require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "jj", "<Esc>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })

vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })

vim.api.nvim_set_keymap('v', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
