return function(use)
    use {
      'vimwiki/vimwiki',
      config = function()
        vim.g.vimwiki_list = {
          {
            path = '/Users/vvihorev/Sync/vvihorev-vault',
            syntax = 'markdown',
            ext = '.md',
          }
        }
        vim.g.vimwiki_ext2syntax = {
          ['.md'] = 'markdown',
          ['.markdown'] = 'markdown',
          ['.mdown'] = 'markdown',
        }
      end
    }
    use "lervag/vimtex"
    use({
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    })
    use {
      "iurimateus/luasnip-latex-snippets.nvim",
      requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
      config = function()
        require'luasnip-latex-snippets'.setup()
      end,
      ft = { "tex", "markdown" },
    }
    use "ThePrimeagen/harpoon"
end

