vim.o.relativenumber = true
vim.o.number = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.signcolumn = 'yes'
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.termguicolors = true

vim.cmd([[ colorscheme lunaperche ]])
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])

require('lsp_signature').setup({
  debug = true,
})
require('nvim-tree').setup()
require('lualine').setup()
require('mappings')
require('plugins')
