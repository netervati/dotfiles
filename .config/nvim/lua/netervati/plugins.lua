-- Installs the plugins for Neovim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'dracula/vim', as = 'dracula' }
  use ('neoclide/coc.nvim', { branch = 'release'})
  use { 'ms-jpq/chadtree', {
      branch = 'chad',
      run = 'python3 -m chadtree deps'
    }
  }
  use {'nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    }
  }
  use 'lewis6991/gitsigns.nvim'
  use 'rhysd/git-messenger.vim'
  use 'w0rp/ale'
end)

--[[ TO REINSTALL NEXT:
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
--]]
