local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>pv", vim.cmd.Ex)
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

map({"n", "v"}, "<leader>y", [["+y]])
map({"n", "v"}, "<leader>d", [["_d]])

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
