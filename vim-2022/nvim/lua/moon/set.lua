vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.hidden = true
vim.opt.wrap = false

vim.g.mapleader = " "

-- Treesitter
require'nvim-treesitter.configs'.setup {

    ensure_installed = {"c", "lua", "cpp", "c_sharp", "java", "python"},

    sync_install = false,

    hightlight = {

        enable = true,

        additional_vim_regex_highlighting = false,
    },
}

local on_attach = function(client, bufnr)

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
end

--Telescope
require("telescope").load_extension("flutter")

-- LSP
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['luau_lsp'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['csharp_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- Flutter
require("flutter-tools").setup{
    ui = {
        border = "rounded",
        notification_style = 'native',
    },

    decorations = {
        statusline = {
            app_version = false,
            device = true,
        }
    },

    debugger = {
        enabled = false,
        run_via_dap = false,
        exception_breakpoints = {}
    },

    widget_guides = {
        enabled = true,
    },

    closing_tags = {
        hightlight = "ErrorMsg",
        prefix = ">",
        enabled = true,
    },

    dev_log = {
        enabled = true,
        open_cmd = "tabedit",
    },

    dev_tools = {
        autostart = false,
        auto_open_browser = false,
    },

    outline = {
        open_cmd = "30vnew",
        auto_open = false, 
    }, 

    lsp = { 
        color = { 
            enabled = false, 
            background = false, 
            foreground = false,
            virtual_text = true,
        },
        on_attach = on_attach,
        settings = {
            showTodos = true,
            completeFunctionCalls = true,
            renameFilesWithClasses = "prompt",
            enableSnippets = true,
        }
    }
}
