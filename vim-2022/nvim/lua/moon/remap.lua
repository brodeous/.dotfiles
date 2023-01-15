local nnoremap = require("moon.keymap").nnoremap

nnoremap("<leader>po", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>") 
nnoremap("<leader>fco", "<cmd>Telescope flutter commands<CR>")
nnoremap("<leader>fre", "<cmd>FlutterReload<CR>")
nnoremap("<leader>fou", "<cmd>FlutterOutlineToggle<CR>")
nnoremap("<leader>hn", function() require("harpoon.ui").nav_next() end, silent)
nnoremap("<leader>hp", function() require("harpoon.ui").nav_prev() end, silent)
nnoremap("<leader>1", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>2", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>3", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>4", function() require("harpoon.ui").nav_file(4) end, silent)
nnoremap("<leader>hm", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<C-n>", vim.lsp.diagnostic.goto_next)
nnoremap("<C-p>", vim.lsp.diagnostic.goto_prev)

require('telescope').setup{

    defaults = {

        mappings = {

            n = {

                ["sv"] = "select_vertical",

            }

        }

    },

}
