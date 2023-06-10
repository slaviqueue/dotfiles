lvim.leader = "space"

vim.wo.relativenumber = true

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

require 'plugins'
require 'plugins_settings'
