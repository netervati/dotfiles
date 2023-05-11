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
vim.keymap.set('i', '<CR>', 'v:lua.check_confirm()', { noremap = true, expr = true, silent = true })


-- Fuzzy Finder
vim.keymap.set('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set('n', '<c-G>', "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })
vim.keymap.set('n', '<c-L>', "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })

