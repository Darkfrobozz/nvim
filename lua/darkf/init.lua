vim.g.mapleader = " "
require('darkf.lazy')
require('darkf.remap')
require('darkf.terminal')
require('darkf.after.colors')
require('darkf.after.harpoon')
require('darkf.after.nvim-lspconfig')
require('darkf.after.telescope')
require('darkf.after.luasnip-config')
require('darkf.after.gomove')

require("luasnip.loaders.from_lua").load( { paths = { "~/.config/nvim/LuaSnip/", } } )

vim.opt_global.tabstop=4
vim.opt_global.relativenumber=true
vim.opt_global.shiftwidth=4

print("hello from darkf")
