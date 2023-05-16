-- Installs the plugins for Neovim


vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ('dracula/vim', { as = 'dracula' })
  use ('neoclide/coc.nvim', { branch = 'release' })
  use ('ms-jpq/chadtree', {
    branch = 'chad',
    run = 'python3 -m chadtree deps'
  })
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use 'rhysd/git-messenger.vim'
  use 'w0rp/ale'
  use ('iamcco/markdown-preview.nvim', {
    run = function() vim.fn['mkdp#util#install']() end
  })
  use {'junegunn/fzf', { run = './install --bin' }}
  use {'ibhagwan/fzf-lua', requires = { 'nvim-tree/nvim-web-devicons' }}
end)

