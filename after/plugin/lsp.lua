local lsp = require('lsp-zero')
lsp.preset('recommended')
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright' }, -- add more here
    automatic_installation = true,
})

lsp.setup()
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>']      = cmp.mapping.confirm({ select = true }),
        ['<C-p>']     = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>']     = cmp.mapping.select_next_item(cmp_select),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
})
