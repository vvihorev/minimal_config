vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"

vim.cmd([[
au FileType c tw=80 ts=8
]])

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>ec', '<Cmd>e ~/.config/nvim/init.lua<CR>', { desc = '[E]dit [C]onfig' })
vim.keymap.set('n', '<leader>em', '<Cmd>e ~/.config/nvim/after/plugin/defaults.lua<CR>', { desc = '[E]dit [M]appings' })
vim.keymap.set('n', '<leader>Rp', ':w<CR>:!python3 %<CR>', {})
vim.keymap.set('n', '<leader>Rg', ':w<CR>:!go run %<CR>', {})
vim.keymap.set('n', '<leader>Rc', ':w<CR>:!cc % && ./a.out<CR>', {})
vim.keymap.set('n', '<leader>fs', ':w<CR>', {})
vim.keymap.set('n', '<leader>t2', ':set ts=2 sw=2 sts=2 et<CR>', {})
vim.keymap.set('n', '<leader>t4', ':set ts=4 sw=4 sts=4 et<CR>', {})
vim.keymap.set('n', '<leader>t8', ':set ts=8 sw=8 sts=8 et<CR>', {})

vim.keymap.set('n', '<leader>sc', ':!grep "^\\#" "%"<CR>', {})
vim.keymap.set('n', '<leader>ss', ':!grep "class\\|def" "%" | less<CR>', {})

-- Harpoon maps
vim.keymap.set('n', '<leader>sj', ':lua require("harpoon.ui").nav_file(1)<CR>', {})
vim.keymap.set('n', '<leader>sk', ':lua require("harpoon.ui").nav_file(2)<CR>', {})
vim.keymap.set('n', '<leader>sl', ':lua require("harpoon.ui").nav_file(3)<CR>', {})
vim.keymap.set('n', '<leader>s;', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
vim.keymap.set('n', '<leader>sm', ':lua require("harpoon.mark").add_file()<CR>', {})
