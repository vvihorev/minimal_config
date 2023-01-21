vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>ec', '<Cmd>e ~/.config/nvim/init.lua<CR>', { desc = '[E]dit [C]onfig' })
vim.keymap.set('n', '<leader>em', '<Cmd>e ~/.config/nvim/after/plugin/defaults.lua<CR>', { desc = '[E]dit [M]appings' })
vim.keymap.set('n', '<leader>Rp', ':w<CR>:!python3 %<CR>', {})
vim.keymap.set('n', '<leader>fs', ':w<CR>', {})
