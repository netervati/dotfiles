-- Manages all git plugins


require'gitsigns'.setup()


vim.cmd([[
    let g:git_messenger_include_diff = 'current'
]])

