require('telescope').setup{
  defaults = {
    file_ignore_patterns = { 'node_modules' },
    mappings = {
      i = { ['<C-h>'] = 'which_key' }
    },
    layout_config = {
      horizontal = {
        prompt_position = 'top'
      }
    },
    sorting_strategy = 'ascending',
  },
  pickers = {},
  extensions = {}
}
