vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true, silent = true })
vim.keymap.set("v","K",":m'<-2<CR>gv=gv")
vim.keymap.set("v","J",":m'>+1<CR>gv=gv")
vim.keymap.set("n" , "<leader>f", function () vim.lsp.buf.format() end)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = "Exit terminal mode" })

-- harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n','<leader>a',mark.add_file)
vim.keymap.set('n','<leader>e',ui.toggle_quick_menu)

vim.keymap.set('n','<leader>1',function() ui.nav_file(1) end)
vim.keymap.set('n','<leader>2',function() ui.nav_file(2) end)
vim.keymap.set('n','<leader>3',function() ui.nav_file(3) end)
vim.keymap.set('n','<leader>4',function() ui.nav_file(4) end)
