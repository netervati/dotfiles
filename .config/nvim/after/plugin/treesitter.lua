-- Handles configurations for Tree-sitter


require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "javascript",
        "lua",
        "python",
        "ruby",
        "rust",
        "typescript",
        "vim",
        "vue",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}

