-- Defines the colors of Neovim


-- Sets the background to transparent
-- Requires declaration before the colorscheme
vim.cmd[[
    augroup user_colors
        autocmd!
        autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
        autocmd ColorScheme * highlight CursorLine ctermbg=0
    augroup END
]]

vim.cmd 'colorscheme dracula'

