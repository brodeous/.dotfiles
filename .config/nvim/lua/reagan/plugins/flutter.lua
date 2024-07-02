return {
    -- for DAP support
    { 'dart-lang/dart-vim-plugin' },
    { 'akinsho/flutter-tools.nvim',

    lazy = false;
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = function()
        require("flutter-tools").setup{
            flutter_path = "/usr/bin/flutter/bin/flutter",
            ui = {
                border = "rounded",
                notification_style = 'plugin',
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
                settings = {
                    showTodos = true,
                    completeFunctionCalls = true,
                    renameFilesWithClasses = "prompt",
                    enableSnippets = true,
                    updateImportsOnRename = true,
                }
            }
        } -- use defaults

        require("telescope").load_extension("flutter")

        vim.keymap.set("n", "<leader>of", "<cmd>Telescope flutter commands<CR>")
    end
}
}

