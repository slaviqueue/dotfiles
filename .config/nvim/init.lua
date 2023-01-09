vim.o.relativenumber = true
vim.o.number = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.signcolumn = 'yes'
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.cmd([[ colorscheme lunaperche ]])
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])

require('lsp_signature').setup({
  debug = true,
})
require('nvim-tree').setup()
require('lualine').setup()
require('bufferline').setup({
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = true,
  clickable = true,
  diagnostics = {
    { enabled = true, icon = 'ﬀ' }, -- ERROR
    { enabled = false }, -- WARN
    { enabled = false }, -- INFO
    { enabled = true }, -- HINT
  },
  hide = { extensions = true, inactive = true },
  highlight_alternate = false,
  highlight_visible = true,
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  insert_at_end = false,
  insert_at_start = false,
  maximum_padding = 1,
  minimum_padding = 1,
  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,
})
require('mappings')
require('plugins')
