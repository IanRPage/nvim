-- Trying to figure out how to navigate between windows using Ctrl + hjkl
vim.keymap.set({"n", "t"}, "<C-h>", "<cmd>wincmd h<CR>", {silent = true, buffer = true})
vim.keymap.set({"n", "t"}, "<C-j>", "<cmd>wincmd j<CR>", {silent = true, buffer = true})
vim.keymap.set({"n", "t"}, "<C-k>", "<cmd>wincmd k<CR>", {silent = true, buffer = true})
vim.keymap.set({"n", "t"}, "<C-l>", "<cmd>wincmd l<CR>", {silent = true, buffer = true})

