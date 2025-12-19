vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true, silent = true })
vim.keymap.set("v","K",":m'<-2<CR>gv=gv")
vim.keymap.set("v","J",":m'>+1<CR>gv=gv")
vim.keymap.set("n" , "<leader>f", function () vim.lsp.buf.format() end)
