-- Installs the plugins for Neovim


local Plug = vim.fn['plug#']


vim.call('plug#begin', '~/.vim/plugged')
    Plug 'dracula/vim'
    Plug ('ms-jpq/chadtree', {
        branch = 'chad',
        ['do'] = 'python3 -m chadtree deps'
    })
    Plug ('neoclide/coc.nvim', { branch = 'release'})
    Plug ('nvim-treesitter/nvim-treesitter', {
        ['do'] = ':TSUpdate'
    })
vim.call('plug#end')

