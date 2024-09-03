require('lsp-zero')
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'emmet_language_server', 'tsserver', 'rust_analyzer', 'pylsp', 'jdtls', 'html', 'clangd', 'cssls', 'eslint', 'golangci_lint_ls', 'kotlin_language_server', 'lua_ls', 'markdown_oxide', 'intelephense', 'sqlls', 'taplo', 'vimls', 'lemminx', 'hydra_lsp'},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,

        -- Note: C++23 standard is used for this lsp
        -- Config is available at ~/.config/clangd/config
        clangd = function()
            require('lspconfig').clangd.setup({
                cmd = { "clangd", "--enable-config" },
            })
        end
    }
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-u>'] = cmp.mapping.abort(),
        ['C-CR'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.select_next_item({behavior = 'select'}),
        ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<C-p>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item({behavior = 'insert'})
            else
                cmp.complete()
            end
        end),
        ['<C-n>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item({behavior = 'insert'})
            else
                cmp.complete()
            end
        end),
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
