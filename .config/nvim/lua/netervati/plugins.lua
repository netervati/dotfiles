-- Installs the plugins for Neovim


vim.g.mapleader = ' ' -- Make sure to set `mapleader` before lazy so your mappings are correct


return require('lazy').setup({
    {
        'dracula/vim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'lewis6991/gitsigns.nvim' },
    { 'rhysd/git-messenger.vim' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = 'nvim-lua/plenary.nvim'
    }
})

