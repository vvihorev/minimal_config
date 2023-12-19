vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"

vim.cmd('source /home/vvihorev/.config/nvim/russian_bindings.vim')

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffers' })
vim.keymap.set('n', '<leader>ec', '<Cmd>e ~/.config/nvim/init.lua<CR>', { desc = '[E]dit [C]onfig' })
vim.keymap.set('n', '<leader>em', '<Cmd>e ~/.config/nvim/after/plugin/defaults.lua<CR>', { desc = '[E]dit [M]appings' })
vim.keymap.set('n', '<leader>Rp', ':w<CR>:!python3 %<CR>', {})
vim.keymap.set('n', '<leader>R+', ':w<CR>:!g++ % -ggdb && ./a.out<CR>', {})
vim.keymap.set('n', '<leader>Rg', ':w<CR>:!go run %<CR>', {})
vim.keymap.set('n', '<leader>Rc', ':w<CR>:!cc % && ./a.out<CR>', {})
vim.keymap.set('n', '<leader>fs', ':w<CR>', {})
vim.keymap.set('n', '<leader>аы', ':w<CR>', {})
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

-- Diagnostic maps
vim.keymap.set('n', '<leader>dd', ':lua vim.diagnostic.disable(0)<CR>', {})
vim.keymap.set('n', '<leader>de', ':lua vim.diagnostic.enable(0)<CR>', {})

vim.keymap.set('n', '<F3>', ':set hls!<CR>', {})

-- run OpenMPI
vim.keymap.set('n', '<leader>Rm1', ':w<CR>:!mpicc % -o %:r && mpirun -np 1 %:r<CR>', {})
vim.keymap.set('n', '<leader>Rm2', ':w<CR>:!mpicc % -o %:r && mpirun -np 2 %:r<CR>', {})
vim.keymap.set('n', '<leader>Rm3', ':w<CR>:!mpicc % -o %:r && mpirun -np 3 %:r<CR>', {})
vim.keymap.set('n', '<leader>Rm4', ':w<CR>:!mpicc % -o %:r && mpirun -np 4 %:r<CR>', {})

-- vimtex mappings
vim.keymap.set('n', '<leader>ll', ':VimtexCompile<CR>', {})
vim.keymap.set('n', '<leader>lc', ':VimtexClean<CR>', {})
vim.keymap.set('n', '<leader>lk', ':VimtexStop<CR>', {})
vim.keymap.set('n', '<leader>le', ':VimtexErrors<CR>', {})
vim.keymap.set('n', '<leader>lt', ':VimtexTocOpen<CR>', {})
vim.keymap.set('n', '<leader>lv', ':VimtexView<CR>', {})

