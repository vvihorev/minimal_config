return {
  'vimwiki/vimwiki',
  config = function()
    vim.g.vimwiki_list = {
      {
        path = '/home/vvihorev/Sync/vvihorev-vault',
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
