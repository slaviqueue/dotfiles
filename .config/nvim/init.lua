vim.o.relativenumber = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.opt.termguicolors = true

vim.cmd([[ colorscheme lunaperche ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set autoindent ]])
vim.cmd([[ set tabstop=2 ]])
vim.cmd([[ set shiftwidth=2 ]])

require("nvim-tree").setup()
require('lualine').setup()
require('mappings')
require('plugins')

