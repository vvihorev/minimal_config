# nvim_config
Minimal nvim configuration

Install VimPlug:

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    
Install Node for Coc.nvim:

    curl -sL install-node.vercel.app/lts | bash
    
Install lsp for python:

    :CocInstall coc-pyright
