-- LSP setup
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')

lspconfig.solargraph.setup({})
lspconfig.pylsp.setup({})
lspconfig.tsserver.setup({})

