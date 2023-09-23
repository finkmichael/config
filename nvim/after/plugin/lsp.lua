local lsp = require('lsp-zero')

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

lsp.preset('recommended')
lsp.setup()
