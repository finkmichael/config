local lsp = require('lsp-zero')

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

lsp.preset('recommended')

lsp.ensure_installed({
    'clangd',
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = true}),
    }
})

lsp.setup()
