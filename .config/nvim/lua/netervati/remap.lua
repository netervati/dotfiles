-- Defines the custom keybindings


vim.keymap.set("n", "<leader>v", "<cmd>CHADopen<cr>")
vim.cmd([[
   inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                           \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

vim.keymap.set("n", "<c-P>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
