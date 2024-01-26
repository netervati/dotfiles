-- Installs the plugins for Neovim


vim.g.mapleader = ' ' -- Make sure to set `mapleader` before lazy so your mappings are correct


return require('lazy').setup({
    -- Theme
    {
        'dracula/vim',
        lazy = false,
        priority = 1000,
    },
    { 'nvim-treesitter/nvim-treesitter' },
    -- GIT
    { 'lewis6991/gitsigns.nvim' },
    { 'rhysd/git-messenger.vim' },
    -- File search
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = 'nvim-lua/plenary.nvim'
    },
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },
})

