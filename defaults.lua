vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"

vim.cmd('source /home/vvihorev/.config/nvim/russian_bindings.vim')

vim.keymap.set('n', '<leader>ss', require('telescope.builtin').treesitter, { desc = '[S]earch [S]ymbols' })
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

-- Harpoon maps
local harpoon = require("harpoon")
harpoon:setup()

-- vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "[A]ppend to harpoon list" })
vim.keymap.set("n", "<M-a>", function() harpoon:list():append() end, { desc = "[A]ppend to harpoon list" })
vim.keymap.set("n", "<M-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "[E]xamine harpoon list" })

vim.keymap.set("n", "<M-j>", function() harpoon:list():select(1) end, { desc = "first harpoon item" })
vim.keymap.set("n", "<M-k>", function() harpoon:list():select(2) end, { desc = "second harpoon item" })
vim.keymap.set("n", "<M-l>", function() harpoon:list():select(3) end, { desc = "third harpoon item" })
vim.keymap.set("n", "<M-;>", function() harpoon:list():select(4) end, { desc = "fourth harpoon item" })
vim.keymap.set("n", "<M-h>", function() harpoon:list():select(5) end, { desc = "first harpoon item" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<M-p>", function() harpoon:list():prev() end, { desc = "[P]rev harpoon item" })
vim.keymap.set("n", "<M-n>", function() harpoon:list():next() end, { desc = "[N]ext harpoon item" })

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
-- vim.keymap.set('n', '<leader>ll', ':VimtexCompile<CR>', {})
-- vim.keymap.set('n', '<leader>lc', ':VimtexClean<CR>', {})
-- vim.keymap.set('n', '<leader>lk', ':VimtexStop<CR>', {})
-- vim.keymap.set('n', '<leader>le', ':VimtexErrors<CR>', {})
-- vim.keymap.set('n', '<leader>lt', ':VimtexTocOpen<CR>', {})
-- vim.keymap.set('n', '<leader>lv', ':VimtexView<CR>', {})

-- wincmd mappings
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', {})
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', {})
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', {})
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', {})
vim.keymap.set('n', '<leader>v', ':wincmd v<CR>', {})

-- Export markdown to PDF
vim.keymap.set('n', '<leader>xm',
    ':!pandoc --pdf-engine=xelatex -V mainfont="Libertinus Serif" % -o ~/Desktop/%:t:r.pdf<CR>', {})

-- Set filetypes on the go
vim.keymap.set('n', '<leader>fm', ':set ft=vimwiki<CR>', { desc = "set [F]iletype to [M]arkdown" })
vim.keymap.set('n', '<leader>fl', ':set ft=tex<CR>', { desc = "set [F]iletype to [L]atex" })

-- Paste screenshots in vimwiki
-- vim.keymap.set('n', '<leader>p', ':r!scrshooter<CR>Yi![<ESC>A](./img/<ESC>pA)<ESC>kJx', {})
vim.keymap.set('n', '<leader>p', 'i![](./img/<ESC>:r!scrshooter<CR>A)<ESC>kJx0f[a', {})

-- Remote sync functionality
vim.keymap.set('n', '<leader>rs', ':w<CR>:!./sync.sh<CR>', { desc = '[R]emote [S]ync' })
vim.keymap.set('n', '<leader>rf', ':w<CR>:!./sync.sh<CR>', { desc = '[R]emote sync [F]rom remote' })
