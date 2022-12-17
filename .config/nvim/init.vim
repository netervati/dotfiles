set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
runtime default_config.vim

call plug#begin('~/.vim/plugged')
 Plug 'dracula/vim'
 Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua require'nvim-treesitter.configs'.setup{ensure_installed={ "lua", "vue", "python", "javascript", "typescript", "ruby", "rust" },sync_install = false,auto_install = true,highlight = {enable = true,additional_vim_regex_highlighting = false}}

let g:coc_global_extensions = [
            \ 'coc-vetur',
            \ 'coc-tsserver',
            \ ]

runtime treesitter.vim
runtime color_scheme.vim
runtime bindings.vim

