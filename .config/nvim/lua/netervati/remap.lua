-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-P>', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_status, {})
vim.keymap.set('n', '<c-L>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

