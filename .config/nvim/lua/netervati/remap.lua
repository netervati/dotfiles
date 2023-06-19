-- Defines the custom keybindings


-- CHADTree
function check_confirm()
  if vim.fn['coc#pum#visible']() ~= 0 then
    return vim.fn['coc#_select_confirm']()
  else
    return vim.api.nvim_replace_termcodes('<CR><C-g>u', true, true, true)
      .. vim.fn['coc#on_enter']()
  end
end

vim.keymap.set('n', '<leader>v','<cmd>CHADopen<cr>')

-- COC
vim.keymap.set('i', '<CR>', 'v:lua.check_confirm()', { noremap = true, expr = true, silent = true })


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-P>', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_status, {})
vim.keymap.set('n', '<c-L>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
