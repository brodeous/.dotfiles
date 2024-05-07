return {
	'VonHeikemen/lsp-zero.nvim',

    branch = 'v3.x',
    
    config = function()
        local lsp = require('lsp-zero').preset({recommended})

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
            ['<Enter>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
        })

        lsp.on_attach(function(client, bufnr)
          lsp.default_keymaps({buffer = bufnr})
        end)

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
          lsp.default_keymaps({buffer = bufnr})
        end)

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()
    end
}
